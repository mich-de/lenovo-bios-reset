// OdissREA v2.0 — InsydeH2O BIOS Password Cracker
// (C) 2026 OdissREA Cracking Service — "We crack what others lock"
// ARM64 SHA-256 hardware + multi-thread
// Compila: clang -O3 -march=native -o odissrea.exe odissrea.c
// Uso: odissrea.exe [-b maxlen] [-t threads] [wordlist.txt]

#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include <windows.h>
#include <arm_neon.h>
#include <arm_acle.h>

// --- ARM SHA-256 hardware implementation ---

static const uint32_t K256[64] = {
    0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
    0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
    0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
    0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
    0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
    0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
    0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
    0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
};

static const uint32_t SHA256_INIT[8] = {
    0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,
    0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19
};

#define LOAD_MSG(p) vreinterpretq_u32_u8(vrev32q_u8(vld1q_u8(p)))

static inline void sha256_block_hw(uint32_t state[8], const uint8_t block[64]) {
    uint32x4_t s0 = vld1q_u32(&state[0]); // ABCD
    uint32x4_t s1 = vld1q_u32(&state[4]); // EFGH
    uint32x4_t s0_save = s0;
    uint32x4_t s1_save = s1;

    uint32x4_t msg0 = LOAD_MSG(block);
    uint32x4_t msg1 = LOAD_MSG(block+16);
    uint32x4_t msg2 = LOAD_MSG(block+32);
    uint32x4_t msg3 = LOAD_MSG(block+48);
    uint32x4_t tmp, ab_old;

    // Pattern per ARM docs: s0=SHA256H(s0,s1,wk), s1=SHA256H2(s1,old_s0,wk)
#define R4(i, m0, m1, m2, m3, do_sched) \
    tmp = vaddq_u32(m0, vld1q_u32(&K256[i])); \
    ab_old = s0; \
    s0 = vsha256hq_u32(s0, s1, tmp); \
    s1 = vsha256h2q_u32(s1, ab_old, tmp); \
    do_sched

#define SCHED(m0,m1,m2,m3) m0 = vsha256su0q_u32(m0, m1); m0 = vsha256su1q_u32(m0, m2, m3);
#define NOSCHED

    R4( 0, msg0, msg1, msg2, msg3, SCHED(msg0,msg1,msg2,msg3))
    R4( 4, msg1, msg2, msg3, msg0, SCHED(msg1,msg2,msg3,msg0))
    R4( 8, msg2, msg3, msg0, msg1, SCHED(msg2,msg3,msg0,msg1))
    R4(12, msg3, msg0, msg1, msg2, SCHED(msg3,msg0,msg1,msg2))
    R4(16, msg0, msg1, msg2, msg3, SCHED(msg0,msg1,msg2,msg3))
    R4(20, msg1, msg2, msg3, msg0, SCHED(msg1,msg2,msg3,msg0))
    R4(24, msg2, msg3, msg0, msg1, SCHED(msg2,msg3,msg0,msg1))
    R4(28, msg3, msg0, msg1, msg2, SCHED(msg3,msg0,msg1,msg2))
    R4(32, msg0, msg1, msg2, msg3, SCHED(msg0,msg1,msg2,msg3))
    R4(36, msg1, msg2, msg3, msg0, SCHED(msg1,msg2,msg3,msg0))
    R4(40, msg2, msg3, msg0, msg1, SCHED(msg2,msg3,msg0,msg1))
    R4(44, msg3, msg0, msg1, msg2, SCHED(msg3,msg0,msg1,msg2))
    R4(48, msg0, msg1, msg2, msg3, NOSCHED)
    R4(52, msg1, msg2, msg3, msg0, NOSCHED)
    R4(56, msg2, msg3, msg0, msg1, NOSCHED)
    R4(60, msg3, msg0, msg1, msg2, NOSCHED)

#undef R4
#undef SCHED
#undef NOSCHED

    s0 = vaddq_u32(s0, s0_save);
    s1 = vaddq_u32(s1, s1_save);
    vst1q_u32(&state[0], s0);
    vst1q_u32(&state[4], s1);
}

