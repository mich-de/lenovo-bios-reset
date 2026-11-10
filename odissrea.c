// OdissREA v1.0 — InsydeH2O BIOS Password Cracker
// (C) 2026 OdissREA Cracking Service — "We crack what others lock"
// Compila: clang -O3 -o odissrea.exe odissrea.c
// Uso: odissrea.exe [wordlist.txt] [-b maxlen]

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

// SHA-256 minimal implementation (no dependencies)
static const uint32_t K[64] = {
    0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
    0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
    0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
    0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
    0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
    0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
    0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
    0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
};

#define RR(x,n) (((x)>>(n))|((x)<<(32-(n))))
#define CH(x,y,z) (((x)&(y))^((~(x))&(z)))
#define MAJ(x,y,z) (((x)&(y))^((x)&(z))^((y)&(z)))
#define EP0(x) (RR(x,2)^RR(x,13)^RR(x,22))
#define EP1(x) (RR(x,6)^RR(x,11)^RR(x,25))
#define SIG0(x) (RR(x,7)^RR(x,18)^((x)>>3))
#define SIG1(x) (RR(x,17)^RR(x,19)^((x)>>10))

static void sha256_block(uint32_t state[8], const uint8_t block[64]) {
    uint32_t w[64], a,b,c,d,e,f,g,h,t1,t2;
    for (int i=0;i<16;i++)
        w[i]=(uint32_t)block[i*4]<<24|(uint32_t)block[i*4+1]<<16|(uint32_t)block[i*4+2]<<8|block[i*4+3];
    for (int i=16;i<64;i++)
        w[i]=SIG1(w[i-2])+w[i-7]+SIG0(w[i-15])+w[i-16];
    a=state[0];b=state[1];c=state[2];d=state[3];
    e=state[4];f=state[5];g=state[6];h=state[7];
    for (int i=0;i<64;i++){
        t1=h+EP1(e)+CH(e,f,g)+K[i]+w[i];
        t2=EP0(a)+MAJ(a,b,c);
        h=g;g=f;f=e;e=d+t1;d=c;c=b;b=a;a=t1+t2;
    }
    state[0]+=a;state[1]+=b;state[2]+=c;state[3]+=d;
    state[4]+=e;state[5]+=f;state[6]+=g;state[7]+=h;
}

// SHA-256 of data up to 55 bytes (single block, optimized for our use case)
static void sha256_short(const uint8_t *data, size_t len, uint8_t out[32]) {
    uint8_t block[64];
    memset(block, 0, 64);
    memcpy(block, data, len);
    block[len] = 0x80;
    uint64_t bits = len * 8;
    for (int i=0;i<8;i++) block[63-i] = (uint8_t)(bits>>(i*8));
    uint32_t state[8] = {0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19};
    sha256_block(state, block);
    for (int i=0;i<8;i++){
        out[i*4]=(uint8_t)(state[i]>>24);out[i*4+1]=(uint8_t)(state[i]>>16);
        out[i*4+2]=(uint8_t)(state[i]>>8);out[i*4+3]=(uint8_t)state[i];
    }
}

// SHA-256 of exactly 128 bytes (two blocks)
static void sha256_128(const uint8_t data[128], uint8_t out[32]) {
    uint32_t state[8] = {0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19};
    sha256_block(state, data);
    // second block: data[64..127] + padding
    uint8_t block[64];
    memcpy(block, data+64, 64);
    // but 128 bytes needs: after data, 0x80, then pad, then length
    // 128 bytes = 2 full blocks of data, padding goes in block 3
    sha256_block(state, block);
    // block 3: 0x80 + zeros + length(128*8=1024=0x400)
    memset(block, 0, 64);
    block[0] = 0x80;
    block[62] = 0x04; // 1024 >> 8
    block[63] = 0x00;
    sha256_block(state, block);
    for (int i=0;i<8;i++){
        out[i*4]=(uint8_t)(state[i]>>24);out[i*4+1]=(uint8_t)(state[i]>>16);
        out[i*4+2]=(uint8_t)(state[i]>>8);out[i*4+3]=(uint8_t)state[i];
    }
}