static void sha256_128(const uint8_t data[128], uint8_t out[32]) {
    uint32_t state[8];
    memcpy(state, SHA256_INIT, 32);
    sha256_block_hw(state, data);
    sha256_block_hw(state, data+64);
    uint8_t pad[64] = {0};
    pad[0] = 0x80;
    pad[62] = 0x04;
    sha256_block_hw(state, pad);
    for (int i=0;i<8;i++) {
        out[i*4]=(uint8_t)(state[i]>>24); out[i*4+1]=(uint8_t)(state[i]>>16);
        out[i*4+2]=(uint8_t)(state[i]>>8); out[i*4+3]=(uint8_t)state[i];
    }
}

static void sha256_64(const uint8_t data[64], uint8_t out[32]) {
    uint32_t state[8];
    memcpy(state, SHA256_INIT, 32);
    sha256_block_hw(state, data);
    uint8_t pad[64] = {0};
    pad[0] = 0x80;
    pad[62] = 0x02;
    sha256_block_hw(state, pad);
    for (int i=0;i<8;i++) {
        out[i*4]=(uint8_t)(state[i]>>24); out[i*4+1]=(uint8_t)(state[i]>>16);
        out[i*4+2]=(uint8_t)(state[i]>>8); out[i*4+3]=(uint8_t)state[i];
    }
}

// --- Utilities ---

static void hex2bin(const char *hex, uint8_t *out, int len) {
    for (int i=0;i<len;i++) sscanf(hex+i*2, "%2hhx", &out[i]);
}

static void bin2hex(const uint8_t *in, int len, char *out) {
    for (int i=0;i<len;i++) sprintf(out+i*2, "%02x", in[i]);
    out[len*2] = 0;
}

// --- Target management ---

#define MAX_TARGETS 16

typedef struct {
    uint8_t h[32];
    const char *label;
    volatile LONG found;
} target_t;

static target_t g_targets[MAX_TARGETS];
static int g_ntargets = 0;
static uint8_t g_salt[32];
static volatile LONG g_total_found = 0;
static volatile LONG g_stop = 0;

static int check_pw(const char *pw, int pwlen) {
    uint8_t buf128[128] = {0};
    if (pwlen > 0) memcpy(buf128, pw, pwlen > 128 ? 128 : pwlen);

    uint8_t h1[32];
    sha256_128(buf128, h1);

    for (int t=0; t<g_ntargets; t++) {
        if (!g_targets[t].found && memcmp(h1, g_targets[t].h, 32) == 0) {
            if (InterlockedCompareExchange(&g_targets[t].found, 1, 0) == 0) {
                char hex[65]; bin2hex(h1, 32, hex);
                printf("\x1b[32m  >>> CRACKED h1-only: '%s' -> %s [%s]\x1b[0m\n", pw, hex, g_targets[t].label);
                fflush(stdout);
                InterlockedIncrement(&g_total_found);
            }
        }
    }

    uint8_t cat[64];
    memcpy(cat, h1, 32);
    memcpy(cat+32, g_salt, 32);
    uint8_t h2[32];
    sha256_64(cat, h2);

    for (int t=0; t<g_ntargets; t++) {
        if (!g_targets[t].found && memcmp(h2, g_targets[t].h, 32) == 0) {
            if (InterlockedCompareExchange(&g_targets[t].found, 1, 0) == 0) {
                char hex[65]; bin2hex(h2, 32, hex);
                printf("\x1b[32m  >>> CRACKED dbl-SHA256: '%s' -> %s [%s]\x1b[0m\n", pw, hex, g_targets[t].label);
                fflush(stdout);
                InterlockedIncrement(&g_total_found);
            }
        }
    }

    return g_total_found >= g_ntargets;
}

// --- Multi-threaded brute-force ---

typedef struct {
    int thread_id;
    int num_threads;
    int maxlen;
    volatile LONGLONG count;
} bf_ctx_t;

static DWORD WINAPI bf_thread(LPVOID arg) {
    bf_ctx_t *ctx = (bf_ctx_t*)arg;
    char pw[129];
    LONGLONG local_count = 0;

    for (int len = 1; len <= ctx->maxlen && !g_stop; len++) {
        for (int first = 32 + ctx->thread_id; first <= 126 && !g_stop; first += ctx->num_threads) {
            memset(pw, 32, len);
            pw[0] = (char)first;
            pw[len] = 0;

            for (;;) {
                if (g_stop) goto done;
                local_count++;
                if (check_pw(pw, len)) { g_stop = 1; goto done; }

                if (len == 1) break;
                int pos = len - 1;
                while (pos >= 1) {
                    pw[pos]++;
                    if (pw[pos] <= 126) break;
                    pw[pos] = 32;
                    pos--;
                }
                if (pos < 1) break;
                if ((local_count & 0xFFFFF) == 0) ctx->count = local_count;
            }
        }
        ctx->count = local_count;
    }
done:
    ctx->count = local_count;
    return 0;
}

// --- Wordlist ---

static LONGLONG run_wordlist(const char *path) {
    FILE *f = fopen(path, "r");
    if (!f) { perror(path); return 0; }
    char line[1024];
    LONGLONG count = 0;
    time_t start = time(NULL), last = start;
    while (fgets(line, sizeof(line), f) && !g_stop) {
        int len = (int)strlen(line);
        while (len > 0 && (line[len-1]=='\n'||line[len-1]=='\r')) line[--len]=0;
        if (len == 0 || len > 127) continue;
        count++;
        if (check_pw(line, len)) { g_stop = 1; break; }
        if (count % 500000 == 0) {
            time_t now = time(NULL);
            if (now - last >= 3) {
                double elapsed = (double)(now - start);
                if (elapsed < 1) elapsed = 1;
                printf("  \x1b[90m%lld provate, %.1fM/sec\x1b[0m\n", count, (count/elapsed)/1e6);
                fflush(stdout);
                last = now;
            }
        }
    }
    fclose(f);
    double elapsed = (double)(time(NULL) - start);
    if (elapsed < 1) elapsed = 1;
    printf("  Wordlist: %lld pw in %.0fs (%.1fM/sec)\n", count, elapsed, (count/elapsed)/1e6);
    fflush(stdout);
    return count;
}

// --- Progress monitor ---

typedef struct { int num_threads; bf_ctx_t *ctxs; time_t start; } monitor_t;

static DWORD WINAPI monitor_thread(LPVOID arg) {
    monitor_t *m = (monitor_t*)arg;
    while (!g_stop) {
        Sleep(5000);
        if (g_stop) break;
        LONGLONG total = 0;
        for (int i=0; i<m->num_threads; i++) total += m->ctxs[i].count;
        double elapsed = (double)(time(NULL) - m->start);
        if (elapsed < 1) elapsed = 1;
        printf("  \x1b[90m%lld provate, %.1fM/sec, %d/%d trovati\x1b[0m\n",
               total, (total/elapsed)/1e6, (int)g_total_found, g_ntargets);
        fflush(stdout);
    }
    return 0;
}

// --- Main ---