// SHA-256 of exactly 64 bytes (one block data + one block padding)
static void sha256_64(const uint8_t data[64], uint8_t out[32]) {
    uint32_t state[8] = {0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19};
    sha256_block(state, data);
    uint8_t block[64];
    memset(block, 0, 64);
    block[0] = 0x80;
    block[62] = 0x02; // 512 >> 8
    block[63] = 0x00;
    sha256_block(state, block);
    for (int i=0;i<8;i++){
        out[i*4]=(uint8_t)(state[i]>>24);out[i*4+1]=(uint8_t)(state[i]>>16);
        out[i*4+2]=(uint8_t)(state[i]>>8);out[i*4+3]=(uint8_t)state[i];
    }
}

static void hex2bin(const char *hex, uint8_t *out, int len) {
    for (int i=0;i<len;i++) sscanf(hex+i*2, "%2hhx", &out[i]);
}

static void bin2hex(const uint8_t *in, int len, char *out) {
    for (int i=0;i<len;i++) sprintf(out+i*2, "%02x", in[i]);
    out[len*2] = 0;
}

typedef struct { uint8_t h[32]; const char *label; } target_t;

static int try_pw(const char *pw, int pwlen, target_t *targets, int ntargets,
                  const uint8_t salt[32]) {
    uint8_t buf128[128];
    memset(buf128, 0, 128);
    if (pwlen > 0) memcpy(buf128, pw, pwlen > 128 ? 128 : pwlen);

    uint8_t h1[32];
    sha256_128(buf128, h1);

    // check h1-only targets
    for (int t=0; t<ntargets; t++) {
        if (targets[t].label && memcmp(h1, targets[t].h, 32) == 0) {
            char hex[65]; bin2hex(h1, 32, hex);
            printf("\x1b[32m  >>> CRACKED h1-only: '%s' -> %s [%s]\x1b[0m\n", pw, hex, targets[t].label);
            targets[t].label = NULL; // mark found
        }
    }

    // double-SHA256 with salt
    uint8_t cat[64];
    memcpy(cat, h1, 32);
    memcpy(cat+32, salt, 32);
    uint8_t h2[32];
    sha256_64(cat, h2);

    for (int t=0; t<ntargets; t++) {
        if (targets[t].label && memcmp(h2, targets[t].h, 32) == 0) {
            char hex[65]; bin2hex(h2, 32, hex);
            printf("\x1b[32m  >>> CRACKED dbl-SHA256: '%s' -> %s [%s]\x1b[0m\n", pw, hex, targets[t].label);
            targets[t].label = NULL;
        }
    }

    // count remaining
    int remaining = 0;
    for (int t=0; t<ntargets; t++) if (targets[t].label) remaining++;
    return remaining;
}

// Brute-force: printable ASCII 32-126
static int brute_force(int maxlen, target_t *targets, int ntargets, const uint8_t salt[32]) {
    char pw[129];
    long long total = 0;
    time_t start = time(NULL);
    time_t last_report = start;

    for (int len = 1; len <= maxlen; len++) {
        printf("Brute-force lunghezza %d...\n", len);
        memset(pw, 32, len);
        pw[len] = 0;

        for (;;) {
            total++;
            int rem = try_pw(pw, len, targets, ntargets, salt);
            if (rem == 0) goto done;

            // increment
            int pos = len - 1;
            while (pos >= 0) {
                pw[pos]++;
                if (pw[pos] <= 126) break;
                pw[pos] = 32;
                pos--;
            }
            if (pos < 0) break;

            // progress ogni 5 sec
            time_t now = time(NULL);
            if (now - last_report >= 5) {
                double elapsed = (double)(now - start);
                printf("  %lld provate, %.0f/sec, ultimo: '%s'\n", total, total/elapsed, pw);
                fflush(stdout);
                last_report = now;
            }
        }
    }
done:;
    time_t end = time(NULL);
    double elapsed = (double)(end - start);
    if (elapsed < 1) elapsed = 1;
    printf("\nTotale: %lld password in %.0fs (%.0f/sec)\n", total, elapsed, total/elapsed);
    return 0;
}

int main(int argc, char **argv) {
    uint8_t salt[32];
    memset(salt, 0xFF, 32);

    // Target: aggiungi qui gli hash da craccare
    target_t targets[16];
    int ntargets = 0;

    // Se l'utente passa un hash come primo argomento senza file
    // Altrimenti: hash di default (tutti quelli noti per verifica + eventuali sconosciuti)
    // Per ora: vuoto, si aggiungono da linea di comando o hardcoded

    // Hash da craccare — modifica qui
    const char *target_hashes[][2] = {
        // {hash_hex, label} — aggiungi righe per nuovi target
        // Esempio: gli hash originali del progetto (già risolti, per test)
        {"fd780cb23b20dbdee73e45682cf5af08ef4fb042e1ee3ca6e63c049408207292", "SystemSupervisorPw (qwerty)"},
        {"33796c56ca00fdee83ab4a3bb7d71fad7c4b0e0e90ce8c93670454c10ad0b72e", "PwPS originale (1)"},
        {NULL, NULL}
    };

    for (int i=0; target_hashes[i][0]; i++) {
        hex2bin(target_hashes[i][0], targets[ntargets].h, 32);
        targets[ntargets].label = target_hashes[i][1];
        ntargets++;
    }

    printf("\n");
    printf("    \x1b[36m___  ___  _ ____ ____ ___  ____  __\x1b[0m\n");
    printf("   \x1b[36m/ _ \\/ _ \\(_) __// __// _ \\/ __/ / _\\\x1b[0m\n");
    printf("  \x1b[36m/ // / // / /\\ \\ _\\ \\ / , _/ _/  / _ \\\x1b[0m\n");
    printf("  \x1b[36m\\___/\\___/_/___//___//_/|_/___/ /_/ \\_\\\x1b[0m\n");
    printf("\n");
    printf("  \x1b[33m-*- InsydeH2O BIOS Password Cracker v1.0 -*-\x1b[0m\n");
    printf("  \x1b[90mCoded by OdissREA Cracking Service (C) 2026\x1b[0m\n");
    printf("  \x1b[90m\"We crack what others lock\" — Greets to all!\x1b[0m\n");
    printf("\n");
    printf("  \x1b[35mAlgo:\x1b[0m SHA256(SHA256(pw_pad128) || salt)\n");
    printf("  \x1b[35mTarget:\x1b[0m %d hash  \x1b[35mSalt:\x1b[0m FF x 32\n\n", ntargets);

    // Wordlist mode
    const char *wl_path = NULL;
    int bf_maxlen = 4; // default brute-force fino a 4 char

    for (int i=1; i<argc; i++) {
        if (strcmp(argv[i], "-b") == 0 && i+1 < argc) {
            bf_maxlen = atoi(argv[++i]);
        } else {
            wl_path = argv[i];
        }
    }

    if (wl_path) {
        FILE *f = fopen(wl_path, "r");
        if (!f) { perror(wl_path); return 1; }
        char line[1024];
        long long count = 0;
        time_t start = time(NULL);
        while (fgets(line, sizeof(line), f)) {
            int len = (int)strlen(line);
            while (len > 0 && (line[len-1]=='\n'||line[len-1]=='\r')) line[--len]=0;
            if (len == 0 || len > 127) continue;
            count++;
            int rem = try_pw(line, len, targets, ntargets, salt);
            if (rem == 0) { printf("Tutti trovati!\n"); break; }
            if (count % 100000 == 0) {
                double elapsed = (double)(time(NULL) - start);
                if (elapsed < 1) elapsed = 1;
                printf("  %lld provate, %.0f/sec\r\n", count, count/elapsed);
            }
        }
        fclose(f);
        double elapsed = (double)(time(NULL) - start);
        if (elapsed < 1) elapsed = 1;
        printf("Wordlist: %lld password in %.0fs (%.0f/sec)\n", count, elapsed, count/elapsed);
    }

    // Brute-force residuo
    int remaining = 0;
    for (int i=0; i<ntargets; i++) if (targets[i].label) remaining++;
    if (remaining > 0) {
        printf("\n%d hash rimasti, brute-force fino a %d caratteri (ASCII 32-126)...\n", remaining, bf_maxlen);
        printf("Usa -b N per cambiare (es: crack_fast -b 6)\n\n");
        brute_force(bf_maxlen, targets, ntargets, salt);
    }

    printf("\n  \x1b[36m=== OdissREA REPORT ===\x1b[0m\n");
    for (int i=0; target_hashes[i][0]; i++) {
        if (targets[i].label)
            printf("  \x1b[31m[LOCKED]\x1b[0m %s\n", target_hashes[i][1]);
        else
            printf("  \x1b[32m[CRACKED]\x1b[0m %s\n", target_hashes[i][1]);
    }
    printf("\n  \x1b[90mOdissREA — job done. Insert next disk.\x1b[0m\n\n");
    return 0;
}