int main(int argc, char **argv) {
    memset(g_salt, 0xFF, 32);

    const char *target_hashes[][2] = {
        {"fd780cb23b20dbdee73e45682cf5af08ef4fb042e1ee3ca6e63c049408207292", "SystemSupervisorPw (qwerty)"},
        {"33796c56ca00fdee83ab4a3bb7d71fad7c4b0e0e90ce8c93670454c10ad0b72e", "PwPS originale (1)"},
        {NULL, NULL}
    };

    for (int i=0; target_hashes[i][0]; i++) {
        hex2bin(target_hashes[i][0], g_targets[g_ntargets].h, 32);
        g_targets[g_ntargets].label = target_hashes[i][1];
        g_targets[g_ntargets].found = 0;
        g_ntargets++;
    }

    const char *wl_path = NULL;
    int bf_maxlen = 4;
    int num_threads = 0;

    for (int i=1; i<argc; i++) {
        if (strcmp(argv[i], "-b") == 0 && i+1 < argc) bf_maxlen = atoi(argv[++i]);
        else if (strcmp(argv[i], "-t") == 0 && i+1 < argc) num_threads = atoi(argv[++i]);
        else wl_path = argv[i];
    }

    if (num_threads <= 0) {
        SYSTEM_INFO si; GetSystemInfo(&si);
        num_threads = si.dwNumberOfProcessors;
        if (num_threads < 1) num_threads = 1;
    }

    printf("\n");
    printf("    \x1b[36m___  ___  _ ____ ____ ___  ____  __\x1b[0m\n");
    printf("   \x1b[36m/ _ \\/ _ \\(_) __// __// _ \\/ __/ / _\\\x1b[0m\n");
    printf("  \x1b[36m/ // / // / /\\ \\ _\\ \\ / , _/ _/  / _ \\\x1b[0m\n");
    printf("  \x1b[36m\\___/\\___/_/___//___//_/|_/___/ /_/ \\_\\\x1b[0m\n");
    printf("\n");
    printf("  \x1b[33m-*- InsydeH2O BIOS Password Cracker v2.0 -*-\x1b[0m\n");
    printf("  \x1b[90mOdissREA Cracking Service (C) 2026\x1b[0m\n");
    printf("  \x1b[90m\"We crack what others lock\"\x1b[0m\n");
    printf("  \x1b[90mARM SHA-256 HW accel + %d threads\x1b[0m\n", num_threads);
    printf("\n");
    printf("  \x1b[35mAlgo:\x1b[0m SHA256(SHA256(pw_pad128) || salt)\n");
    printf("  \x1b[35mTarget:\x1b[0m %d hash  \x1b[35mSalt:\x1b[0m FF x 32\n\n", g_ntargets);

    if (wl_path) {
        printf("  \x1b[36m--- Wordlist: %s ---\x1b[0m\n", wl_path);
        run_wordlist(wl_path);
    }

    int remaining = 0;
    for (int i=0; i<g_ntargets; i++) if (!g_targets[i].found) remaining++;

    if (remaining > 0 && bf_maxlen > 0) {
        printf("\n  \x1b[36m--- Brute-force: %d hash, %d char max, %d thread ---\x1b[0m\n",
               remaining, bf_maxlen, num_threads);
        printf("  Charset: ASCII 32-126 (95 chars)\n\n");

        bf_ctx_t *ctxs = calloc(num_threads, sizeof(bf_ctx_t));
        HANDLE *threads = calloc(num_threads, sizeof(HANDLE));
        time_t start = time(NULL);

        for (int i=0; i<num_threads; i++) {
            ctxs[i].thread_id = i;
            ctxs[i].num_threads = num_threads;
            ctxs[i].maxlen = bf_maxlen;
            ctxs[i].count = 0;
            threads[i] = CreateThread(NULL, 0, bf_thread, &ctxs[i], 0, NULL);
        }

        monitor_t mon = { num_threads, ctxs, start };
        HANDLE hmon = CreateThread(NULL, 0, monitor_thread, &mon, 0, NULL);

        WaitForMultipleObjects(num_threads, threads, TRUE, INFINITE);
        g_stop = 1;
        WaitForSingleObject(hmon, 2000);

        LONGLONG total = 0;
        for (int i=0; i<num_threads; i++) {
            total += ctxs[i].count;
            CloseHandle(threads[i]);
        }
        CloseHandle(hmon);

        double elapsed = (double)(time(NULL) - start);
        if (elapsed < 1) elapsed = 1;
        printf("\n  Brute-force: %lld pw in %.0fs (%.1fM/sec)\n", total, elapsed, (total/elapsed)/1e6);
        free(ctxs); free(threads);
    }

    printf("\n  \x1b[36m=== OdissREA REPORT ===\x1b[0m\n");
    for (int i=0; target_hashes[i][0]; i++) {
        if (!g_targets[i].found)
            printf("  \x1b[31m[LOCKED]\x1b[0m %s\n", target_hashes[i][1]);
        else
            printf("  \x1b[32m[CRACKED]\x1b[0m %s\n", target_hashes[i][1]);
    }
    printf("\n  \x1b[90mOdissREA v2.0 — job done. Insert next disk.\x1b[0m\n\n");
    return 0;
}
