
D:\bios_tmp\SysPassword.efi:	file format coff-arm64

Disassembly of section .text:

0000000000001000 <.text>:
    1000: f100001f     	cmp	x0, #0x0
    1004: 540005c0     	b.eq	0x10bc <.text+0xbc>
    1008: a9bf0be3     	stp	x3, x2, [sp, #-0x10]!
    100c: a9bf03e1     	stp	x1, x0, [sp, #-0x10]!
    1010: a9bf23e9     	stp	x9, x8, [sp, #-0x10]!
    1014: a9bf77fe     	stp	x30, x29, [sp, #-0x10]!
    1018: f100003f     	cmp	x1, #0x0
    101c: 54000140     	b.eq	0x1044 <.text+0x44>
    1020: 39400028     	ldrb	w8, [x1]
    1024: 7101251f     	cmp	w8, #0x49
    1028: 540000e1     	b.ne	0x1044 <.text+0x44>
    102c: 39400428     	ldrb	w8, [x1, #0x1]
    1030: 7101091f     	cmp	w8, #0x42
    1034: 54000081     	b.ne	0x1044 <.text+0x44>
    1038: 39400828     	ldrb	w8, [x1, #0x2]
    103c: 7101251f     	cmp	w8, #0x49
    1040: 54000060     	b.eq	0x104c <.text+0x4c>
    1044: 9400002a     	bl	0x10ec <.text+0xec>
    1048: 14000019     	b	0x10ac <.text+0xac>
    104c: f9403422     	ldr	x2, [x1, #0x68]
    1050: f9403823     	ldr	x3, [x1, #0x70]
    1054: 58000369     	ldr	x9, 0x10c0 <.text+0xc0>
    1058: f9400129     	ldr	x9, [x9]
    105c: b4000142     	cbz	x2, 0x1084 <.text+0x84>
    1060: d1000442     	sub	x2, x2, #0x1
    1064: f8418468     	ldr	x8, [x3], #0x18
    1068: eb09011f     	cmp	x8, x9
    106c: 54ffff81     	b.ne	0x105c <.text+0x5c>
    1070: d1002063     	sub	x3, x3, #0x8
    1074: f9400063     	ldr	x3, [x3]
    1078: 58000281     	ldr	x1, 0x10c8 <.text+0xc8>
    107c: f9000023     	str	x3, [x1]
    1080: 1400000b     	b	0x10ac <.text+0xac>
    1084: a9bf03e1     	stp	x1, x0, [sp, #-0x10]!
    1088: 94000019     	bl	0x10ec <.text+0xec>
    108c: a8c103e1     	ldp	x1, x0, [sp], #0x10
    1090: 91018023     	add	x3, x1, #0x60
    1094: 58057b61     	ldr	x1, 0xc000
    1098: 58000140     	ldr	x0, 0x10c0 <.text+0xc0>
    109c: f9400062     	ldr	x2, [x3]
    10a0: 91030042     	add	x2, x2, #0xc0
    10a4: f9400043     	ldr	x3, [x2]
    10a8: d63f0060     	blr	x3
    10ac: a8c177fe     	ldp	x30, x29, [sp], #0x10
    10b0: a8c123e9     	ldp	x9, x8, [sp], #0x10
    10b4: a8c103e1     	ldp	x1, x0, [sp], #0x10
    10b8: a8c10be3     	ldp	x3, x2, [sp], #0x10
    10bc: 14000023     	b	0x1148 <.text+0x148>
    10c0: 0000c008     	udf	#0xc008
    10c4: 00000000     	udf	#0x0
    10c8: 0000c000     	udf	#0xc000
    10cc: 00000000     	udf	#0x0
    10d0: d10043ff     	sub	sp, sp, #0x10
    10d4: 52800028     	mov	w8, #0x1                // =1
    10d8: b9000fe8     	str	w8, [sp, #0xc]
    10dc: b9400fe8     	ldr	w8, [sp, #0xc]
    10e0: 35ffffe8     	cbnz	w8, 0x10dc <.text+0xdc>
    10e4: 910043ff     	add	sp, sp, #0x10
    10e8: d65f03c0     	ret
    10ec: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    10f0: 910003fd     	mov	x29, sp
    10f4: 94000005     	bl	0x1108 <.text+0x108>
    10f8: f0000048     	adrp	x8, 0xc000
    10fc: f9000100     	str	x0, [x8]
    1100: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1104: d65f03c0     	ret
    1108: 14001f2f     	b	0x8dc4 <.text+0x7dc4>
    110c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1110: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1114: 910003fd     	mov	x29, sp
    1118: aa0003f4     	mov	x20, x0
    111c: 9400014b     	bl	0x1648 <.text+0x648>
    1120: aa0003f3     	mov	x19, x0
    1124: b7f800a0     	tbnz	x0, #0x3f, 0x1138 <.text+0x138>
    1128: 90000068     	adrp	x8, 0xd000
    112c: aa1403e0     	mov	x0, x20
    1130: f9400d01     	ldr	x1, [x8, #0x18]
    1134: 9400010f     	bl	0x1570 <.text+0x570>
    1138: aa1303e0     	mov	x0, x19
    113c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1140: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1144: d65f03c0     	ret
    1148: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    114c: f9000bf5     	str	x21, [sp, #0x10]
    1150: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1154: 910003fd     	mov	x29, sp
    1158: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    115c: aa0103f3     	mov	x19, x1
    1160: aa0003f4     	mov	x20, x0
    1164: b948c508     	ldr	w8, [x8, #0x8c4]
    1168: 340000e8     	cbz	w8, 0x1184 <.text+0x184>
    116c: b9400a69     	ldr	w9, [x19, #0x8]
    1170: 6b08013f     	cmp	w9, w8
    1174: 54000082     	b.hs	0x1184 <.text+0x184>
    1178: d2800335     	mov	x21, #0x19              // =25
    117c: f2f00015     	movk	x21, #0x8000, lsl #48
    1180: 14000021     	b	0x1204 <.text+0x204>
    1184: aa1403e0     	mov	x0, x20
    1188: aa1303e1     	mov	x1, x19
    118c: 94000023     	bl	0x1218 <.text+0x218>
    1190: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1194: 39632108     	ldrb	w8, [x8, #0x8c8]
    1198: 34000268     	cbz	w8, 0x11e4 <.text+0x1e4>
    119c: 90000068     	adrp	x8, 0xd000
    11a0: f0000041     	adrp	x1, 0xc000
    11a4: 910e2021     	add	x1, x1, #0x388
    11a8: 910063a2     	add	x2, x29, #0x18
    11ac: aa1403e0     	mov	x0, x20
    11b0: f9401108     	ldr	x8, [x8, #0x20]
    11b4: f9404d08     	ldr	x8, [x8, #0x98]
    11b8: d63f0100     	blr	x8
    11bc: b6f800c0     	tbz	x0, #0x3f, 0x11d4 <.text+0x1d4>
    11c0: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    11c4: aa0003e2     	mov	x2, x0
    11c8: 911ed021     	add	x1, x1, #0x7b4
    11cc: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    11d0: 94000874     	bl	0x33a0 <.text+0x23a0>
    11d4: f9400fa8     	ldr	x8, [x29, #0x18]
    11d8: 90000009     	adrp	x9, 0x1000 <.text>
    11dc: 91043129     	add	x9, x9, #0x10c
    11e0: f9002d09     	str	x9, [x8, #0x58]
    11e4: aa1403e0     	mov	x0, x20
    11e8: aa1303e1     	mov	x1, x19
    11ec: 94000116     	bl	0x1644 <.text+0x644>
    11f0: aa0003f5     	mov	x21, x0
    11f4: b6f80080     	tbz	x0, #0x3f, 0x1204 <.text+0x204>
    11f8: aa1403e0     	mov	x0, x20
    11fc: aa1303e1     	mov	x1, x19
    1200: 940000dc     	bl	0x1570 <.text+0x570>
    1204: aa1503e0     	mov	x0, x21
    1208: f9400bf5     	ldr	x21, [sp, #0x10]
    120c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1210: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1214: d65f03c0     	ret
    1218: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    121c: f9000bf5     	str	x21, [sp, #0x10]
    1220: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1224: 910003fd     	mov	x29, sp
    1228: aa0103f3     	mov	x19, x1
    122c: aa0003f4     	mov	x20, x0
    1230: 940009ab     	bl	0x38dc <.text+0x28dc>
    1234: b6f800c0     	tbz	x0, #0x3f, 0x124c <.text+0x24c>
    1238: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    123c: aa0003e2     	mov	x2, x0
    1240: 911ed021     	add	x1, x1, #0x7b4
    1244: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    1248: 94000856     	bl	0x33a0 <.text+0x23a0>
    124c: aa1403e0     	mov	x0, x20
    1250: aa1303e1     	mov	x1, x19
    1254: 94000adb     	bl	0x3dc0 <.text+0x2dc0>
    1258: b6f800c0     	tbz	x0, #0x3f, 0x1270 <.text+0x270>
    125c: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1260: aa0003e2     	mov	x2, x0
    1264: 911ed021     	add	x1, x1, #0x7b4
    1268: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    126c: 9400084d     	bl	0x33a0 <.text+0x23a0>
    1270: aa1403e0     	mov	x0, x20
    1274: aa1303e1     	mov	x1, x19
    1278: 94000ad7     	bl	0x3dd4 <.text+0x2dd4>
    127c: b6f800c0     	tbz	x0, #0x3f, 0x1294 <.text+0x294>
    1280: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1284: aa0003e2     	mov	x2, x0
    1288: 911ed021     	add	x1, x1, #0x7b4
    128c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    1290: 94000844     	bl	0x33a0 <.text+0x23a0>
    1294: 94000ada     	bl	0x3dfc <.text+0x2dfc>
    1298: aa0003f5     	mov	x21, x0
    129c: 940008b1     	bl	0x3560 <.text+0x2560>
    12a0: 72001c1f     	tst	w0, #0xff
    12a4: 540001a0     	b.eq	0x12d8 <.text+0x2d8>
    12a8: b6f80195     	tbz	x21, #0x3f, 0x12d8 <.text+0x2d8>
    12ac: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    12b0: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    12b4: 911fa421     	add	x1, x1, #0x7e9
    12b8: aa1503e2     	mov	x2, x21
    12bc: 94000839     	bl	0x33a0 <.text+0x23a0>
    12c0: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    12c4: b0000042     	adrp	x2, 0xa000 <.text+0x9000>
    12c8: 91203400     	add	x0, x0, #0x80d
    12cc: 52807121     	mov	w1, #0x389              // =905
    12d0: 91205c42     	add	x2, x2, #0x817
    12d4: 9400086b     	bl	0x3480 <.text+0x2480>
    12d8: 94000b16     	bl	0x3f30 <.text+0x2f30>
    12dc: aa0003f5     	mov	x21, x0
    12e0: 940008a0     	bl	0x3560 <.text+0x2560>
    12e4: 72001c1f     	tst	w0, #0xff
    12e8: 540001a0     	b.eq	0x131c <.text+0x31c>
    12ec: b6f80195     	tbz	x21, #0x3f, 0x131c <.text+0x31c>
    12f0: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    12f4: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    12f8: 911fa421     	add	x1, x1, #0x7e9
    12fc: aa1503e2     	mov	x2, x21
    1300: 94000828     	bl	0x33a0 <.text+0x23a0>
    1304: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    1308: b0000042     	adrp	x2, 0xa000 <.text+0x9000>
    130c: 91203400     	add	x0, x0, #0x80d
    1310: 52807181     	mov	w1, #0x38c              // =908
    1314: 91205c42     	add	x2, x2, #0x817
    1318: 9400085a     	bl	0x3480 <.text+0x2480>
    131c: 94000b18     	bl	0x3f7c <.text+0x2f7c>
    1320: aa0003f5     	mov	x21, x0
    1324: 9400088f     	bl	0x3560 <.text+0x2560>
    1328: 72001c1f     	tst	w0, #0xff
    132c: 540001a0     	b.eq	0x1360 <.text+0x360>
    1330: b6f80195     	tbz	x21, #0x3f, 0x1360 <.text+0x360>
    1334: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1338: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    133c: 911fa421     	add	x1, x1, #0x7e9
    1340: aa1503e2     	mov	x2, x21
    1344: 94000817     	bl	0x33a0 <.text+0x23a0>
    1348: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    134c: b0000042     	adrp	x2, 0xa000 <.text+0x9000>
    1350: 91203400     	add	x0, x0, #0x80d
    1354: 528071e1     	mov	w1, #0x38f              // =911
    1358: 91205c42     	add	x2, x2, #0x817
    135c: 94000849     	bl	0x3480 <.text+0x2480>
    1360: aa1403e0     	mov	x0, x20
    1364: aa1303e1     	mov	x1, x19
    1368: 94000b12     	bl	0x3fb0 <.text+0x2fb0>
    136c: b6f800c0     	tbz	x0, #0x3f, 0x1384 <.text+0x384>
    1370: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1374: aa0003e2     	mov	x2, x0
    1378: 911ed021     	add	x1, x1, #0x7b4
    137c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    1380: 94000808     	bl	0x33a0 <.text+0x23a0>
    1384: aa1403e0     	mov	x0, x20
    1388: aa1303e1     	mov	x1, x19
    138c: 94000b2b     	bl	0x4038 <.text+0x3038>
    1390: b6f800c0     	tbz	x0, #0x3f, 0x13a8 <.text+0x3a8>
    1394: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1398: aa0003e2     	mov	x2, x0
    139c: 911ed021     	add	x1, x1, #0x7b4
    13a0: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    13a4: 940007ff     	bl	0x33a0 <.text+0x23a0>
    13a8: aa1403e0     	mov	x0, x20
    13ac: aa1303e1     	mov	x1, x19
    13b0: 94000c24     	bl	0x4440 <.text+0x3440>
    13b4: b6f800c0     	tbz	x0, #0x3f, 0x13cc <.text+0x3cc>
    13b8: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    13bc: aa0003e2     	mov	x2, x0
    13c0: 911ed021     	add	x1, x1, #0x7b4
    13c4: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    13c8: 940007f6     	bl	0x33a0 <.text+0x23a0>
    13cc: aa1403e0     	mov	x0, x20
    13d0: aa1303e1     	mov	x1, x19
    13d4: 94000ec2     	bl	0x4edc <.text+0x3edc>
    13d8: b6f800c0     	tbz	x0, #0x3f, 0x13f0 <.text+0x3f0>
    13dc: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    13e0: aa0003e2     	mov	x2, x0
    13e4: 911ed021     	add	x1, x1, #0x7b4
    13e8: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    13ec: 940007ed     	bl	0x33a0 <.text+0x23a0>
    13f0: aa1403e0     	mov	x0, x20
    13f4: aa1303e1     	mov	x1, x19
    13f8: 94000f1a     	bl	0x5060 <.text+0x4060>
    13fc: b6f800c0     	tbz	x0, #0x3f, 0x1414 <.text+0x414>
    1400: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1404: aa0003e2     	mov	x2, x0
    1408: 911ed021     	add	x1, x1, #0x7b4
    140c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    1410: 940007e4     	bl	0x33a0 <.text+0x23a0>
    1414: aa1403e0     	mov	x0, x20
    1418: aa1303e1     	mov	x1, x19
    141c: 94001191     	bl	0x5a60 <.text+0x4a60>
    1420: b6f800c0     	tbz	x0, #0x3f, 0x1438 <.text+0x438>
    1424: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1428: aa0003e2     	mov	x2, x0
    142c: 911ed021     	add	x1, x1, #0x7b4
    1430: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    1434: 940007db     	bl	0x33a0 <.text+0x23a0>
    1438: aa1403e0     	mov	x0, x20
    143c: aa1303e1     	mov	x1, x19
    1440: 940012ed     	bl	0x5ff4 <.text+0x4ff4>
    1444: b6f800c0     	tbz	x0, #0x3f, 0x145c <.text+0x45c>
    1448: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    144c: aa0003e2     	mov	x2, x0
    1450: 911ed021     	add	x1, x1, #0x7b4
    1454: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    1458: 940007d2     	bl	0x33a0 <.text+0x23a0>
    145c: aa1403e0     	mov	x0, x20
    1460: aa1303e1     	mov	x1, x19
    1464: 940015cc     	bl	0x6b94 <.text+0x5b94>
    1468: b6f800c0     	tbz	x0, #0x3f, 0x1480 <.text+0x480>
    146c: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1470: aa0003e2     	mov	x2, x0
    1474: 911ed021     	add	x1, x1, #0x7b4
    1478: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    147c: 940007c9     	bl	0x33a0 <.text+0x23a0>
    1480: aa1403e0     	mov	x0, x20
    1484: aa1303e1     	mov	x1, x19
    1488: 9400187e     	bl	0x7680 <.text+0x6680>
    148c: b6f800c0     	tbz	x0, #0x3f, 0x14a4 <.text+0x4a4>
    1490: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1494: aa0003e2     	mov	x2, x0
    1498: 911ed021     	add	x1, x1, #0x7b4
    149c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    14a0: 940007c0     	bl	0x33a0 <.text+0x23a0>
    14a4: aa1403e0     	mov	x0, x20
    14a8: aa1303e1     	mov	x1, x19
    14ac: 94001aff     	bl	0x80a8 <.text+0x70a8>
    14b0: b6f800c0     	tbz	x0, #0x3f, 0x14c8 <.text+0x4c8>
    14b4: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    14b8: aa0003e2     	mov	x2, x0
    14bc: 911ed021     	add	x1, x1, #0x7b4
    14c0: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    14c4: 940007b7     	bl	0x33a0 <.text+0x23a0>
    14c8: 94001e72     	bl	0x8e90 <.text+0x7e90>
    14cc: aa0003f5     	mov	x21, x0
    14d0: 94000824     	bl	0x3560 <.text+0x2560>
    14d4: 72001c1f     	tst	w0, #0xff
    14d8: 540001a0     	b.eq	0x150c <.text+0x50c>
    14dc: b6f80195     	tbz	x21, #0x3f, 0x150c <.text+0x50c>
    14e0: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    14e4: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    14e8: 911fa421     	add	x1, x1, #0x7e9
    14ec: aa1503e2     	mov	x2, x21
    14f0: 940007ac     	bl	0x33a0 <.text+0x23a0>
    14f4: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    14f8: b0000042     	adrp	x2, 0xa000 <.text+0x9000>
    14fc: 91203400     	add	x0, x0, #0x80d
    1500: 52807601     	mov	w1, #0x3b0              // =944
    1504: 91205c42     	add	x2, x2, #0x817
    1508: 940007de     	bl	0x3480 <.text+0x2480>
    150c: aa1403e0     	mov	x0, x20
    1510: aa1303e1     	mov	x1, x19
    1514: 94001e64     	bl	0x8ea4 <.text+0x7ea4>
    1518: b6f800c0     	tbz	x0, #0x3f, 0x1530 <.text+0x530>
    151c: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1520: aa0003e2     	mov	x2, x0
    1524: 911ed021     	add	x1, x1, #0x7b4
    1528: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    152c: 9400079d     	bl	0x33a0 <.text+0x23a0>
    1530: aa1403e0     	mov	x0, x20
    1534: aa1303e1     	mov	x1, x19
    1538: 94001f62     	bl	0x92c0 <.text+0x82c0>
    153c: b7f800a0     	tbnz	x0, #0x3f, 0x1550 <.text+0x550>
    1540: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1544: f9400bf5     	ldr	x21, [sp, #0x10]
    1548: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    154c: d65f03c0     	ret
    1550: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1554: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1558: aa0003e2     	mov	x2, x0
    155c: f9400bf5     	ldr	x21, [sp, #0x10]
    1560: 911ed021     	add	x1, x1, #0x7b4
    1564: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    1568: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    156c: 1400078d     	b	0x33a0 <.text+0x23a0>
    1570: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1574: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1578: 910003fd     	mov	x29, sp
    157c: aa0103f3     	mov	x19, x1
    1580: aa0003f4     	mov	x20, x0
    1584: 94001be7     	bl	0x8520 <.text+0x7520>
    1588: b6f800c0     	tbz	x0, #0x3f, 0x15a0 <.text+0x5a0>
    158c: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1590: aa0003e2     	mov	x2, x0
    1594: 911ed021     	add	x1, x1, #0x7b4
    1598: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    159c: 94000781     	bl	0x33a0 <.text+0x23a0>
    15a0: aa1403e0     	mov	x0, x20
    15a4: aa1303e1     	mov	x1, x19
    15a8: 94001847     	bl	0x76c4 <.text+0x66c4>
    15ac: b6f800c0     	tbz	x0, #0x3f, 0x15c4 <.text+0x5c4>
    15b0: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    15b4: aa0003e2     	mov	x2, x0
    15b8: 911ed021     	add	x1, x1, #0x7b4
    15bc: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    15c0: 94000778     	bl	0x33a0 <.text+0x23a0>
    15c4: aa1403e0     	mov	x0, x20
    15c8: aa1303e1     	mov	x1, x19
    15cc: 94001337     	bl	0x62a8 <.text+0x52a8>
    15d0: b6f800c0     	tbz	x0, #0x3f, 0x15e8 <.text+0x5e8>
    15d4: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    15d8: aa0003e2     	mov	x2, x0
    15dc: 911ed021     	add	x1, x1, #0x7b4
    15e0: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    15e4: 9400076f     	bl	0x33a0 <.text+0x23a0>
    15e8: aa1403e0     	mov	x0, x20
    15ec: aa1303e1     	mov	x1, x19
    15f0: 94001110     	bl	0x5a30 <.text+0x4a30>
    15f4: b6f800c0     	tbz	x0, #0x3f, 0x160c <.text+0x60c>
    15f8: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    15fc: aa0003e2     	mov	x2, x0
    1600: 911ed021     	add	x1, x1, #0x7b4
    1604: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    1608: 94000766     	bl	0x33a0 <.text+0x23a0>
    160c: aa1403e0     	mov	x0, x20
    1610: aa1303e1     	mov	x1, x19
    1614: 94000ac2     	bl	0x411c <.text+0x311c>
    1618: b7f80080     	tbnz	x0, #0x3f, 0x1628 <.text+0x628>
    161c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1620: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1624: d65f03c0     	ret
    1628: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    162c: b0000041     	adrp	x1, 0xa000 <.text+0x9000>
    1630: aa0003e2     	mov	x2, x0
    1634: 911ed021     	add	x1, x1, #0x7b4
    1638: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    163c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1640: 14000758     	b	0x33a0 <.text+0x23a0>
    1644: 14000530     	b	0x2b04 <.text+0x1b04>
    1648: aa1f03e0     	mov	x0, xzr
    164c: d65f03c0     	ret
    1650: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1654: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1658: 910003fd     	mov	x29, sp
    165c: aa0003e8     	mov	x8, x0
    1660: aa0103f3     	mov	x19, x1
    1664: 528f2e6a     	mov	w10, #0x7973            // =31091
    1668: 72aeee0a     	movk	w10, #0x7770, lsl #16
    166c: f85f8d09     	ldr	x9, [x8, #-0x8]!
    1670: eb0a013f     	cmp	x9, x10
    1674: 54000061     	b.ne	0x1680 <.text+0x680>
    1678: aa0803f4     	mov	x20, x8
    167c: 14000008     	b	0x169c <.text+0x69c>
    1680: aa0003f4     	mov	x20, x0
    1684: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    1688: b0000042     	adrp	x2, 0xa000 <.text+0x9000>
    168c: 91232400     	add	x0, x0, #0x8c9
    1690: 52800d61     	mov	w1, #0x6b               // =107
    1694: 91236842     	add	x2, x2, #0x8da
    1698: 9400077a     	bl	0x3480 <.text+0x2480>
    169c: f9402688     	ldr	x8, [x20, #0x48]
    16a0: f9400508     	ldr	x8, [x8, #0x8]
    16a4: b4000248     	cbz	x8, 0x16ec <.text+0x6ec>
    16a8: aa1f03f4     	mov	x20, xzr
    16ac: 78747a69     	ldrh	w9, [x19, x20, lsl #1]
    16b0: 340000a9     	cbz	w9, 0x16c4 <.text+0x6c4>
    16b4: 91000694     	add	x20, x20, #0x1
    16b8: eb14011f     	cmp	x8, x20
    16bc: 54ffff81     	b.ne	0x16ac <.text+0x6ac>
    16c0: aa0803f4     	mov	x20, x8
    16c4: aa1403e0     	mov	x0, x20
    16c8: 94000b20     	bl	0x4348 <.text+0x3348>
    16cc: b4000174     	cbz	x20, 0x16f8 <.text+0x6f8>
    16d0: aa1f03e8     	mov	x8, xzr
    16d4: 78687a69     	ldrh	w9, [x19, x8, lsl #1]
    16d8: 38286809     	strb	w9, [x0, x8]
    16dc: 91000508     	add	x8, x8, #0x1
    16e0: eb08029f     	cmp	x20, x8
    16e4: 54ffff81     	b.ne	0x16d4 <.text+0x6d4>
    16e8: 14000004     	b	0x16f8 <.text+0x6f8>
    16ec: aa1f03e0     	mov	x0, xzr
    16f0: 94000b16     	bl	0x4348 <.text+0x3348>
    16f4: aa1f03f4     	mov	x20, xzr
    16f8: aa1403e1     	mov	x1, x20
    16fc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1700: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1704: 14001e31     	b	0x8fc8 <.text+0x7fc8>
    1708: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    170c: f9000bf5     	str	x21, [sp, #0x10]
    1710: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1714: 910003fd     	mov	x29, sp
    1718: aa0103f5     	mov	x21, x1
    171c: aa0003e1     	mov	x1, x0
    1720: aa1503e0     	mov	x0, x21
    1724: aa0503f3     	mov	x19, x5
    1728: aa0403f4     	mov	x20, x4
    172c: 94000b37     	bl	0x4408 <.text+0x3408>
    1730: b4000120     	cbz	x0, 0x1754 <.text+0x754>
    1734: aa1503e1     	mov	x1, x21
    1738: 94001e35     	bl	0x900c <.text+0x800c>
    173c: aa0003e8     	mov	x8, x0
    1740: 52800409     	mov	w9, #0x20               // =32
    1744: aa1f03e0     	mov	x0, xzr
    1748: f9000288     	str	x8, [x20]
    174c: f9000269     	str	x9, [x19]
    1750: 14000003     	b	0x175c <.text+0x75c>
    1754: d2800120     	mov	x0, #0x9                // =9
    1758: f2f00000     	movk	x0, #0x8000, lsl #48
    175c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1760: f9400bf5     	ldr	x21, [sp, #0x10]
    1764: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1768: d65f03c0     	ret
    176c: d100c3ff     	sub	sp, sp, #0x30
    1770: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1774: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1778: 910043fd     	add	x29, sp, #0x10
    177c: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1780: b0000049     	adrp	x9, 0xa000 <.text+0x9000>
    1784: 39622508     	ldrb	w8, [x8, #0x889]
    1788: 39624129     	ldrb	w9, [x9, #0x890]
    178c: 7100011f     	cmp	w8, #0x0
    1790: 7a400924     	ccmp	w9, #0x0, #0x4, eq
    1794: 54000061     	b.ne	0x17a0 <.text+0x7a0>
    1798: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    179c: 1400001a     	b	0x1804 <.text+0x804>
    17a0: 52800620     	mov	w0, #0x31               // =49
    17a4: 94000ae9     	bl	0x4348 <.text+0x3348>
    17a8: f90007e0     	str	x0, [sp, #0x8]
    17ac: b4000280     	cbz	x0, 0x17fc <.text+0x7fc>
    17b0: aa0003f3     	mov	x19, x0
    17b4: 52800634     	mov	w20, #0x31              // =49
    17b8: aa1403e0     	mov	x0, x20
    17bc: aa1303e1     	mov	x1, x19
    17c0: 940011db     	bl	0x5f2c <.text+0x4f2c>
    17c4: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    17c8: f0000041     	adrp	x1, 0xc000
    17cc: 91283800     	add	x0, x0, #0xa0e
    17d0: 528002e2     	mov	w2, #0x17               // =23
    17d4: 91026021     	add	x1, x1, #0x98
    17d8: aa1403e3     	mov	x3, x20
    17dc: aa1303e4     	mov	x4, x19
    17e0: 3900c27f     	strb	wzr, [x19, #0x30]
    17e4: 94001369     	bl	0x6588 <.text+0x5588>
    17e8: aa0003f3     	mov	x19, x0
    17ec: 910023e0     	add	x0, sp, #0x8
    17f0: 9400082f     	bl	0x38ac <.text+0x28ac>
    17f4: aa1303e0     	mov	x0, x19
    17f8: 14000003     	b	0x1804 <.text+0x804>
    17fc: d2800120     	mov	x0, #0x9                // =9
    1800: f2f00000     	movk	x0, #0x8000, lsl #48
    1804: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1808: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    180c: 9100c3ff     	add	sp, sp, #0x30
    1810: d65f03c0     	ret
    1814: d10143ff     	sub	sp, sp, #0x50
    1818: a9017bfd     	stp	x29, x30, [sp, #0x10]
    181c: f90013f7     	str	x23, [sp, #0x20]
    1820: a90357f6     	stp	x22, x21, [sp, #0x30]
    1824: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1828: 910043fd     	add	x29, sp, #0x10
    182c: aa0003f6     	mov	x22, x0
    1830: aa0103f4     	mov	x20, x1
    1834: aa0003f5     	mov	x21, x0
    1838: 528f2e69     	mov	w9, #0x7973             // =31091
    183c: 72aeee09     	movk	w9, #0x7770, lsl #16
    1840: f85f8ec8     	ldr	x8, [x22, #-0x8]!
    1844: eb09011f     	cmp	x8, x9
    1848: 54000100     	b.eq	0x1868 <.text+0x868>
    184c: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    1850: b0000042     	adrp	x2, 0xa000 <.text+0x9000>
    1854: 91232400     	add	x0, x0, #0x8c9
    1858: 528039a1     	mov	w1, #0x1cd              // =461
    185c: 91236842     	add	x2, x2, #0x8da
    1860: 94000708     	bl	0x3480 <.text+0x2480>
    1864: aa1503f6     	mov	x22, x21
    1868: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    186c: b2410bf3     	mov	x19, #-0x7ffffffffffffffd // =-9223372036854775805
    1870: 39622508     	ldrb	w8, [x8, #0x889]
    1874: 350007c8     	cbnz	w8, 0x196c <.text+0x96c>
    1878: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    187c: 39624108     	ldrb	w8, [x8, #0x890]
    1880: 34000768     	cbz	w8, 0x196c <.text+0x96c>
    1884: f94002a8     	ldr	x8, [x21]
    1888: aa1503e0     	mov	x0, x21
    188c: 2a1f03e1     	mov	w1, wzr
    1890: d2800053     	mov	x19, #0x2               // =2
    1894: f2f00013     	movk	x19, #0x8000, lsl #48
    1898: f90007ff     	str	xzr, [sp, #0x8]
    189c: d63f0100     	blr	x8
    18a0: b4000440     	cbz	x0, 0x1928 <.text+0x928>
    18a4: aa1f03f5     	mov	x21, xzr
    18a8: aa1f03f7     	mov	x23, xzr
    18ac: 91008af4     	add	x20, x23, #0x22
    18b0: aa1403e0     	mov	x0, x20
    18b4: 94000aa5     	bl	0x4348 <.text+0x3348>
    18b8: f9000fa0     	str	x0, [x29, #0x18]
    18bc: b4000560     	cbz	x0, 0x1968 <.text+0x968>
    18c0: aa0003f6     	mov	x22, x0
    18c4: aa1403e0     	mov	x0, x20
    18c8: aa1603e1     	mov	x1, x22
    18cc: 94001198     	bl	0x5f2c <.text+0x4f2c>
    18d0: b40000f7     	cbz	x23, 0x18ec <.text+0x8ec>
    18d4: 910082c0     	add	x0, x22, #0x20
    18d8: 910006e2     	add	x2, x23, #0x1
    18dc: aa1503e1     	mov	x1, x21
    18e0: 9400059a     	bl	0x2f48 <.text+0x1f48>
    18e4: 910023e0     	add	x0, sp, #0x8
    18e8: 940007f1     	bl	0x38ac <.text+0x28ac>
    18ec: 8b1602e8     	add	x8, x23, x22
    18f0: 52800029     	mov	w9, #0x1                // =1
    18f4: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    18f8: f0000041     	adrp	x1, 0xc000
    18fc: 91283800     	add	x0, x0, #0xa0e
    1900: 528002e2     	mov	w2, #0x17               // =23
    1904: 39008509     	strb	w9, [x8, #0x21]
    1908: 91026021     	add	x1, x1, #0x98
    190c: f9400fa4     	ldr	x4, [x29, #0x18]
    1910: aa1403e3     	mov	x3, x20
    1914: 9400131d     	bl	0x6588 <.text+0x5588>
    1918: aa0003f3     	mov	x19, x0
    191c: 910063a0     	add	x0, x29, #0x18
    1920: 940007e3     	bl	0x38ac <.text+0x28ac>
    1924: 14000012     	b	0x196c <.text+0x96c>
    1928: b4000234     	cbz	x20, 0x196c <.text+0x96c>
    192c: 79400288     	ldrh	w8, [x20]
    1930: 340001e8     	cbz	w8, 0x196c <.text+0x96c>
    1934: aa1503e0     	mov	x0, x21
    1938: aa1403e1     	mov	x1, x20
    193c: 97ffff45     	bl	0x1650 <.text+0x650>
    1940: f90007e0     	str	x0, [sp, #0x8]
    1944: b4000120     	cbz	x0, 0x1968 <.text+0x968>
    1948: f94026c8     	ldr	x8, [x22, #0x48]
    194c: aa0003f5     	mov	x21, x0
    1950: 39400017     	ldrb	w23, [x0]
    1954: f9400508     	ldr	x8, [x8, #0x8]
    1958: eb17011f     	cmp	x8, x23
    195c: 54fffa82     	b.hs	0x18ac <.text+0x8ac>
    1960: b2410bf3     	mov	x19, #-0x7ffffffffffffffd // =-9223372036854775805
    1964: 14000002     	b	0x196c <.text+0x96c>
    1968: 91001e73     	add	x19, x19, #0x7
    196c: aa1303e0     	mov	x0, x19
    1970: f94013f7     	ldr	x23, [sp, #0x20]
    1974: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1978: a94357f6     	ldp	x22, x21, [sp, #0x30]
    197c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1980: 910143ff     	add	sp, sp, #0x50
    1984: d65f03c0     	ret
    1988: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    198c: f9000bf3     	str	x19, [sp, #0x10]
    1990: 910003fd     	mov	x29, sp
    1994: 2a0003e8     	mov	w8, w0
    1998: d2800040     	mov	x0, #0x2                // =2
    199c: f2f00000     	movk	x0, #0x8000, lsl #48
    19a0: b4000521     	cbz	x1, 0x1a44 <.text+0xa44>
    19a4: aa0303f3     	mov	x19, x3
    19a8: b40004e3     	cbz	x3, 0x1a44 <.text+0xa44>
    19ac: 72001d1f     	tst	w8, #0xff
    19b0: 54000160     	b.eq	0x19dc <.text+0x9dc>
    19b4: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    19b8: aa0103e0     	mov	x0, x1
    19bc: 9128d108     	add	x8, x8, #0xa34
    19c0: aa0203e1     	mov	x1, x2
    19c4: aa0803e2     	mov	x2, x8
    19c8: 9400071d     	bl	0x363c <.text+0x263c>
    19cc: f0000048     	adrp	x8, 0xc000
    19d0: aa1f03e0     	mov	x0, xzr
    19d4: 91012108     	add	x8, x8, #0x48
    19d8: 14000017     	b	0x1a34 <.text+0xa34>
    19dc: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    19e0: 39624108     	ldrb	w8, [x8, #0x890]
    19e4: 34000168     	cbz	w8, 0x1a10 <.text+0xa10>
    19e8: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    19ec: aa0103e0     	mov	x0, x1
    19f0: 9129d108     	add	x8, x8, #0xa74
    19f4: aa0203e1     	mov	x1, x2
    19f8: aa0803e2     	mov	x2, x8
    19fc: 94000710     	bl	0x363c <.text+0x263c>
    1a00: f0000048     	adrp	x8, 0xc000
    1a04: aa1f03e0     	mov	x0, xzr
    1a08: 91026108     	add	x8, x8, #0x98
    1a0c: 1400000a     	b	0x1a34 <.text+0xa34>
    1a10: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1a14: aa0103e0     	mov	x0, x1
    1a18: 91293908     	add	x8, x8, #0xa4e
    1a1c: aa0203e1     	mov	x1, x2
    1a20: aa0803e2     	mov	x2, x8
    1a24: 94000706     	bl	0x363c <.text+0x263c>
    1a28: f0000048     	adrp	x8, 0xc000
    1a2c: aa1f03e0     	mov	x0, xzr
    1a30: 9100e108     	add	x8, x8, #0x38
    1a34: 2941250a     	ldp	w10, w9, [x8, #0x8]
    1a38: 2940210b     	ldp	w11, w8, [x8]
    1a3c: 2901266a     	stp	w10, w9, [x19, #0x8]
    1a40: 2900226b     	stp	w11, w8, [x19]
    1a44: f9400bf3     	ldr	x19, [sp, #0x10]
    1a48: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1a4c: d65f03c0     	ret
    1a50: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1a54: a90157f6     	stp	x22, x21, [sp, #0x10]
    1a58: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1a5c: 910003fd     	mov	x29, sp
    1a60: aa0003e8     	mov	x8, x0
    1a64: aa0203f4     	mov	x20, x2
    1a68: 2a0103f5     	mov	w21, w1
    1a6c: 528f2e6a     	mov	w10, #0x7973            // =31091
    1a70: 72aeee0a     	movk	w10, #0x7770, lsl #16
    1a74: f85f8d09     	ldr	x9, [x8, #-0x8]!
    1a78: eb0a013f     	cmp	x9, x10
    1a7c: 54000061     	b.ne	0x1a88 <.text+0xa88>
    1a80: aa0803f3     	mov	x19, x8
    1a84: 14000008     	b	0x1aa4 <.text+0xaa4>
    1a88: aa0003f3     	mov	x19, x0
    1a8c: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    1a90: b0000042     	adrp	x2, 0xa000 <.text+0x9000>
    1a94: 91232400     	add	x0, x0, #0x8c9
    1a98: 52804ac1     	mov	w1, #0x256              // =598
    1a9c: 91236842     	add	x2, x2, #0x8da
    1aa0: 94000678     	bl	0x3480 <.text+0x2480>
    1aa4: 72001ebf     	tst	w21, #0xff
    1aa8: 540000c0     	b.eq	0x1ac0 <.text+0xac0>
    1aac: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1ab0: 39622908     	ldrb	w8, [x8, #0x88a]
    1ab4: 35000068     	cbnz	w8, 0x1ac0 <.text+0xac0>
    1ab8: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    1abc: 1400003b     	b	0x1ba8 <.text+0xba8>
    1ac0: 72001ebf     	tst	w21, #0xff
    1ac4: 52800a08     	mov	w8, #0x50               // =80
    1ac8: 52800c09     	mov	w9, #0x60               // =96
    1acc: 1a880135     	csel	w21, w9, w8, eq
    1ad0: b4000154     	cbz	x20, 0x1af8 <.text+0xaf8>
    1ad4: 39400288     	ldrb	w8, [x20]
    1ad8: 34000328     	cbz	w8, 0x1b3c <.text+0xb3c>
    1adc: f9402669     	ldr	x9, [x19, #0x48]
    1ae0: f9400529     	ldr	x9, [x9, #0x8]
    1ae4: eb28413f     	cmp	x9, w8, uxtw
    1ae8: 540004c2     	b.hs	0x1b80 <.text+0xb80>
    1aec: d2800040     	mov	x0, #0x2                // =2
    1af0: f2f00000     	movk	x0, #0x8000, lsl #48
    1af4: 1400002d     	b	0x1ba8 <.text+0xba8>
    1af8: f9402668     	ldr	x8, [x19, #0x48]
    1afc: f9400508     	ldr	x8, [x8, #0x8]
    1b00: b100091f     	cmn	x8, #0x2
    1b04: 54000500     	b.eq	0x1ba4 <.text+0xba4>
    1b08: 52800034     	mov	w20, #0x1               // =1
    1b0c: 0b1402a8     	add	w8, w21, w20
    1b10: 2a1f03e1     	mov	w1, wzr
    1b14: 51000500     	sub	w0, w8, #0x1
    1b18: 94001ce2     	bl	0x8ea0 <.text+0x7ea0>
    1b1c: f9402668     	ldr	x8, [x19, #0x48]
    1b20: 11000689     	add	w9, w20, #0x1
    1b24: f9400508     	ldr	x8, [x8, #0x8]
    1b28: 91000908     	add	x8, x8, #0x2
    1b2c: eb34011f     	cmp	x8, w20, uxtb
    1b30: 2a0903f4     	mov	w20, w9
    1b34: 54fffec8     	b.hi	0x1b0c <.text+0xb0c>
    1b38: 1400001b     	b	0x1ba4 <.text+0xba4>
    1b3c: f9402668     	ldr	x8, [x19, #0x48]
    1b40: f9400508     	ldr	x8, [x8, #0x8]
    1b44: b100091f     	cmn	x8, #0x2
    1b48: 540002e0     	b.eq	0x1ba4 <.text+0xba4>
    1b4c: 52800034     	mov	w20, #0x1               // =1
    1b50: 0b1402a8     	add	w8, w21, w20
    1b54: 2a1f03e1     	mov	w1, wzr
    1b58: 51000500     	sub	w0, w8, #0x1
    1b5c: 94001cd1     	bl	0x8ea0 <.text+0x7ea0>
    1b60: f9402668     	ldr	x8, [x19, #0x48]
    1b64: 11000689     	add	w9, w20, #0x1
    1b68: f9400508     	ldr	x8, [x8, #0x8]
    1b6c: 91000908     	add	x8, x8, #0x2
    1b70: eb34011f     	cmp	x8, w20, uxtb
    1b74: 2a0903f4     	mov	w20, w9
    1b78: 54fffec8     	b.hi	0x1b50 <.text+0xb50>
    1b7c: 1400000a     	b	0x1ba4 <.text+0xba4>
    1b80: 2a1f03f3     	mov	w19, wzr
    1b84: 11000916     	add	w22, w8, #0x2
    1b88: 92401e68     	and	x8, x19, #0xff
    1b8c: 0b1302a0     	add	w0, w21, w19
    1b90: 38686a81     	ldrb	w1, [x20, x8]
    1b94: 94001cc3     	bl	0x8ea0 <.text+0x7ea0>
    1b98: 11000673     	add	w19, w19, #0x1
    1b9c: 6b3302df     	cmp	w22, w19, uxtb
    1ba0: 54ffff48     	b.hi	0x1b88 <.text+0xb88>
    1ba4: aa1f03e0     	mov	x0, xzr
    1ba8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1bac: a94157f6     	ldp	x22, x21, [sp, #0x10]
    1bb0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1bb4: d65f03c0     	ret
    1bb8: d10383ff     	sub	sp, sp, #0xe0
    1bbc: a9097bfd     	stp	x29, x30, [sp, #0x90]
    1bc0: a90a67fa     	stp	x26, x25, [sp, #0xa0]
    1bc4: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
    1bc8: a90c57f6     	stp	x22, x21, [sp, #0xc0]
    1bcc: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
    1bd0: 910243fd     	add	x29, sp, #0x90
    1bd4: f0000048     	adrp	x8, 0xc000
    1bd8: aa0203f5     	mov	x21, x2
    1bdc: 2a0103f3     	mov	w19, w1
    1be0: 72001c3f     	tst	w1, #0xff
    1be4: f9400108     	ldr	x8, [x8]
    1be8: f81f83a8     	stur	x8, [x29, #-0x8]
    1bec: 540000c0     	b.eq	0x1c04 <.text+0xc04>
    1bf0: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1bf4: 39622908     	ldrb	w8, [x8, #0x88a]
    1bf8: 35000068     	cbnz	w8, 0x1c04 <.text+0xc04>
    1bfc: b2410bf6     	mov	x22, #-0x7ffffffffffffffd // =-9223372036854775805
    1c00: 1400005c     	b	0x1d70 <.text+0xd70>
    1c04: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1c08: f10002bf     	cmp	x21, #0x0
    1c0c: d2800136     	mov	x22, #0x9               // =9
    1c10: 12001e69     	and	w9, w19, #0xff
    1c14: f2f00016     	movk	x22, #0x8000, lsl #48
    1c18: 39624119     	ldrb	w25, [x8, #0x890]
    1c1c: 1a9f07e8     	cset	w8, ne
    1c20: 531b6914     	lsl	w20, w8, #5
    1c24: 350004a9     	cbnz	w9, 0x1cb8 <.text+0xcb8>
    1c28: 34000499     	cbz	w25, 0x1cb8 <.text+0xcb8>
    1c2c: b0000042     	adrp	x2, 0xa000 <.text+0x9000>
    1c30: 52800641     	mov	w1, #0x32               // =50
    1c34: 9129d042     	add	x2, x2, #0xa74
    1c38: 910053e0     	add	x0, sp, #0x14
    1c3c: 94000680     	bl	0x363c <.text+0x263c>
    1c40: f0000048     	adrp	x8, 0xc000
    1c44: 91008a9a     	add	x26, x20, #0x22
    1c48: 91026108     	add	x8, x8, #0x98
    1c4c: f10002bf     	cmp	x21, #0x0
    1c50: 5280060c     	mov	w12, #0x30              // =48
    1c54: 9a9a0198     	csel	x24, x12, x26, eq
    1c58: 29402909     	ldp	w9, w10, [x8]
    1c5c: aa1803e0     	mov	x0, x24
    1c60: 2941210b     	ldp	w11, w8, [x8, #0x8]
    1c64: 293d2ba9     	stp	w9, w10, [x29, #-0x18]
    1c68: 293e23ab     	stp	w11, w8, [x29, #-0x10]
    1c6c: 940009b7     	bl	0x4348 <.text+0x3348>
    1c70: f90007e0     	str	x0, [sp, #0x8]
    1c74: b40007e0     	cbz	x0, 0x1d70 <.text+0xd70>
    1c78: aa0003f7     	mov	x23, x0
    1c7c: aa1803e0     	mov	x0, x24
    1c80: aa1703e1     	mov	x1, x23
    1c84: 940010aa     	bl	0x5f2c <.text+0x4f2c>
    1c88: b4000515     	cbz	x21, 0x1d28 <.text+0xd28>
    1c8c: 910082f6     	add	x22, x23, #0x20
    1c90: b2400297     	orr	x23, x20, #0x1
    1c94: aa1603e0     	mov	x0, x22
    1c98: aa1503e1     	mov	x1, x21
    1c9c: aa1703e2     	mov	x2, x23
    1ca0: 940004aa     	bl	0x2f48 <.text+0x1f48>
    1ca4: 52800028     	mov	w8, #0x1                // =1
    1ca8: 528002e2     	mov	w2, #0x17               // =23
    1cac: aa1a03f4     	mov	x20, x26
    1cb0: 38376ac8     	strb	w8, [x22, x23]
    1cb4: 1400001f     	b	0x1d30 <.text+0xd30>
    1cb8: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1cbc: b0000049     	adrp	x9, 0xa000 <.text+0x9000>
    1cc0: 91293908     	add	x8, x8, #0xa4e
    1cc4: 9128d129     	add	x9, x9, #0xa34
    1cc8: 72001e77     	ands	w23, w19, #0xff
    1ccc: 52800641     	mov	w1, #0x32               // =50
    1cd0: 9a881122     	csel	x2, x9, x8, ne
    1cd4: 910053e0     	add	x0, sp, #0x14
    1cd8: 94000659     	bl	0x363c <.text+0x263c>
    1cdc: 34000097     	cbz	w23, 0x1cec <.text+0xcec>
    1ce0: f0000048     	adrp	x8, 0xc000
    1ce4: 91012108     	add	x8, x8, #0x48
    1ce8: 14000003     	b	0x1cf4 <.text+0xcf4>
    1cec: f0000048     	adrp	x8, 0xc000
    1cf0: 9100e108     	add	x8, x8, #0x38
    1cf4: 29402909     	ldp	w9, w10, [x8]
    1cf8: aa1403e0     	mov	x0, x20
    1cfc: 2941210b     	ldp	w11, w8, [x8, #0x8]
    1d00: 293d2ba9     	stp	w9, w10, [x29, #-0x18]
    1d04: 293e23ab     	stp	w11, w8, [x29, #-0x10]
    1d08: 94000990     	bl	0x4348 <.text+0x3348>
    1d0c: f90007e0     	str	x0, [sp, #0x8]
    1d10: b4000300     	cbz	x0, 0x1d70 <.text+0xd70>
    1d14: aa1503e1     	mov	x1, x21
    1d18: aa1403e2     	mov	x2, x20
    1d1c: 9400048b     	bl	0x2f48 <.text+0x1f48>
    1d20: 528000e2     	mov	w2, #0x7                // =7
    1d24: 14000003     	b	0x1d30 <.text+0xd30>
    1d28: 528002e2     	mov	w2, #0x17               // =23
    1d2c: 52800614     	mov	w20, #0x30              // =48
    1d30: f94007e4     	ldr	x4, [sp, #0x8]
    1d34: 72001e7f     	tst	w19, #0xff
    1d38: 540000e1     	b.ne	0x1d54 <.text+0xd54>
    1d3c: 340000d9     	cbz	w25, 0x1d54 <.text+0xd54>
    1d40: 910053e0     	add	x0, sp, #0x14
    1d44: d10063a1     	sub	x1, x29, #0x18
    1d48: aa1403e3     	mov	x3, x20
    1d4c: 9400120f     	bl	0x6588 <.text+0x5588>
    1d50: 14000005     	b	0x1d64 <.text+0xd64>
    1d54: 910053e0     	add	x0, sp, #0x14
    1d58: d10063a1     	sub	x1, x29, #0x18
    1d5c: aa1403e3     	mov	x3, x20
    1d60: 9400132a     	bl	0x6a08 <.text+0x5a08>
    1d64: aa0003f6     	mov	x22, x0
    1d68: 910023e0     	add	x0, sp, #0x8
    1d6c: 940006d0     	bl	0x38ac <.text+0x28ac>
    1d70: f0000049     	adrp	x9, 0xc000
    1d74: f85f83a8     	ldur	x8, [x29, #-0x8]
    1d78: f9400129     	ldr	x9, [x9]
    1d7c: eb08013f     	cmp	x9, x8
    1d80: 54000121     	b.ne	0x1da4 <.text+0xda4>
    1d84: aa1603e0     	mov	x0, x22
    1d88: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
    1d8c: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
    1d90: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
    1d94: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
    1d98: a9497bfd     	ldp	x29, x30, [sp, #0x90]
    1d9c: 910383ff     	add	sp, sp, #0xe0
    1da0: d65f03c0     	ret
    1da4: 97fffccb     	bl	0x10d0 <.text+0xd0>
    1da8: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1dac: 39622508     	ldrb	w8, [x8, #0x889]
    1db0: 34000048     	cbz	w8, 0x1db8 <.text+0xdb8>
    1db4: 17ffff27     	b	0x1a50 <.text+0xa50>
    1db8: 17ffff80     	b	0x1bb8 <.text+0xbb8>
    1dbc: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    1dc0: f9000bf9     	str	x25, [sp, #0x10]
    1dc4: a9025ff8     	stp	x24, x23, [sp, #0x20]
    1dc8: a90357f6     	stp	x22, x21, [sp, #0x30]
    1dcc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1dd0: 910003fd     	mov	x29, sp
    1dd4: aa0003e8     	mov	x8, x0
    1dd8: aa0203f4     	mov	x20, x2
    1ddc: 2a0103f5     	mov	w21, w1
    1de0: 528f2e6a     	mov	w10, #0x7973            // =31091
    1de4: 72aeee0a     	movk	w10, #0x7770, lsl #16
    1de8: f85f8d09     	ldr	x9, [x8, #-0x8]!
    1dec: eb0a013f     	cmp	x9, x10
    1df0: 54000061     	b.ne	0x1dfc <.text+0xdfc>
    1df4: aa0803f3     	mov	x19, x8
    1df8: 14000008     	b	0x1e18 <.text+0xe18>
    1dfc: aa0003f3     	mov	x19, x0
    1e00: b0000040     	adrp	x0, 0xa000 <.text+0x9000>
    1e04: b0000042     	adrp	x2, 0xa000 <.text+0x9000>
    1e08: 91232400     	add	x0, x0, #0x8c9
    1e0c: 52806361     	mov	w1, #0x31b              // =795
    1e10: 91236842     	add	x2, x2, #0x8da
    1e14: 9400059b     	bl	0x3480 <.text+0x2480>
    1e18: 72001ebf     	tst	w21, #0xff
    1e1c: 540000c0     	b.eq	0x1e34 <.text+0xe34>
    1e20: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1e24: 39622908     	ldrb	w8, [x8, #0x88a]
    1e28: 35000068     	cbnz	w8, 0x1e34 <.text+0xe34>
    1e2c: b2410bf6     	mov	x22, #-0x7ffffffffffffffd // =-9223372036854775805
    1e30: 1400004d     	b	0x1f64 <.text+0xf64>
    1e34: 72001ebf     	tst	w21, #0xff
    1e38: 52800a08     	mov	w8, #0x50               // =80
    1e3c: 52800c09     	mov	w9, #0x60               // =96
    1e40: 1a880135     	csel	w21, w9, w8, eq
    1e44: 2a1503e0     	mov	w0, w21
    1e48: 94001c14     	bl	0x8e98 <.text+0x7e98>
    1e4c: 72001c08     	ands	w8, w0, #0xff
    1e50: 540005e0     	b.eq	0x1f0c <.text+0xf0c>
    1e54: f9402669     	ldr	x9, [x19, #0x48]
    1e58: f9400529     	ldr	x9, [x9, #0x8]
    1e5c: eb28413f     	cmp	x9, w8, uxtw
    1e60: 540005a3     	b.lo	0x1f14 <.text+0xf14>
    1e64: 11000917     	add	w23, w8, #0x2
    1e68: d28001d6     	mov	x22, #0xe               // =14
    1e6c: aa1703e0     	mov	x0, x23
    1e70: f2f00016     	movk	x22, #0x8000, lsl #48
    1e74: f900029f     	str	xzr, [x20]
    1e78: 94000934     	bl	0x4348 <.text+0x3348>
    1e7c: f9000280     	str	x0, [x20]
    1e80: b40006c0     	cbz	x0, 0x1f58 <.text+0xf58>
    1e84: 2a1f03f9     	mov	w25, wzr
    1e88: 2a1f03f8     	mov	w24, wzr
    1e8c: 0b1902a0     	add	w0, w21, w25
    1e90: 94001c02     	bl	0x8e98 <.text+0x7e98>
    1e94: f9400288     	ldr	x8, [x20]
    1e98: 92401f29     	and	x9, x25, #0xff
    1e9c: 11000739     	add	w25, w25, #0x1
    1ea0: 6b3902ff     	cmp	w23, w25, uxtb
    1ea4: 38296900     	strb	w0, [x8, x9]
    1ea8: f9400288     	ldr	x8, [x20]
    1eac: 38696908     	ldrb	w8, [x8, x9]
    1eb0: 0b180118     	add	w24, w8, w24
    1eb4: 54fffec8     	b.hi	0x1e8c <.text+0xe8c>
    1eb8: 72001f1f     	tst	w24, #0xff
    1ebc: 54000520     	b.eq	0x1f60 <.text+0xf60>
    1ec0: f9402668     	ldr	x8, [x19, #0x48]
    1ec4: f9400508     	ldr	x8, [x8, #0x8]
    1ec8: b100091f     	cmn	x8, #0x2
    1ecc: 540001a0     	b.eq	0x1f00 <.text+0xf00>
    1ed0: 52800037     	mov	w23, #0x1               // =1
    1ed4: 0b1702a8     	add	w8, w21, w23
    1ed8: 2a1f03e1     	mov	w1, wzr
    1edc: 51000500     	sub	w0, w8, #0x1
    1ee0: 94001bf0     	bl	0x8ea0 <.text+0x7ea0>
    1ee4: f9402668     	ldr	x8, [x19, #0x48]
    1ee8: 110006e9     	add	w9, w23, #0x1
    1eec: f9400508     	ldr	x8, [x8, #0x8]
    1ef0: 91000908     	add	x8, x8, #0x2
    1ef4: eb37011f     	cmp	x8, w23, uxtb
    1ef8: 2a0903f7     	mov	w23, w9
    1efc: 54fffec8     	b.hi	0x1ed4 <.text+0xed4>
    1f00: aa1403e0     	mov	x0, x20
    1f04: 9400066a     	bl	0x38ac <.text+0x28ac>
    1f08: 14000017     	b	0x1f64 <.text+0xf64>
    1f0c: f9402668     	ldr	x8, [x19, #0x48]
    1f10: f9400509     	ldr	x9, [x8, #0x8]
    1f14: d28001d6     	mov	x22, #0xe               // =14
    1f18: b100093f     	cmn	x9, #0x2
    1f1c: f2f00016     	movk	x22, #0x8000, lsl #48
    1f20: 54000220     	b.eq	0x1f64 <.text+0xf64>
    1f24: 52800034     	mov	w20, #0x1               // =1
    1f28: 0b1402a8     	add	w8, w21, w20
    1f2c: 2a1f03e1     	mov	w1, wzr
    1f30: 51000500     	sub	w0, w8, #0x1
    1f34: 94001bdb     	bl	0x8ea0 <.text+0x7ea0>
    1f38: f9402668     	ldr	x8, [x19, #0x48]
    1f3c: 11000689     	add	w9, w20, #0x1
    1f40: f9400508     	ldr	x8, [x8, #0x8]
    1f44: 91000908     	add	x8, x8, #0x2
    1f48: eb34011f     	cmp	x8, w20, uxtb
    1f4c: 2a0903f4     	mov	w20, w9
    1f50: 54fffec8     	b.hi	0x1f28 <.text+0xf28>
    1f54: 14000004     	b	0x1f64 <.text+0xf64>
    1f58: d10016d6     	sub	x22, x22, #0x5
    1f5c: 14000002     	b	0x1f64 <.text+0xf64>
    1f60: aa1f03f6     	mov	x22, xzr
    1f64: aa1603e0     	mov	x0, x22
    1f68: f9400bf9     	ldr	x25, [sp, #0x10]
    1f6c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1f70: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1f74: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1f78: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    1f7c: d65f03c0     	ret
    1f80: d10383ff     	sub	sp, sp, #0xe0
    1f84: a9097bfd     	stp	x29, x30, [sp, #0x90]
    1f88: f90053f9     	str	x25, [sp, #0xa0]
    1f8c: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
    1f90: a90c57f6     	stp	x22, x21, [sp, #0xc0]
    1f94: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
    1f98: 910243fd     	add	x29, sp, #0x90
    1f9c: f0000048     	adrp	x8, 0xc000
    1fa0: aa0203f4     	mov	x20, x2
    1fa4: 2a0103f5     	mov	w21, w1
    1fa8: 72001c3f     	tst	w1, #0xff
    1fac: f9400108     	ldr	x8, [x8]
    1fb0: f81f83a8     	stur	x8, [x29, #-0x8]
    1fb4: 540000c0     	b.eq	0x1fcc <.text+0xfcc>
    1fb8: b0000048     	adrp	x8, 0xa000 <.text+0x9000>
    1fbc: 39622908     	ldrb	w8, [x8, #0x88a]
    1fc0: 35000068     	cbnz	w8, 0x1fcc <.text+0xfcc>
    1fc4: b2410bf3     	mov	x19, #-0x7ffffffffffffffd // =-9223372036854775805
    1fc8: 14000070     	b	0x2188 <.text+0x1188>
    1fcc: 52800642     	mov	w2, #0x32               // =50
    1fd0: 910013e1     	add	x1, sp, #0x4
    1fd4: d10063a3     	sub	x3, x29, #0x18
    1fd8: 2a1503e0     	mov	w0, w21
    1fdc: f81d83bf     	stur	xzr, [x29, #-0x28]
    1fe0: 97fffe6a     	bl	0x1988 <.text+0x988>
    1fe4: b7f80300     	tbnz	x0, #0x3f, 0x2044 <.text+0x1044>
    1fe8: 910013e0     	add	x0, sp, #0x4
    1fec: d10063a1     	sub	x1, x29, #0x18
    1ff0: d10083a2     	sub	x2, x29, #0x20
    1ff4: aa1f03e3     	mov	x3, xzr
    1ff8: d2800133     	mov	x19, #0x9               // =9
    1ffc: f81e03bf     	stur	xzr, [x29, #-0x20]
    2000: f2f00013     	movk	x19, #0x8000, lsl #48
    2004: 940010e3     	bl	0x6390 <.text+0x5390>
    2008: d1001268     	sub	x8, x19, #0x4
    200c: eb08001f     	cmp	x0, x8
    2010: 540001e1     	b.ne	0x204c <.text+0x104c>
    2014: f85e03a0     	ldur	x0, [x29, #-0x20]
    2018: 940008cc     	bl	0x4348 <.text+0x3348>
    201c: f81d83a0     	stur	x0, [x29, #-0x28]
    2020: b4000b40     	cbz	x0, 0x2188 <.text+0x1188>
    2024: aa0003f6     	mov	x22, x0
    2028: 910013e0     	add	x0, sp, #0x4
    202c: d10063a1     	sub	x1, x29, #0x18
    2030: d10083a2     	sub	x2, x29, #0x20
    2034: aa1603e3     	mov	x3, x22
    2038: 940010d6     	bl	0x6390 <.text+0x5390>
    203c: b6f800c0     	tbz	x0, #0x3f, 0x2054 <.text+0x1054>
    2040: 14000013     	b	0x208c <.text+0x108c>
    2044: aa0003f3     	mov	x19, x0
    2048: 14000050     	b	0x2188 <.text+0x1188>
    204c: aa1f03f6     	mov	x22, xzr
    2050: b7f801e0     	tbnz	x0, #0x3f, 0x208c <.text+0x108c>
    2054: 72001ebf     	tst	w21, #0xff
    2058: 54000321     	b.ne	0x20bc <.text+0x10bc>
    205c: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2060: 39624108     	ldrb	w8, [x8, #0x890]
    2064: 340002c8     	cbz	w8, 0x20bc <.text+0x10bc>
    2068: 52800020     	mov	w0, #0x1                // =1
    206c: f900029f     	str	xzr, [x20]
    2070: 52800035     	mov	w21, #0x1               // =1
    2074: 940008b5     	bl	0x4348 <.text+0x3348>
    2078: f9000280     	str	x0, [x20]
    207c: b4000860     	cbz	x0, 0x2188 <.text+0x1188>
    2080: aa1f03f3     	mov	x19, xzr
    2084: 39000015     	strb	w21, [x0]
    2088: 1400003e     	b	0x2180 <.text+0x1180>
    208c: 72001ebf     	tst	w21, #0xff
    2090: 540002a0     	b.eq	0x20e4 <.text+0x10e4>
    2094: d0000048     	adrp	x8, 0xc000
    2098: f947f908     	ldr	x8, [x8, #0xff0]
    209c: b4000708     	cbz	x8, 0x217c <.text+0x117c>
    20a0: 79400509     	ldrh	w9, [x8, #0x2]
    20a4: 91006101     	add	x1, x8, #0x18
    20a8: aa1603e0     	mov	x0, x22
    20ac: d1006122     	sub	x2, x9, #0x18
    20b0: 940003a6     	bl	0x2f48 <.text+0x1f48>
    20b4: b5000096     	cbnz	x22, 0x20c4 <.text+0x10c4>
    20b8: 1400002f     	b	0x2174 <.text+0x1174>
    20bc: f85d83b6     	ldur	x22, [x29, #-0x28]
    20c0: b40005b6     	cbz	x22, 0x2174 <.text+0x1174>
    20c4: f85e03a0     	ldur	x0, [x29, #-0x20]
    20c8: 940008a0     	bl	0x4348 <.text+0x3348>
    20cc: f9000280     	str	x0, [x20]
    20d0: b40005c0     	cbz	x0, 0x2188 <.text+0x1188>
    20d4: a97d8ba1     	ldp	x1, x2, [x29, #-0x28]
    20d8: 9400039c     	bl	0x2f48 <.text+0x1f48>
    20dc: aa1f03f3     	mov	x19, xzr
    20e0: 14000028     	b	0x2180 <.text+0x1180>
    20e4: d0000041     	adrp	x1, 0xc000
    20e8: d10063a0     	sub	x0, x29, #0x18
    20ec: 91026021     	add	x1, x1, #0x98
    20f0: 94000392     	bl	0x2f38 <.text+0x1f38>
    20f4: d0000048     	adrp	x8, 0xc000
    20f8: d0000049     	adrp	x9, 0xc000
    20fc: 913fa108     	add	x8, x8, #0xfe8
    2100: 913f8129     	add	x9, x9, #0xfe0
    2104: 72001c1f     	tst	w0, #0xff
    2108: 2a0003f7     	mov	w23, w0
    210c: 9a890108     	csel	x8, x8, x9, eq
    2110: d100a3a0     	sub	x0, x29, #0x28
    2114: f9400119     	ldr	x25, [x8]
    2118: 940005e5     	bl	0x38ac <.text+0x28ac>
    211c: b40002d9     	cbz	x25, 0x2174 <.text+0x1174>
    2120: 79400738     	ldrh	w24, [x25, #0x2]
    2124: d1006316     	sub	x22, x24, #0x18
    2128: aa1603e0     	mov	x0, x22
    212c: 94000887     	bl	0x4348 <.text+0x3348>
    2130: f81d83a0     	stur	x0, [x29, #-0x28]
    2134: b40002a0     	cbz	x0, 0x2188 <.text+0x1188>
    2138: 91006321     	add	x1, x25, #0x18
    213c: aa1603e2     	mov	x2, x22
    2140: 12001ef7     	and	w23, w23, #0xff
    2144: 94000381     	bl	0x2f48 <.text+0x1f48>
    2148: 34fff877     	cbz	w23, 0x2054 <.text+0x1054>
    214c: d1005f00     	sub	x0, x24, #0x17
    2150: 9400087e     	bl	0x4348 <.text+0x3348>
    2154: f9000280     	str	x0, [x20]
    2158: b4000180     	cbz	x0, 0x2188 <.text+0x1188>
    215c: 39000016     	strb	w22, [x0]
    2160: aa1603e2     	mov	x2, x22
    2164: f9400288     	ldr	x8, [x20]
    2168: f85d83a1     	ldur	x1, [x29, #-0x28]
    216c: 91000500     	add	x0, x8, #0x1
    2170: 17ffffda     	b	0x20d8 <.text+0x10d8>
    2174: 91001673     	add	x19, x19, #0x5
    2178: 14000004     	b	0x2188 <.text+0x1188>
    217c: 91001673     	add	x19, x19, #0x5
    2180: d100a3a0     	sub	x0, x29, #0x28
    2184: 940005ca     	bl	0x38ac <.text+0x28ac>
    2188: d0000049     	adrp	x9, 0xc000
    218c: f85f83a8     	ldur	x8, [x29, #-0x8]
    2190: f9400129     	ldr	x9, [x9]
    2194: eb08013f     	cmp	x9, x8
    2198: 54000121     	b.ne	0x21bc <.text+0x11bc>
    219c: aa1303e0     	mov	x0, x19
    21a0: f94053f9     	ldr	x25, [sp, #0xa0]
    21a4: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
    21a8: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
    21ac: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
    21b0: a9497bfd     	ldp	x29, x30, [sp, #0x90]
    21b4: 910383ff     	add	sp, sp, #0xe0
    21b8: d65f03c0     	ret
    21bc: 97fffbc5     	bl	0x10d0 <.text+0xd0>
    21c0: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    21c4: 39622508     	ldrb	w8, [x8, #0x889]
    21c8: 34000048     	cbz	w8, 0x21d0 <.text+0x11d0>
    21cc: 17fffefc     	b	0x1dbc <.text+0xdbc>
    21d0: 17ffff6c     	b	0x1f80 <.text+0xf80>
    21d4: aa1f03e2     	mov	x2, xzr
    21d8: 17fffef4     	b	0x1da8 <.text+0xda8>
    21dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    21e0: f9000bf3     	str	x19, [sp, #0x10]
    21e4: 910003fd     	mov	x29, sp
    21e8: 910063a2     	add	x2, x29, #0x18
    21ec: f9000fbf     	str	xzr, [x29, #0x18]
    21f0: 97fffff4     	bl	0x21c0 <.text+0x11c0>
    21f4: b5000140     	cbnz	x0, 0x221c <.text+0x121c>
    21f8: f9400fa8     	ldr	x8, [x29, #0x18]
    21fc: b4000108     	cbz	x8, 0x221c <.text+0x121c>
    2200: 39400113     	ldrb	w19, [x8]
    2204: 910063a0     	add	x0, x29, #0x18
    2208: 940005a9     	bl	0x38ac <.text+0x28ac>
    220c: d28001c8     	mov	x8, #0xe                // =14
    2210: 7100027f     	cmp	w19, #0x0
    2214: f2f00008     	movk	x8, #0x8000, lsl #48
    2218: 9a9f0100     	csel	x0, x8, xzr, eq
    221c: f9400bf3     	ldr	x19, [sp, #0x10]
    2220: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2224: d65f03c0     	ret
    2228: d10143ff     	sub	sp, sp, #0x50
    222c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2230: a90357f6     	stp	x22, x21, [sp, #0x30]
    2234: a9044ff4     	stp	x20, x19, [sp, #0x40]
    2238: 910083fd     	add	x29, sp, #0x20
    223c: aa0203f3     	mov	x19, x2
    2240: aa0103f5     	mov	x21, x1
    2244: d10023a2     	sub	x2, x29, #0x8
    2248: 2a0303e1     	mov	w1, w3
    224c: aa0003f6     	mov	x22, x0
    2250: 97ffffdc     	bl	0x21c0 <.text+0x11c0>
    2254: b7f80320     	tbnz	x0, #0x3f, 0x22b8 <.text+0x12b8>
    2258: aa1603e0     	mov	x0, x22
    225c: aa1503e1     	mov	x1, x21
    2260: 97fffcfc     	bl	0x1650 <.text+0x650>
    2264: 910023e4     	add	x4, sp, #0x8
    2268: 910003e5     	mov	x5, sp
    226c: aa1303e1     	mov	x1, x19
    2270: f9000be0     	str	x0, [sp, #0x10]
    2274: 97fffd25     	bl	0x1708 <.text+0x708>
    2278: f94007e8     	ldr	x8, [sp, #0x8]
    227c: aa0003f3     	mov	x19, x0
    2280: f85f83a1     	ldur	x1, [x29, #-0x8]
    2284: aa0803e0     	mov	x0, x8
    2288: 94001b74     	bl	0x9058 <.text+0x8058>
    228c: 72001c1f     	tst	w0, #0xff
    2290: d10023a0     	sub	x0, x29, #0x8
    2294: d2800368     	mov	x8, #0x1b               // =27
    2298: f2f00008     	movk	x8, #0x8000, lsl #48
    229c: 9a930114     	csel	x20, x8, x19, eq
    22a0: 94000583     	bl	0x38ac <.text+0x28ac>
    22a4: 910043e0     	add	x0, sp, #0x10
    22a8: 94000581     	bl	0x38ac <.text+0x28ac>
    22ac: 910023e0     	add	x0, sp, #0x8
    22b0: 9400057f     	bl	0x38ac <.text+0x28ac>
    22b4: 14000002     	b	0x22bc <.text+0x12bc>
    22b8: aa0003f4     	mov	x20, x0
    22bc: aa1403e0     	mov	x0, x20
    22c0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    22c4: a94357f6     	ldp	x22, x21, [sp, #0x30]
    22c8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    22cc: 910143ff     	add	sp, sp, #0x50
    22d0: d65f03c0     	ret
    22d4: d10103ff     	sub	sp, sp, #0x40
    22d8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    22dc: f9001bf3     	str	x19, [sp, #0x30]
    22e0: 910083fd     	add	x29, sp, #0x20
    22e4: 52800408     	mov	w8, #0x20               // =32
    22e8: a90087e0     	stp	x0, x1, [sp, #0x8]
    22ec: 390063e2     	strb	w2, [sp, #0x18]
    22f0: f90003e8     	str	x8, [sp]
    22f4: 9400084f     	bl	0x4430 <.text+0x3430>
    22f8: d0000040     	adrp	x0, 0xc000
    22fc: 910003e1     	mov	x1, sp
    2300: 9103a000     	add	x0, x0, #0xe8
    2304: 940009e8     	bl	0x4aa4 <.text+0x3aa4>
    2308: aa0003f3     	mov	x19, x0
    230c: 94000849     	bl	0x4430 <.text+0x3430>
    2310: aa1303e0     	mov	x0, x19
    2314: f9401bf3     	ldr	x19, [sp, #0x30]
    2318: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    231c: 910103ff     	add	sp, sp, #0x40
    2320: d65f03c0     	ret
    2324: d10183ff     	sub	sp, sp, #0x60
    2328: a9027bfd     	stp	x29, x30, [sp, #0x20]
    232c: a9035ff8     	stp	x24, x23, [sp, #0x30]
    2330: a90457f6     	stp	x22, x21, [sp, #0x40]
    2334: a9054ff4     	stp	x20, x19, [sp, #0x50]
    2338: 910083fd     	add	x29, sp, #0x20
    233c: d2800133     	mov	x19, #0x9               // =9
    2340: aa0003f8     	mov	x24, x0
    2344: f2f00013     	movk	x19, #0x8000, lsl #48
    2348: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    234c: d1001e60     	sub	x0, x19, #0x7
    2350: b40005a1     	cbz	x1, 0x2404 <.text+0x1404>
    2354: b4000582     	cbz	x2, 0x2404 <.text+0x1404>
    2358: aa1803e0     	mov	x0, x24
    235c: 2a0303f4     	mov	w20, w3
    2360: aa0103f5     	mov	x21, x1
    2364: 97fffcbb     	bl	0x1650 <.text+0x650>
    2368: f81f83a0     	stur	x0, [x29, #-0x8]
    236c: b40004a0     	cbz	x0, 0x2400 <.text+0x1400>
    2370: 910043e4     	add	x4, sp, #0x10
    2374: 910023e5     	add	x5, sp, #0x8
    2378: 52801001     	mov	w1, #0x80               // =128
    237c: aa0003f6     	mov	x22, x0
    2380: 97fffce2     	bl	0x1708 <.text+0x708>
    2384: f9400bf7     	ldr	x23, [sp, #0x10]
    2388: b4000277     	cbz	x23, 0x23d4 <.text+0x13d4>
    238c: aa1803e0     	mov	x0, x24
    2390: 2a1403e1     	mov	w1, w20
    2394: aa1703e2     	mov	x2, x23
    2398: 97fffe84     	bl	0x1da8 <.text+0xda8>
    239c: aa0003f3     	mov	x19, x0
    23a0: b7f800c0     	tbnz	x0, #0x3f, 0x23b8 <.text+0x13b8>
    23a4: aa1603e0     	mov	x0, x22
    23a8: 52801001     	mov	w1, #0x80               // =128
    23ac: 2a1403e2     	mov	w2, w20
    23b0: 52800023     	mov	w3, #0x1                // =1
    23b4: 94001a32     	bl	0x8c7c <.text+0x7c7c>
    23b8: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    23bc: 39621d08     	ldrb	w8, [x8, #0x887]
    23c0: 340000a8     	cbz	w8, 0x23d4 <.text+0x13d4>
    23c4: aa1503e0     	mov	x0, x21
    23c8: 52801001     	mov	w1, #0x80               // =128
    23cc: 2a1403e2     	mov	w2, w20
    23d0: 97ffffc1     	bl	0x22d4 <.text+0x12d4>
    23d4: aa1603e0     	mov	x0, x22
    23d8: 52801001     	mov	w1, #0x80               // =128
    23dc: 940002d8     	bl	0x2f3c <.text+0x1f3c>
    23e0: d10023a0     	sub	x0, x29, #0x8
    23e4: 94000532     	bl	0x38ac <.text+0x28ac>
    23e8: b40000d7     	cbz	x23, 0x2400 <.text+0x1400>
    23ec: f94007e1     	ldr	x1, [sp, #0x8]
    23f0: aa1703e0     	mov	x0, x23
    23f4: 940002d2     	bl	0x2f3c <.text+0x1f3c>
    23f8: 910043e0     	add	x0, sp, #0x10
    23fc: 9400052c     	bl	0x38ac <.text+0x28ac>
    2400: aa1303e0     	mov	x0, x19
    2404: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2408: a94457f6     	ldp	x22, x21, [sp, #0x40]
    240c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    2410: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    2414: 910183ff     	add	sp, sp, #0x60
    2418: d65f03c0     	ret
    241c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    2420: a9014ff4     	stp	x20, x19, [sp, #0x10]
    2424: 910003fd     	mov	x29, sp
    2428: aa0003e8     	mov	x8, x0
    242c: aa0103f3     	mov	x19, x1
    2430: 528f2e6a     	mov	w10, #0x7973            // =31091
    2434: 72aeee0a     	movk	w10, #0x7770, lsl #16
    2438: f85f8d09     	ldr	x9, [x8, #-0x8]!
    243c: eb0a013f     	cmp	x9, x10
    2440: 54000061     	b.ne	0x244c <.text+0x144c>
    2444: aa0803f4     	mov	x20, x8
    2448: 14000008     	b	0x2468 <.text+0x1468>
    244c: aa0003f4     	mov	x20, x0
    2450: 90000040     	adrp	x0, 0xa000 <.text+0x9000>
    2454: 90000042     	adrp	x2, 0xa000 <.text+0x9000>
    2458: 91232400     	add	x0, x0, #0x8c9
    245c: 5280bba1     	mov	w1, #0x5dd              // =1501
    2460: 91236842     	add	x2, x2, #0x8da
    2464: 94000407     	bl	0x3480 <.text+0x2480>
    2468: f9402681     	ldr	x1, [x20, #0x48]
    246c: aa1303e0     	mov	x0, x19
    2470: 52800302     	mov	w2, #0x18               // =24
    2474: 940002b5     	bl	0x2f48 <.text+0x1f48>
    2478: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    247c: aa1f03e0     	mov	x0, xzr
    2480: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    2484: d65f03c0     	ret
    2488: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    248c: f9000bf5     	str	x21, [sp, #0x10]
    2490: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2494: 910003fd     	mov	x29, sp
    2498: aa0003e8     	mov	x8, x0
    249c: 2a0203f3     	mov	w19, w2
    24a0: aa0103f4     	mov	x20, x1
    24a4: 528f2e6a     	mov	w10, #0x7973            // =31091
    24a8: 72aeee0a     	movk	w10, #0x7770, lsl #16
    24ac: f85f8d09     	ldr	x9, [x8, #-0x8]!
    24b0: eb0a013f     	cmp	x9, x10
    24b4: 54000081     	b.ne	0x24c4 <.text+0x14c4>
    24b8: aa0803f5     	mov	x21, x8
    24bc: 35000153     	cbnz	w19, 0x24e4 <.text+0x14e4>
    24c0: 1400002c     	b	0x2570 <.text+0x1570>
    24c4: aa0003f5     	mov	x21, x0
    24c8: 90000040     	adrp	x0, 0xa000 <.text+0x9000>
    24cc: 90000042     	adrp	x2, 0xa000 <.text+0x9000>
    24d0: 91232400     	add	x0, x0, #0x8c9
    24d4: 5280bf61     	mov	w1, #0x5fb              // =1531
    24d8: 91236842     	add	x2, x2, #0x8da
    24dc: 940003e9     	bl	0x3480 <.text+0x2480>
    24e0: 34000493     	cbz	w19, 0x2570 <.text+0x1570>
    24e4: f94026a9     	ldr	x9, [x21, #0x48]
    24e8: aa1f03e8     	mov	x8, xzr
    24ec: 5280002a     	mov	w10, #0x1               // =1
    24f0: 6a13015f     	tst	w10, w19
    24f4: 540000e1     	b.ne	0x2510 <.text+0x1510>
    24f8: 2a0a03eb     	mov	w11, w10
    24fc: 531f796a     	lsl	w10, w11, #1
    2500: 91000508     	add	x8, x8, #0x1
    2504: 6a0b067f     	tst	w19, w11, lsl #1
    2508: 2a0a03eb     	mov	w11, w10
    250c: 54ffff80     	b.eq	0x24fc <.text+0x14fc>
    2510: f100091f     	cmp	x8, #0x2
    2514: 54000120     	b.eq	0x2538 <.text+0x1538>
    2518: f100051f     	cmp	x8, #0x1
    251c: 54000180     	b.eq	0x254c <.text+0x154c>
    2520: b5000328     	cbnz	x8, 0x2584 <.text+0x1584>
    2524: f940068d     	ldr	x13, [x20, #0x8]
    2528: 5280002b     	mov	w11, #0x1               // =1
    252c: 1280002c     	mov	w12, #-0x2              // =-2
    2530: f900052d     	str	x13, [x9, #0x8]
    2534: 1400000a     	b	0x255c <.text+0x155c>
    2538: 3940528d     	ldrb	w13, [x20, #0x14]
    253c: 5280008b     	mov	w11, #0x4               // =4
    2540: 1280008c     	mov	w12, #-0x5              // =-5
    2544: 3900512d     	strb	w13, [x9, #0x14]
    2548: 14000005     	b	0x255c <.text+0x155c>
    254c: b940128d     	ldr	w13, [x20, #0x10]
    2550: 5280004b     	mov	w11, #0x2               // =2
    2554: 1280004c     	mov	w12, #-0x3              // =-3
    2558: b900112d     	str	w13, [x9, #0x10]
    255c: b940012d     	ldr	w13, [x9]
    2560: 6a0c0273     	ands	w19, w19, w12
    2564: 2a0b01ab     	orr	w11, w13, w11
    2568: b900012b     	str	w11, [x9]
    256c: 54fffc21     	b.ne	0x24f0 <.text+0x14f0>
    2570: aa1f03e0     	mov	x0, xzr
    2574: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2578: f9400bf5     	ldr	x21, [sp, #0x10]
    257c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2580: d65f03c0     	ret
    2584: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    2588: 17fffffb     	b	0x2574 <.text+0x1574>
    258c: d10083ff     	sub	sp, sp, #0x20
    2590: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2594: 910043fd     	add	x29, sp, #0x10
    2598: f0000048     	adrp	x8, 0xd000
    259c: d0000040     	adrp	x0, 0xc000
    25a0: 91082000     	add	x0, x0, #0x208
    25a4: 910023e2     	add	x2, sp, #0x8
    25a8: aa1f03e1     	mov	x1, xzr
    25ac: f9401108     	ldr	x8, [x8, #0x20]
    25b0: f940a108     	ldr	x8, [x8, #0x140]
    25b4: d63f0100     	blr	x8
    25b8: b7f80220     	tbnz	x0, #0x3f, 0x25fc <.text+0x15fc>
    25bc: f94007e8     	ldr	x8, [sp, #0x8]
    25c0: 528f2e6a     	mov	w10, #0x7973            // =31091
    25c4: 72aeee0a     	movk	w10, #0x7770, lsl #16
    25c8: f85f8d09     	ldr	x9, [x8, #-0x8]!
    25cc: eb0a013f     	cmp	x9, x10
    25d0: 54000100     	b.eq	0x25f0 <.text+0x15f0>
    25d4: 90000040     	adrp	x0, 0xa000 <.text+0x9000>
    25d8: 90000042     	adrp	x2, 0xa000 <.text+0x9000>
    25dc: 91232400     	add	x0, x0, #0x8c9
    25e0: 5280cc61     	mov	w1, #0x663              // =1635
    25e4: 91236842     	add	x2, x2, #0x8da
    25e8: 940003a6     	bl	0x3480 <.text+0x2480>
    25ec: f94007e8     	ldr	x8, [sp, #0x8]
    25f0: f9402508     	ldr	x8, [x8, #0x48]
    25f4: 52800029     	mov	w9, #0x1                // =1
    25f8: 39005109     	strb	w9, [x8, #0x14]
    25fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2600: 910083ff     	add	sp, sp, #0x20
    2604: d65f03c0     	ret
    2608: d10083ff     	sub	sp, sp, #0x20
    260c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2610: 910043fd     	add	x29, sp, #0x10
    2614: f0000048     	adrp	x8, 0xd000
    2618: d0000040     	adrp	x0, 0xc000
    261c: 91082000     	add	x0, x0, #0x208
    2620: 910023e2     	add	x2, sp, #0x8
    2624: aa1f03e1     	mov	x1, xzr
    2628: f9401108     	ldr	x8, [x8, #0x20]
    262c: f940a108     	ldr	x8, [x8, #0x140]
    2630: d63f0100     	blr	x8
    2634: b7f80100     	tbnz	x0, #0x3f, 0x2654 <.text+0x1654>
    2638: f94007e0     	ldr	x0, [sp, #0x8]
    263c: 2a1f03e1     	mov	w1, wzr
    2640: f9400008     	ldr	x8, [x0]
    2644: d63f0100     	blr	x8
    2648: f100001f     	cmp	x0, #0x0
    264c: 1a9f17e0     	cset	w0, eq
    2650: 14000007     	b	0x266c <.text+0x166c>
    2654: 90000041     	adrp	x1, 0xa000 <.text+0x9000>
    2658: aa0003e2     	mov	x2, x0
    265c: 911ed021     	add	x1, x1, #0x7b4
    2660: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    2664: 9400034f     	bl	0x33a0 <.text+0x23a0>
    2668: 2a1f03e0     	mov	w0, wzr
    266c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2670: 910083ff     	add	sp, sp, #0x20
    2674: d65f03c0     	ret
    2678: d10243ff     	sub	sp, sp, #0x90
    267c: a9047bfd     	stp	x29, x30, [sp, #0x40]
    2680: a90567fa     	stp	x26, x25, [sp, #0x50]
    2684: a9065ff8     	stp	x24, x23, [sp, #0x60]
    2688: a90757f6     	stp	x22, x21, [sp, #0x70]
    268c: a9084ff4     	stp	x20, x19, [sp, #0x80]
    2690: 910103fd     	add	x29, sp, #0x40
    2694: f0000053     	adrp	x19, 0xd000
    2698: d0000040     	adrp	x0, 0xc000
    269c: 9108a000     	add	x0, x0, #0x228
    26a0: d10023a2     	sub	x2, x29, #0x8
    26a4: aa1f03e1     	mov	x1, xzr
    26a8: f9401268     	ldr	x8, [x19, #0x20]
    26ac: f940a108     	ldr	x8, [x8, #0x140]
    26b0: d63f0100     	blr	x8
    26b4: b7f80180     	tbnz	x0, #0x3f, 0x26e4 <.text+0x16e4>
    26b8: f9401268     	ldr	x8, [x19, #0x20]
    26bc: d0000040     	adrp	x0, 0xc000
    26c0: 91082000     	add	x0, x0, #0x208
    26c4: d10063a2     	sub	x2, x29, #0x18
    26c8: aa1f03e1     	mov	x1, xzr
    26cc: f940a108     	ldr	x8, [x8, #0x140]
    26d0: d63f0100     	blr	x8
    26d4: b7f80080     	tbnz	x0, #0x3f, 0x26e4 <.text+0x16e4>
    26d8: 97ffffcc     	bl	0x2608 <.text+0x1608>
    26dc: 72001c1f     	tst	w0, #0xff
    26e0: 54000100     	b.eq	0x2700 <.text+0x1700>
    26e4: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    26e8: a94757f6     	ldp	x22, x21, [sp, #0x70]
    26ec: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    26f0: a94567fa     	ldp	x26, x25, [sp, #0x50]
    26f4: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    26f8: 910243ff     	add	sp, sp, #0x90
    26fc: d65f03c0     	ret
    2700: d0000059     	adrp	x25, 0xc000
    2704: 52800041     	mov	w1, #0x2                // =2
    2708: aa1f03e2     	mov	x2, xzr
    270c: f947ff20     	ldr	x0, [x25, #0xff8]
    2710: 94001361     	bl	0x7494 <.text+0x6494>
    2714: f85f83a8     	ldur	x8, [x29, #-0x8]
    2718: aa0003e5     	mov	x5, x0
    271c: 52800502     	mov	w2, #0x28               // =40
    2720: d10043a4     	sub	x4, x29, #0x10
    2724: 52800040     	mov	w0, #0x2                // =2
    2728: 2a1f03e1     	mov	w1, wzr
    272c: aa1f03e3     	mov	x3, xzr
    2730: f9400108     	ldr	x8, [x8]
    2734: d63f0100     	blr	x8
    2738: f85e83a0     	ldur	x0, [x29, #-0x18]
    273c: 910043e1     	add	x1, sp, #0x10
    2740: f9401808     	ldr	x8, [x0, #0x30]
    2744: d63f0100     	blr	x8
    2748: f9400fe8     	ldr	x8, [sp, #0x18]
    274c: d37ff908     	lsl	x8, x8, #1
    2750: 91000900     	add	x0, x8, #0x2
    2754: 940006af     	bl	0x4210 <.text+0x3210>
    2758: f90007e0     	str	x0, [sp, #0x8]
    275c: b4fffc40     	cbz	x0, 0x26e4 <.text+0x16e4>
    2760: f9400fe8     	ldr	x8, [sp, #0x18]
    2764: aa0003f3     	mov	x19, x0
    2768: d37ff908     	lsl	x8, x8, #1
    276c: 91000900     	add	x0, x8, #0x2
    2770: 940006a8     	bl	0x4210 <.text+0x3210>
    2774: f90003e0     	str	x0, [sp]
    2778: b4000d20     	cbz	x0, 0x291c <.text+0x191c>
    277c: aa0003f4     	mov	x20, x0
    2780: f947ff20     	ldr	x0, [x25, #0xff8]
    2784: 52800061     	mov	w1, #0x3                // =3
    2788: aa1f03e2     	mov	x2, xzr
    278c: 94001342     	bl	0x7494 <.text+0x6494>
    2790: f85f83a8     	ldur	x8, [x29, #-0x8]
    2794: aa0003e5     	mov	x5, x0
    2798: b9401be9     	ldr	w9, [sp, #0x18]
    279c: d10043a4     	sub	x4, x29, #0x10
    27a0: 2a1f03e0     	mov	w0, wzr
    27a4: 2a1f03e1     	mov	w1, wzr
    27a8: aa1303e3     	mov	x3, x19
    27ac: f9400508     	ldr	x8, [x8, #0x8]
    27b0: 11000522     	add	w2, w9, #0x1
    27b4: d63f0100     	blr	x8
    27b8: f947ff20     	ldr	x0, [x25, #0xff8]
    27bc: 52800081     	mov	w1, #0x4                // =4
    27c0: aa1f03e2     	mov	x2, xzr
    27c4: 94001334     	bl	0x7494 <.text+0x6494>
    27c8: f85f83a8     	ldur	x8, [x29, #-0x8]
    27cc: aa0003f5     	mov	x21, x0
    27d0: b9401be9     	ldr	w9, [sp, #0x18]
    27d4: d10043a4     	sub	x4, x29, #0x10
    27d8: 2a1f03e0     	mov	w0, wzr
    27dc: 2a1f03e1     	mov	w1, wzr
    27e0: aa1403e3     	mov	x3, x20
    27e4: aa1503e5     	mov	x5, x21
    27e8: f9400508     	ldr	x8, [x8, #0x8]
    27ec: 11000522     	add	w2, w9, #0x1
    27f0: d63f0100     	blr	x8
    27f4: aa1303e0     	mov	x0, x19
    27f8: aa1403e1     	mov	x1, x20
    27fc: 940003de     	bl	0x3774 <.text+0x2774>
    2800: b4000660     	cbz	x0, 0x28cc <.text+0x18cc>
    2804: 5280005a     	mov	w26, #0x2               // =2
    2808: 528000b6     	mov	w22, #0x5               // =5
    280c: 52800517     	mov	w23, #0x28              // =40
    2810: f947ff20     	ldr	x0, [x25, #0xff8]
    2814: 2a1603e1     	mov	w1, w22
    2818: aa1f03e2     	mov	x2, xzr
    281c: 9400131e     	bl	0x7494 <.text+0x6494>
    2820: f85f83a8     	ldur	x8, [x29, #-0x8]
    2824: aa0003e5     	mov	x5, x0
    2828: d10043a4     	sub	x4, x29, #0x10
    282c: 52800040     	mov	w0, #0x2                // =2
    2830: 2a1f03e1     	mov	w1, wzr
    2834: 2a1703e2     	mov	w2, w23
    2838: aa1f03e3     	mov	x3, xzr
    283c: f9400108     	ldr	x8, [x8]
    2840: d63f0100     	blr	x8
    2844: 72001f5f     	tst	w26, #0xff
    2848: 54000241     	b.ne	0x2890 <.text+0x1890>
    284c: f947ff20     	ldr	x0, [x25, #0xff8]
    2850: 528000c1     	mov	w1, #0x6                // =6
    2854: aa1f03e2     	mov	x2, xzr
    2858: 9400130f     	bl	0x7494 <.text+0x6494>
    285c: f947ff28     	ldr	x8, [x25, #0xff8]
    2860: aa0003f8     	mov	x24, x0
    2864: 528000e1     	mov	w1, #0x7                // =7
    2868: aa1f03e2     	mov	x2, xzr
    286c: aa0803e0     	mov	x0, x8
    2870: 94001309     	bl	0x7494 <.text+0x6494>
    2874: f85f83a8     	ldur	x8, [x29, #-0x8]
    2878: aa0003e3     	mov	x3, x0
    287c: 2a1703e0     	mov	w0, w23
    2880: 52800041     	mov	w1, #0x2                // =2
    2884: aa1803e2     	mov	x2, x24
    2888: f9400d08     	ldr	x8, [x8, #0x18]
    288c: d63f0100     	blr	x8
    2890: f85f83a8     	ldur	x8, [x29, #-0x8]
    2894: d10043a4     	sub	x4, x29, #0x10
    2898: b9401be9     	ldr	w9, [sp, #0x18]
    289c: 2a1f03e0     	mov	w0, wzr
    28a0: 2a1f03e1     	mov	w1, wzr
    28a4: aa1403e3     	mov	x3, x20
    28a8: aa1503e5     	mov	x5, x21
    28ac: f9400508     	ldr	x8, [x8, #0x8]
    28b0: 11000522     	add	w2, w9, #0x1
    28b4: d63f0100     	blr	x8
    28b8: aa1303e0     	mov	x0, x19
    28bc: aa1403e1     	mov	x1, x20
    28c0: 940003ad     	bl	0x3774 <.text+0x2774>
    28c4: 5100075a     	sub	w26, w26, #0x1
    28c8: b5fffa40     	cbnz	x0, 0x2810 <.text+0x1810>
    28cc: f85e83a0     	ldur	x0, [x29, #-0x18]
    28d0: aa1403e1     	mov	x1, x20
    28d4: f9400fe8     	ldr	x8, [sp, #0x18]
    28d8: 2a1f03e3     	mov	w3, wzr
    28dc: f9400409     	ldr	x9, [x0, #0x8]
    28e0: 91000502     	add	x2, x8, #0x1
    28e4: d63f0120     	blr	x9
    28e8: 910023e0     	add	x0, sp, #0x8
    28ec: 940003f0     	bl	0x38ac <.text+0x28ac>
    28f0: 910003e0     	mov	x0, sp
    28f4: 940003ee     	bl	0x38ac <.text+0x28ac>
    28f8: f0000048     	adrp	x8, 0xd000
    28fc: 2a1f03e0     	mov	w0, wzr
    2900: aa1f03e1     	mov	x1, xzr
    2904: aa1f03e2     	mov	x2, xzr
    2908: aa1f03e3     	mov	x3, xzr
    290c: f9400508     	ldr	x8, [x8, #0x8]
    2910: f9403508     	ldr	x8, [x8, #0x68]
    2914: d63f0100     	blr	x8
    2918: 17ffff73     	b	0x26e4 <.text+0x16e4>
    291c: 910023e0     	add	x0, sp, #0x8
    2920: 940003e3     	bl	0x38ac <.text+0x28ac>
    2924: 17ffff70     	b	0x26e4 <.text+0x16e4>
    2928: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    292c: 910003fd     	mov	x29, sp
    2930: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2934: 39621908     	ldrb	w8, [x8, #0x886]
    2938: 340000a8     	cbz	w8, 0x294c <.text+0x194c>
    293c: aa0103e0     	mov	x0, x1
    2940: 94000911     	bl	0x4d84 <.text+0x3d84>
    2944: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2948: 17ffff4c     	b	0x2678 <.text+0x1678>
    294c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2950: d65f03c0     	ret
    2954: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    2958: 910003fd     	mov	x29, sp
    295c: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2960: 90000049     	adrp	x9, 0xa000 <.text+0x9000>
    2964: 9000004a     	adrp	x10, 0xa000 <.text+0x9000>
    2968: 39624508     	ldrb	w8, [x8, #0x891]
    296c: 39624129     	ldrb	w9, [x9, #0x890]
    2970: 3962254a     	ldrb	w10, [x10, #0x889]
    2974: 7100011f     	cmp	w8, #0x0
    2978: 7a401920     	ccmp	w9, #0x0, #0x0, ne
    297c: 7a400940     	ccmp	w10, #0x0, #0x0, eq
    2980: 54000060     	b.eq	0x298c <.text+0x198c>
    2984: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2988: d65f03c0     	ret
    298c: 52800020     	mov	w0, #0x1                // =1
    2990: 94000014     	bl	0x29e0 <.text+0x19e0>
    2994: 2a1f03e0     	mov	w0, wzr
    2998: 94000012     	bl	0x29e0 <.text+0x19e0>
    299c: 90000040     	adrp	x0, 0xa000 <.text+0x9000>
    29a0: d0000041     	adrp	x1, 0xc000
    29a4: 9128d000     	add	x0, x0, #0xa34
    29a8: 91012021     	add	x1, x1, #0x48
    29ac: 528000e2     	mov	w2, #0x7                // =7
    29b0: aa1f03e3     	mov	x3, xzr
    29b4: aa1f03e4     	mov	x4, xzr
    29b8: 94001014     	bl	0x6a08 <.text+0x5a08>
    29bc: 90000040     	adrp	x0, 0xa000 <.text+0x9000>
    29c0: d0000041     	adrp	x1, 0xc000
    29c4: 91293800     	add	x0, x0, #0xa4e
    29c8: 9100e021     	add	x1, x1, #0x38
    29cc: 528000e2     	mov	w2, #0x7                // =7
    29d0: aa1f03e3     	mov	x3, xzr
    29d4: aa1f03e4     	mov	x4, xzr
    29d8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    29dc: 1400100b     	b	0x6a08 <.text+0x5a08>
    29e0: d10383ff     	sub	sp, sp, #0xe0
    29e4: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
    29e8: f9005bf7     	str	x23, [sp, #0xb0]
    29ec: a90c57f6     	stp	x22, x21, [sp, #0xc0]
    29f0: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
    29f4: 910283fd     	add	x29, sp, #0xa0
    29f8: d0000048     	adrp	x8, 0xc000
    29fc: 72001c1f     	tst	w0, #0xff
    2a00: 52808040     	mov	w0, #0x402              // =1026
    2a04: 90000049     	adrp	x9, 0xa000 <.text+0x9000>
    2a08: 9000004a     	adrp	x10, 0xa000 <.text+0x9000>
    2a0c: 91225129     	add	x9, x9, #0x894
    2a10: f9400108     	ldr	x8, [x8]
    2a14: 9122614a     	add	x10, x10, #0x898
    2a18: 9a8a0133     	csel	x19, x9, x10, eq
    2a1c: f81f83a8     	stur	x8, [x29, #-0x8]
    2a20: 9400064a     	bl	0x4348 <.text+0x3348>
    2a24: f90003e0     	str	x0, [sp]
    2a28: b4000560     	cbz	x0, 0x2ad4 <.text+0x1ad4>
    2a2c: b9400273     	ldr	w19, [x19]
    2a30: 52800194     	mov	w20, #0xc               // =12
    2a34: aa0003f5     	mov	x21, x0
    2a38: 72a80014     	movk	w20, #0x4000, lsl #16
    2a3c: 94001420     	bl	0x7abc <.text+0x6abc>
    2a40: b4000260     	cbz	x0, 0x2a8c <.text+0x1a8c>
    2a44: aa0003f7     	mov	x23, x0
    2a48: 52801121     	mov	w1, #0x89               // =137
    2a4c: 910023e0     	add	x0, sp, #0x8
    2a50: 910023f6     	add	x22, sp, #0x8
    2a54: 9400013a     	bl	0x2f3c <.text+0x1f3c>
    2a58: 51000e88     	sub	w8, w20, #0x3
    2a5c: 910126c0     	add	x0, x22, #0x49
    2a60: 91000ae1     	add	x1, x23, #0x2
    2a64: b9000be8     	str	w8, [sp, #0x8]
    2a68: 394006e8     	ldrb	w8, [x23, #0x1]
    2a6c: 394002e9     	ldrb	w9, [x23]
    2a70: 390143e8     	strb	w8, [sp, #0x50]
    2a74: 39013fe9     	strb	w9, [sp, #0x4f]
    2a78: 394006e8     	ldrb	w8, [x23, #0x1]
    2a7c: 394002e2     	ldrb	w2, [x23]
    2a80: b3781d02     	bfi	x2, x8, #8, #8
    2a84: 94000131     	bl	0x2f48 <.text+0x1f48>
    2a88: 14000002     	b	0x2a90 <.text+0x1a90>
    2a8c: aa1f03f6     	mov	x22, xzr
    2a90: 2a1403e0     	mov	w0, w20
    2a94: 2a1303e1     	mov	w1, w19
    2a98: aa1603e2     	mov	x2, x22
    2a9c: 52800603     	mov	w3, #0x30               // =48
    2aa0: 2a1f03e4     	mov	w4, wzr
    2aa4: aa1503e5     	mov	x5, x21
    2aa8: 940010fc     	bl	0x6e98 <.text+0x5e98>
    2aac: d28001c8     	mov	x8, #0xe                // =14
    2ab0: f2f00008     	movk	x8, #0x8000, lsl #48
    2ab4: eb08001f     	cmp	x0, x8
    2ab8: 540000a0     	b.eq	0x2acc <.text+0x1acc>
    2abc: 2a1403e0     	mov	w0, w20
    2ac0: 2a1303e1     	mov	w1, w19
    2ac4: aa1603e2     	mov	x2, x22
    2ac8: 94001075     	bl	0x6c9c <.text+0x5c9c>
    2acc: 910003e0     	mov	x0, sp
    2ad0: 94000377     	bl	0x38ac <.text+0x28ac>
    2ad4: d0000049     	adrp	x9, 0xc000
    2ad8: f85f83a8     	ldur	x8, [x29, #-0x8]
    2adc: f9400129     	ldr	x9, [x9]
    2ae0: eb08013f     	cmp	x9, x8
    2ae4: 540000e1     	b.ne	0x2b00 <.text+0x1b00>
    2ae8: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
    2aec: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
    2af0: f9405bf7     	ldr	x23, [sp, #0xb0]
    2af4: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
    2af8: 910383ff     	add	sp, sp, #0xe0
    2afc: d65f03c0     	ret
    2b00: 97fff974     	bl	0x10d0 <.text+0xd0>
    2b04: d10183ff     	sub	sp, sp, #0x60
    2b08: a9027bfd     	stp	x29, x30, [sp, #0x20]
    2b0c: a9035ff8     	stp	x24, x23, [sp, #0x30]
    2b10: a90457f6     	stp	x22, x21, [sp, #0x40]
    2b14: a9054ff4     	stp	x20, x19, [sp, #0x50]
    2b18: 910083fd     	add	x29, sp, #0x20
    2b1c: aa0003f4     	mov	x20, x0
    2b20: d0000040     	adrp	x0, 0xc000
    2b24: 9102a000     	add	x0, x0, #0xa8
    2b28: d2800133     	mov	x19, #0x9               // =9
    2b2c: f2f00013     	movk	x19, #0x8000, lsl #48
    2b30: 940000e1     	bl	0x2eb4 <.text+0x1eb4>
    2b34: d0000048     	adrp	x8, 0xc000
    2b38: f907f100     	str	x0, [x8, #0xfe0]
    2b3c: d0000040     	adrp	x0, 0xc000
    2b40: 91016000     	add	x0, x0, #0x58
    2b44: 940000dc     	bl	0x2eb4 <.text+0x1eb4>
    2b48: d0000048     	adrp	x8, 0xc000
    2b4c: f907f500     	str	x0, [x8, #0xfe8]
    2b50: d0000040     	adrp	x0, 0xc000
    2b54: 9101a000     	add	x0, x0, #0x68
    2b58: 940000d7     	bl	0x2eb4 <.text+0x1eb4>
    2b5c: d0000048     	adrp	x8, 0xc000
    2b60: f907f900     	str	x0, [x8, #0xff0]
    2b64: 52800a00     	mov	w0, #0x50               // =80
    2b68: 940005f8     	bl	0x4348 <.text+0x3348>
    2b6c: f81f83a0     	stur	x0, [x29, #-0x8]
    2b70: b4000620     	cbz	x0, 0x2c34 <.text+0x1c34>
    2b74: 528f2e77     	mov	w23, #0x7973            // =31091
    2b78: f9000bff     	str	xzr, [sp, #0x10]
    2b7c: 72aeee17     	movk	w23, #0x7770, lsl #16
    2b80: 90000008     	adrp	x8, 0x2000 <.text+0x1000>
    2b84: 90000009     	adrp	x9, 0x2000 <.text+0x1000>
    2b88: 9000000a     	adrp	x10, 0x2000 <.text+0x1000>
    2b8c: 91077108     	add	x8, x8, #0x1dc
    2b90: 9108a129     	add	x9, x9, #0x228
    2b94: f9000017     	str	x23, [x0]
    2b98: 910c914a     	add	x10, x10, #0x324
    2b9c: f85f83b6     	ldur	x22, [x29, #-0x8]
    2ba0: 9000000b     	adrp	x11, 0x2000 <.text+0x1000>
    2ba4: f0ffffec     	adrp	x12, 0x1000 <.text>
    2ba8: 9107516b     	add	x11, x11, #0x1d4
    2bac: 911db18c     	add	x12, x12, #0x76c
    2bb0: aa1603f5     	mov	x21, x22
    2bb4: a90126ca     	stp	x10, x9, [x22, #0x10]
    2bb8: f0ffffe9     	adrp	x9, 0x1000 <.text>
    2bbc: a90232cb     	stp	x11, x12, [x22, #0x20]
    2bc0: 91205129     	add	x9, x9, #0x814
    2bc4: f8008ea8     	str	x8, [x21, #0x8]!
    2bc8: 90000008     	adrp	x8, 0x2000 <.text+0x1000>
    2bcc: 91107108     	add	x8, x8, #0x41c
    2bd0: a90322c9     	stp	x9, x8, [x22, #0x30]
    2bd4: 90000008     	adrp	x8, 0x2000 <.text+0x1000>
    2bd8: 91122108     	add	x8, x8, #0x488
    2bdc: f90022c8     	str	x8, [x22, #0x40]
    2be0: 94000511     	bl	0x4024 <.text+0x3024>
    2be4: f0000048     	adrp	x8, 0xd000
    2be8: f0000058     	adrp	x24, 0xd000
    2bec: 72001c1f     	tst	w0, #0xff
    2bf0: d0000041     	adrp	x1, 0xc000
    2bf4: 91082021     	add	x1, x1, #0x208
    2bf8: 910043e0     	add	x0, sp, #0x10
    2bfc: f9404108     	ldr	x8, [x8, #0x80]
    2c00: 2a1f03e2     	mov	w2, wzr
    2c04: f9401309     	ldr	x9, [x24, #0x20]
    2c08: aa1503e3     	mov	x3, x21
    2c0c: 9102a108     	add	x8, x8, #0xa8
    2c10: 91020129     	add	x9, x9, #0x80
    2c14: 9a880128     	csel	x8, x9, x8, eq
    2c18: f9400108     	ldr	x8, [x8]
    2c1c: d63f0100     	blr	x8
    2c20: b4000180     	cbz	x0, 0x2c50 <.text+0x1c50>
    2c24: aa0003f5     	mov	x21, x0
    2c28: d10023a0     	sub	x0, x29, #0x8
    2c2c: 94000320     	bl	0x38ac <.text+0x28ac>
    2c30: aa1503f3     	mov	x19, x21
    2c34: aa1303e0     	mov	x0, x19
    2c38: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2c3c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    2c40: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    2c44: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    2c48: 910183ff     	add	sp, sp, #0x60
    2c4c: d65f03c0     	ret
    2c50: 940004f5     	bl	0x4024 <.text+0x3024>
    2c54: 72001c1f     	tst	w0, #0xff
    2c58: 54000300     	b.eq	0x2cb8 <.text+0x1cb8>
    2c5c: f9401308     	ldr	x8, [x24, #0x20]
    2c60: d0000040     	adrp	x0, 0xc000
    2c64: 91082000     	add	x0, x0, #0x208
    2c68: 910023e2     	add	x2, sp, #0x8
    2c6c: aa1f03e1     	mov	x1, xzr
    2c70: f940a108     	ldr	x8, [x8, #0x140]
    2c74: d63f0100     	blr	x8
    2c78: b7f80ea0     	tbnz	x0, #0x3f, 0x2e4c <.text+0x1e4c>
    2c7c: f94007e8     	ldr	x8, [sp, #0x8]
    2c80: f85f8d09     	ldr	x9, [x8, #-0x8]!
    2c84: eb17013f     	cmp	x9, x23
    2c88: 54000100     	b.eq	0x2ca8 <.text+0x1ca8>
    2c8c: 90000040     	adrp	x0, 0xa000 <.text+0x9000>
    2c90: 90000042     	adrp	x2, 0xa000 <.text+0x9000>
    2c94: 91232400     	add	x0, x0, #0x8c9
    2c98: 5280fc61     	mov	w1, #0x7e3              // =2019
    2c9c: 91236842     	add	x2, x2, #0x8da
    2ca0: 940001f8     	bl	0x3480 <.text+0x2480>
    2ca4: f94007e8     	ldr	x8, [sp, #0x8]
    2ca8: f9402508     	ldr	x8, [x8, #0x48]
    2cac: aa1f03f3     	mov	x19, xzr
    2cb0: f90026c8     	str	x8, [x22, #0x48]
    2cb4: 17ffffe0     	b	0x2c34 <.text+0x1c34>
    2cb8: 52800300     	mov	w0, #0x18               // =24
    2cbc: 940005ab     	bl	0x4368 <.text+0x3368>
    2cc0: b4fffba0     	cbz	x0, 0x2c34 <.text+0x1c34>
    2cc4: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2cc8: 52801009     	mov	w9, #0x80               // =128
    2ccc: 5280002a     	mov	w10, #0x1               // =1
    2cd0: b900101f     	str	wzr, [x0, #0x10]
    2cd4: 39621108     	ldrb	w8, [x8, #0x884]
    2cd8: f9000409     	str	x9, [x0, #0x8]
    2cdc: 3900500a     	strb	w10, [x0, #0x14]
    2ce0: f90026c0     	str	x0, [x22, #0x48]
    2ce4: 34000228     	cbz	w8, 0x2d28 <.text+0x1d28>
    2ce8: d0000040     	adrp	x0, 0xc000
    2cec: 90000001     	adrp	x1, 0x2000 <.text+0x1000>
    2cf0: 90000044     	adrp	x4, 0xa000 <.text+0x9000>
    2cf4: 90000045     	adrp	x5, 0xa000 <.text+0x9000>
    2cf8: 90000046     	adrp	x6, 0xa000 <.text+0x9000>
    2cfc: 9102e000     	add	x0, x0, #0xb8
    2d00: 91163021     	add	x1, x1, #0x58c
    2d04: 9123bc84     	add	x4, x4, #0x8ef
    2d08: 912440a5     	add	x5, x5, #0x910
    2d0c: 9124b0c6     	add	x6, x6, #0x92c
    2d10: 910023e3     	add	x3, sp, #0x8
    2d14: 52800102     	mov	w2, #0x8                // =8
    2d18: 940006c9     	bl	0x483c <.text+0x383c>
    2d1c: aa0003f3     	mov	x19, x0
    2d20: 940005c4     	bl	0x4430 <.text+0x3430>
    2d24: b7f80993     	tbnz	x19, #0x3f, 0x2e54 <.text+0x1e54>
    2d28: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2d2c: 39621508     	ldrb	w8, [x8, #0x885]
    2d30: 340003c8     	cbz	w8, 0x2da8 <.text+0x1da8>
    2d34: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2d38: 39621908     	ldrb	w8, [x8, #0x886]
    2d3c: 34000368     	cbz	w8, 0x2da8 <.text+0x1da8>
    2d40: d0000040     	adrp	x0, 0xc000
    2d44: 90000001     	adrp	x1, 0x2000 <.text+0x1000>
    2d48: 90000044     	adrp	x4, 0xa000 <.text+0x9000>
    2d4c: 90000045     	adrp	x5, 0xa000 <.text+0x9000>
    2d50: 90000046     	adrp	x6, 0xa000 <.text+0x9000>
    2d54: 91032000     	add	x0, x0, #0xc8
    2d58: 9124a021     	add	x1, x1, #0x928
    2d5c: 91271484     	add	x4, x4, #0x9c5
    2d60: 912440a5     	add	x5, x5, #0x910
    2d64: 9124b0c6     	add	x6, x6, #0x92c
    2d68: 910023e3     	add	x3, sp, #0x8
    2d6c: 528000e2     	mov	w2, #0x7                // =7
    2d70: f90007ff     	str	xzr, [sp, #0x8]
    2d74: 940006b2     	bl	0x483c <.text+0x383c>
    2d78: aa0003f3     	mov	x19, x0
    2d7c: 940005ad     	bl	0x4430 <.text+0x3430>
    2d80: b7f80793     	tbnz	x19, #0x3f, 0x2e70 <.text+0x1e70>
    2d84: d0000040     	adrp	x0, 0xc000
    2d88: d0000042     	adrp	x2, 0xc000
    2d8c: 911ab000     	add	x0, x0, #0x6ac
    2d90: 910e6042     	add	x2, x2, #0x398
    2d94: aa1403e1     	mov	x1, x20
    2d98: aa1f03e3     	mov	x3, xzr
    2d9c: 94001145     	bl	0x72b0 <.text+0x62b0>
    2da0: d0000048     	adrp	x8, 0xc000
    2da4: f907fd00     	str	x0, [x8, #0xff8]
    2da8: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2dac: 39622108     	ldrb	w8, [x8, #0x888]
    2db0: 34000248     	cbz	w8, 0x2df8 <.text+0x1df8>
    2db4: d0000040     	adrp	x0, 0xc000
    2db8: 90000001     	adrp	x1, 0x2000 <.text+0x1000>
    2dbc: 90000044     	adrp	x4, 0xa000 <.text+0x9000>
    2dc0: 90000045     	adrp	x5, 0xa000 <.text+0x9000>
    2dc4: 90000046     	adrp	x6, 0xa000 <.text+0x9000>
    2dc8: 9103e000     	add	x0, x0, #0xf8
    2dcc: 91255021     	add	x1, x1, #0x954
    2dd0: 91279884     	add	x4, x4, #0x9e6
    2dd4: 912440a5     	add	x5, x5, #0x910
    2dd8: 9124b0c6     	add	x6, x6, #0x92c
    2ddc: 910023e3     	add	x3, sp, #0x8
    2de0: 528000e2     	mov	w2, #0x7                // =7
    2de4: f90007ff     	str	xzr, [sp, #0x8]
    2de8: 94000695     	bl	0x483c <.text+0x383c>
    2dec: aa0003f3     	mov	x19, x0
    2df0: 94000590     	bl	0x4430 <.text+0x3430>
    2df4: b7f804d3     	tbnz	x19, #0x3f, 0x2e8c <.text+0x1e8c>
    2df8: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2dfc: 39622508     	ldrb	w8, [x8, #0x889]
    2e00: 35000228     	cbnz	w8, 0x2e44 <.text+0x1e44>
    2e04: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2e08: 39624108     	ldrb	w8, [x8, #0x890]
    2e0c: 350000c8     	cbnz	w8, 0x2e24 <.text+0x1e24>
    2e10: 90000040     	adrp	x0, 0xa000 <.text+0x9000>
    2e14: d0000041     	adrp	x1, 0xc000
    2e18: 91293800     	add	x0, x0, #0xa4e
    2e1c: 9100e021     	add	x1, x1, #0x38
    2e20: 94000f0f     	bl	0x6a5c <.text+0x5a5c>
    2e24: 90000048     	adrp	x8, 0xa000 <.text+0x9000>
    2e28: 39622908     	ldrb	w8, [x8, #0x88a]
    2e2c: 340000c8     	cbz	w8, 0x2e44 <.text+0x1e44>
    2e30: 90000040     	adrp	x0, 0xa000 <.text+0x9000>
    2e34: d0000041     	adrp	x1, 0xc000
    2e38: 9128d000     	add	x0, x0, #0xa34
    2e3c: 91012021     	add	x1, x1, #0x48
    2e40: 94000f07     	bl	0x6a5c <.text+0x5a5c>
    2e44: aa1f03f3     	mov	x19, xzr
    2e48: 17ffff7b     	b	0x2c34 <.text+0x1c34>
    2e4c: aa0003f3     	mov	x19, x0
    2e50: 17ffff79     	b	0x2c34 <.text+0x1c34>
    2e54: 72001c1f     	tst	w0, #0xff
    2e58: 54ffeee0     	b.eq	0x2c34 <.text+0x1c34>
    2e5c: 90000041     	adrp	x1, 0xa000 <.text+0x9000>
    2e60: d0000042     	adrp	x2, 0xc000
    2e64: 91268821     	add	x1, x1, #0x9a2
    2e68: 9102e042     	add	x2, x2, #0xb8
    2e6c: 1400000e     	b	0x2ea4 <.text+0x1ea4>
    2e70: 72001c1f     	tst	w0, #0xff
    2e74: 54ffee00     	b.eq	0x2c34 <.text+0x1c34>
    2e78: 90000041     	adrp	x1, 0xa000 <.text+0x9000>
    2e7c: d0000042     	adrp	x2, 0xc000
    2e80: 91268821     	add	x1, x1, #0x9a2
    2e84: 91032042     	add	x2, x2, #0xc8
    2e88: 14000007     	b	0x2ea4 <.text+0x1ea4>
    2e8c: 72001c1f     	tst	w0, #0xff
    2e90: 54ffed20     	b.eq	0x2c34 <.text+0x1c34>
    2e94: 90000041     	adrp	x1, 0xa000 <.text+0x9000>
    2e98: d0000042     	adrp	x2, 0xc000
    2e9c: 91268821     	add	x1, x1, #0x9a2
    2ea0: 9103e042     	add	x2, x2, #0xf8
    2ea4: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    2ea8: aa1303e3     	mov	x3, x19
    2eac: 9400013d     	bl	0x33a0 <.text+0x23a0>
    2eb0: 17ffff61     	b	0x2c34 <.text+0x1c34>
    2eb4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2eb8: f9000bf5     	str	x21, [sp, #0x10]
    2ebc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2ec0: 910003fd     	mov	x29, sp
    2ec4: aa0003f3     	mov	x19, x0
    2ec8: d0000040     	adrp	x0, 0xc000
    2ecc: 9101e000     	add	x0, x0, #0x78
    2ed0: 910063a1     	add	x1, x29, #0x18
    2ed4: 9400055d     	bl	0x4448 <.text+0x3448>
    2ed8: b7f80200     	tbnz	x0, #0x3f, 0x2f18 <.text+0x1f18>
    2edc: f9400fa1     	ldr	x1, [x29, #0x18]
    2ee0: aa1303e0     	mov	x0, x19
    2ee4: 94000865     	bl	0x5078 <.text+0x4078>
    2ee8: b4000180     	cbz	x0, 0x2f18 <.text+0x1f18>
    2eec: 79400415     	ldrh	w21, [x0, #0x2]
    2ef0: aa0003f4     	mov	x20, x0
    2ef4: aa1503e0     	mov	x0, x21
    2ef8: 94000514     	bl	0x4348 <.text+0x3348>
    2efc: aa0003f3     	mov	x19, x0
    2f00: b40000e0     	cbz	x0, 0x2f1c <.text+0x1f1c>
    2f04: aa1303e0     	mov	x0, x19
    2f08: aa1403e1     	mov	x1, x20
    2f0c: aa1503e2     	mov	x2, x21
    2f10: 9400000e     	bl	0x2f48 <.text+0x1f48>
    2f14: 14000002     	b	0x2f1c <.text+0x1f1c>
    2f18: aa1f03f3     	mov	x19, xzr
    2f1c: aa1303e0     	mov	x0, x19
    2f20: f9400bf5     	ldr	x21, [sp, #0x10]
    2f24: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2f28: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2f2c: d65f03c0     	ret
    2f30: 52800202     	mov	w2, #0x10               // =16
    2f34: 140000e6     	b	0x32cc <.text+0x22cc>
    2f38: 14000112     	b	0x3380 <.text+0x2380>
    2f3c: b4000041     	cbz	x1, 0x2f44 <.text+0x1f44>
    2f40: 14000011     	b	0x2f84 <.text+0x1f84>
    2f44: d65f03c0     	ret
    2f48: eb01001f     	cmp	x0, x1
    2f4c: 54000060     	b.eq	0x2f58 <.text+0x1f58>
    2f50: b4000042     	cbz	x2, 0x2f58 <.text+0x1f58>
    2f54: 140000de     	b	0x32cc <.text+0x22cc>
    2f58: d65f03c0     	ret
    2f5c: 00000000     	udf	#0x0
    2f60: 4e020c40     	dup	v0.8h, w2
    2f64: d37ff821     	lsl	x1, x1, #1
    2f68: 1400000a     	b	0x2f90 <.text+0x1f90>
    2f6c: 4e040c40     	dup	v0.4s, w2
    2f70: d37ef421     	lsl	x1, x1, #2
    2f74: 14000007     	b	0x2f90 <.text+0x1f90>
    2f78: 4e080c40     	dup	v0.2d, x2
    2f7c: d37df021     	lsl	x1, x1, #3
    2f80: 14000004     	b	0x2f90 <.text+0x1f90>
    2f84: 4f00e400     	movi	v0.16b, #0x0
    2f88: 14000002     	b	0x2f90 <.text+0x1f90>
    2f8c: 4e010c40     	dup	v0.16b, w2
    2f90: 8b010004     	add	x4, x0, x1
    2f94: 4e083c02     	mov	x2, v0.d[0]
    2f98: f101803f     	cmp	x1, #0x60
    2f9c: 540003c8     	b.hi	0x3014 <.text+0x2014>
    2fa0: f100403f     	cmp	x1, #0x10
    2fa4: 540001e2     	b.hs	0x2fe0 <.text+0x1fe0>
    2fa8: 361800a1     	tbz	w1, #0x3, 0x2fbc <.text+0x1fbc>
    2fac: f9000002     	str	x2, [x0]
    2fb0: f81f8082     	stur	x2, [x4, #-0x8]
    2fb4: d65f03c0     	ret
    2fb8: d503201f     	nop
    2fbc: 36100081     	tbz	w1, #0x2, 0x2fcc <.text+0x1fcc>
    2fc0: b9000002     	str	w2, [x0]
    2fc4: b81fc082     	stur	w2, [x4, #-0x4]
    2fc8: d65f03c0     	ret
    2fcc: b4000081     	cbz	x1, 0x2fdc <.text+0x1fdc>
    2fd0: 39000002     	strb	w2, [x0]
    2fd4: 36080041     	tbz	w1, #0x1, 0x2fdc <.text+0x1fdc>
    2fd8: 781fe082     	sturh	w2, [x4, #-0x2]
    2fdc: d65f03c0     	ret
    2fe0: 3d800000     	str	q0, [x0]
    2fe4: 373000e1     	tbnz	w1, #0x6, 0x3000 <.text+0x2000>
    2fe8: 3c9f0080     	stur	q0, [x4, #-0x10]
    2fec: 36280061     	tbz	w1, #0x5, 0x2ff8 <.text+0x1ff8>
    2ff0: 3d800400     	str	q0, [x0, #0x10]
    2ff4: 3c9e0080     	stur	q0, [x4, #-0x20]
    2ff8: d65f03c0     	ret
    2ffc: d503201f     	nop
    3000: 3d800400     	str	q0, [x0, #0x10]
    3004: ad010000     	stp	q0, q0, [x0, #0x20]
    3008: ad3f0080     	stp	q0, q0, [x4, #-0x20]
    300c: d65f03c0     	ret
    3010: d503201f     	nop
    3014: 927cec03     	and	x3, x0, #0xfffffffffffffff0
    3018: 3d800000     	str	q0, [x0]
    301c: f104003f     	cmp	x1, #0x100
    3020: fa402840     	ccmp	x2, #0x0, #0x0, hs
    3024: 54000160     	b.eq	0x3050 <.text+0x2050>
    3028: cb030081     	sub	x1, x4, x3
    302c: 91004063     	add	x3, x3, #0x10
    3030: d1014021     	sub	x1, x1, #0x50
    3034: ac820060     	stp	q0, q0, [x3], #0x40
    3038: ad3f0060     	stp	q0, q0, [x3, #-0x20]
    303c: f1010021     	subs	x1, x1, #0x40
    3040: 54ffffa8     	b.hi	0x3034 <.text+0x2034>
    3044: ad3e0080     	stp	q0, q0, [x4, #-0x40]
    3048: ad3f0080     	stp	q0, q0, [x4, #-0x20]
    304c: d65f03c0     	ret
    3050: d53b00e5     	mrs	x5, DCZID_EL0
    3054: 3727fea5     	tbnz	w5, #0x4, 0x3028 <.text+0x2028>
    3058: 12000ca5     	and	w5, w5, #0xf
    305c: 710010bf     	cmp	w5, #0x4
    3060: 54000281     	b.ne	0x30b0 <.text+0x20b0>
    3064: 3d800460     	str	q0, [x3, #0x10]
    3068: ad010060     	stp	q0, q0, [x3, #0x20]
    306c: 927ae463     	and	x3, x3, #0xffffffffffffffc0
    3070: ad020060     	stp	q0, q0, [x3, #0x40]
    3074: ad030060     	stp	q0, q0, [x3, #0x60]
    3078: cb030081     	sub	x1, x4, x3
    307c: d1040021     	sub	x1, x1, #0x100
    3080: 91020063     	add	x3, x3, #0x80
    3084: d503201f     	nop
    3088: d50b7423     	dc	zva, x3
    308c: 91010063     	add	x3, x3, #0x40
    3090: f1010021     	subs	x1, x1, #0x40
    3094: 54ffffa8     	b.hi	0x3088 <.text+0x2088>
    3098: ad000060     	stp	q0, q0, [x3]
    309c: ad010060     	stp	q0, q0, [x3, #0x20]
    30a0: ad3e0080     	stp	q0, q0, [x4, #-0x40]
    30a4: ad3f0080     	stp	q0, q0, [x4, #-0x20]
    30a8: d65f03c0     	ret
    30ac: d503201f     	nop
    30b0: 710014bf     	cmp	w5, #0x5
    30b4: 54000241     	b.ne	0x30fc <.text+0x20fc>
    30b8: 3d800460     	str	q0, [x3, #0x10]
    30bc: ad010060     	stp	q0, q0, [x3, #0x20]
    30c0: ad020060     	stp	q0, q0, [x3, #0x40]
    30c4: ad030060     	stp	q0, q0, [x3, #0x60]
    30c8: 9279e063     	and	x3, x3, #0xffffffffffffff80
    30cc: cb030081     	sub	x1, x4, x3
    30d0: d1040021     	sub	x1, x1, #0x100
    30d4: 91020063     	add	x3, x3, #0x80
    30d8: d50b7423     	dc	zva, x3
    30dc: 91020063     	add	x3, x3, #0x80
    30e0: f1020021     	subs	x1, x1, #0x80
    30e4: 54ffffa8     	b.hi	0x30d8 <.text+0x20d8>
    30e8: ad3c0080     	stp	q0, q0, [x4, #-0x80]
    30ec: ad3d0080     	stp	q0, q0, [x4, #-0x60]
    30f0: ad3e0080     	stp	q0, q0, [x4, #-0x40]
    30f4: ad3f0080     	stp	q0, q0, [x4, #-0x20]
    30f8: d65f03c0     	ret
    30fc: 52800086     	mov	w6, #0x4                // =4
    3100: 1ac520c7     	lsl	w7, w6, w5
    3104: 910100e5     	add	x5, x7, #0x40
    3108: eb05003f     	cmp	x1, x5
    310c: 54fff8e3     	b.lo	0x3028 <.text+0x2028>
    3110: d10004e6     	sub	x6, x7, #0x1
    3114: 8b070065     	add	x5, x3, x7
    3118: 91004063     	add	x3, x3, #0x10
    311c: eb0300a1     	subs	x1, x5, x3
    3120: 8a2600a5     	bic	x5, x5, x6
    3124: 540000a0     	b.eq	0x3138 <.text+0x2138>
    3128: ac820060     	stp	q0, q0, [x3], #0x40
    312c: ad3f0060     	stp	q0, q0, [x3, #-0x20]
    3130: f1010021     	subs	x1, x1, #0x40
    3134: 54ffffa8     	b.hi	0x3128 <.text+0x2128>
    3138: aa0503e3     	mov	x3, x5
    313c: cb050081     	sub	x1, x4, x5
    3140: eb070021     	subs	x1, x1, x7
    3144: 540000a3     	b.lo	0x3158 <.text+0x2158>
    3148: d50b7423     	dc	zva, x3
    314c: 8b070063     	add	x3, x3, x7
    3150: eb070021     	subs	x1, x1, x7
    3154: 54ffffa2     	b.hs	0x3148 <.text+0x2148>
    3158: 8b070021     	add	x1, x1, x7
    315c: 17ffffb8     	b	0x303c <.text+0x203c>
    3160: f9800020     	prfm	pldl1keep, [x1]
    3164: 8b020024     	add	x4, x1, x2
    3168: 8b020005     	add	x5, x0, x2
    316c: f100405f     	cmp	x2, #0x10
    3170: 54000209     	b.ls	0x31b0 <.text+0x21b0>
    3174: f101805f     	cmp	x2, #0x60
    3178: 54000648     	b.hi	0x3240 <.text+0x2240>
    317c: d1000449     	sub	x9, x2, #0x1
    3180: a9401c26     	ldp	x6, x7, [x1]
    3184: 37300469     	tbnz	w9, #0x6, 0x3210 <.text+0x2210>
    3188: a97f348c     	ldp	x12, x13, [x4, #-0x10]
    318c: 362800a9     	tbz	w9, #0x5, 0x31a0 <.text+0x21a0>
    3190: a9412428     	ldp	x8, x9, [x1, #0x10]
    3194: a97e2c8a     	ldp	x10, x11, [x4, #-0x20]
    3198: a9012408     	stp	x8, x9, [x0, #0x10]
    319c: a93e2caa     	stp	x10, x11, [x5, #-0x20]
    31a0: a9001c06     	stp	x6, x7, [x0]
    31a4: a93f34ac     	stp	x12, x13, [x5, #-0x10]
    31a8: d65f03c0     	ret
    31ac: d503201f     	nop
    31b0: f100205f     	cmp	x2, #0x8
    31b4: 540000e3     	b.lo	0x31d0 <.text+0x21d0>
    31b8: f9400026     	ldr	x6, [x1]
    31bc: f85f8087     	ldur	x7, [x4, #-0x8]
    31c0: f9000006     	str	x6, [x0]
    31c4: f81f80a7     	stur	x7, [x5, #-0x8]
    31c8: d65f03c0     	ret
    31cc: d503201f     	nop
    31d0: 361000c2     	tbz	w2, #0x2, 0x31e8 <.text+0x21e8>
    31d4: b9400026     	ldr	w6, [x1]
    31d8: b85fc087     	ldur	w7, [x4, #-0x4]
    31dc: b9000006     	str	w6, [x0]
    31e0: b81fc0a7     	stur	w7, [x5, #-0x4]
    31e4: d65f03c0     	ret
    31e8: b4000102     	cbz	x2, 0x3208 <.text+0x2208>
    31ec: d341fc49     	lsr	x9, x2, #1
    31f0: 39400026     	ldrb	w6, [x1]
    31f4: 385ff087     	ldurb	w7, [x4, #-0x1]
    31f8: 38696828     	ldrb	w8, [x1, x9]
    31fc: 39000006     	strb	w6, [x0]
    3200: 38296808     	strb	w8, [x0, x9]
    3204: 381ff0a7     	sturb	w7, [x5, #-0x1]
    3208: d65f03c0     	ret
    320c: d503201f     	nop
    3210: a9412428     	ldp	x8, x9, [x1, #0x10]
    3214: a9422c2a     	ldp	x10, x11, [x1, #0x20]
    3218: a943342c     	ldp	x12, x13, [x1, #0x30]
    321c: a97e3c8e     	ldp	x14, x15, [x4, #-0x20]
    3220: a97f0c84     	ldp	x4, x3, [x4, #-0x10]
    3224: a9001c06     	stp	x6, x7, [x0]
    3228: a9012408     	stp	x8, x9, [x0, #0x10]
    322c: a9022c0a     	stp	x10, x11, [x0, #0x20]
    3230: a903340c     	stp	x12, x13, [x0, #0x30]
    3234: a93e3cae     	stp	x14, x15, [x5, #-0x20]
    3238: a93f0ca4     	stp	x4, x3, [x5, #-0x10]
    323c: d65f03c0     	ret
    3240: 92400c09     	and	x9, x0, #0xf
    3244: 927cec03     	and	x3, x0, #0xfffffffffffffff0
    3248: a940342c     	ldp	x12, x13, [x1]
    324c: cb090021     	sub	x1, x1, x9
    3250: 8b090042     	add	x2, x2, x9
    3254: a9411c26     	ldp	x6, x7, [x1, #0x10]
    3258: a900340c     	stp	x12, x13, [x0]
    325c: a9422428     	ldp	x8, x9, [x1, #0x20]
    3260: a9432c2a     	ldp	x10, x11, [x1, #0x30]
    3264: a9c4342c     	ldp	x12, x13, [x1, #0x40]!
    3268: f1024042     	subs	x2, x2, #0x90
    326c: 54000169     	b.ls	0x3298 <.text+0x2298>
    3270: a9011c66     	stp	x6, x7, [x3, #0x10]
    3274: a9411c26     	ldp	x6, x7, [x1, #0x10]
    3278: a9022468     	stp	x8, x9, [x3, #0x20]
    327c: a9422428     	ldp	x8, x9, [x1, #0x20]
    3280: a9032c6a     	stp	x10, x11, [x3, #0x30]
    3284: a9432c2a     	ldp	x10, x11, [x1, #0x30]
    3288: a984346c     	stp	x12, x13, [x3, #0x40]!
    328c: a9c4342c     	ldp	x12, x13, [x1, #0x40]!
    3290: f1010042     	subs	x2, x2, #0x40
    3294: 54fffee8     	b.hi	0x3270 <.text+0x2270>
    3298: a97c3c8e     	ldp	x14, x15, [x4, #-0x40]
    329c: a9011c66     	stp	x6, x7, [x3, #0x10]
    32a0: a97d1c86     	ldp	x6, x7, [x4, #-0x30]
    32a4: a9022468     	stp	x8, x9, [x3, #0x20]
    32a8: a97e2488     	ldp	x8, x9, [x4, #-0x20]
    32ac: a9032c6a     	stp	x10, x11, [x3, #0x30]
    32b0: a97f2c8a     	ldp	x10, x11, [x4, #-0x10]
    32b4: a904346c     	stp	x12, x13, [x3, #0x40]
    32b8: a93c3cae     	stp	x14, x15, [x5, #-0x40]
    32bc: a93d1ca6     	stp	x6, x7, [x5, #-0x30]
    32c0: a93e24a8     	stp	x8, x9, [x5, #-0x20]
    32c4: a93f2caa     	stp	x10, x11, [x5, #-0x10]
    32c8: d65f03c0     	ret
    32cc: cb010003     	sub	x3, x0, x1
    32d0: f101805f     	cmp	x2, #0x60
    32d4: fa428062     	ccmp	x3, x2, #0x2, hi
    32d8: 54fff442     	b.hs	0x3160 <.text+0x2160>
    32dc: b40004c3     	cbz	x3, 0x3374 <.text+0x2374>
    32e0: 8b020005     	add	x5, x0, x2
    32e4: 8b020024     	add	x4, x1, x2
    32e8: 92400ca3     	and	x3, x5, #0xf
    32ec: a97f348c     	ldp	x12, x13, [x4, #-0x10]
    32f0: cb030084     	sub	x4, x4, x3
    32f4: cb030042     	sub	x2, x2, x3
    32f8: a97f1c86     	ldp	x6, x7, [x4, #-0x10]
    32fc: a93f34ac     	stp	x12, x13, [x5, #-0x10]
    3300: a97e2488     	ldp	x8, x9, [x4, #-0x20]
    3304: a97d2c8a     	ldp	x10, x11, [x4, #-0x30]
    3308: a9fc348c     	ldp	x12, x13, [x4, #-0x40]!
    330c: cb0300a5     	sub	x5, x5, x3
    3310: f1020042     	subs	x2, x2, #0x80
    3314: 54000189     	b.ls	0x3344 <.text+0x2344>
    3318: d503201f     	nop
    331c: a93f1ca6     	stp	x6, x7, [x5, #-0x10]
    3320: a97f1c86     	ldp	x6, x7, [x4, #-0x10]
    3324: a93e24a8     	stp	x8, x9, [x5, #-0x20]
    3328: a97e2488     	ldp	x8, x9, [x4, #-0x20]
    332c: a93d2caa     	stp	x10, x11, [x5, #-0x30]
    3330: a97d2c8a     	ldp	x10, x11, [x4, #-0x30]
    3334: a9bc34ac     	stp	x12, x13, [x5, #-0x40]!
    3338: a9fc348c     	ldp	x12, x13, [x4, #-0x40]!
    333c: f1010042     	subs	x2, x2, #0x40
    3340: 54fffee8     	b.hi	0x331c <.text+0x231c>
    3344: a9433c2e     	ldp	x14, x15, [x1, #0x30]
    3348: a93f1ca6     	stp	x6, x7, [x5, #-0x10]
    334c: a9421c26     	ldp	x6, x7, [x1, #0x20]
    3350: a93e24a8     	stp	x8, x9, [x5, #-0x20]
    3354: a9412428     	ldp	x8, x9, [x1, #0x10]
    3358: a93d2caa     	stp	x10, x11, [x5, #-0x30]
    335c: a9402c2a     	ldp	x10, x11, [x1]
    3360: a93c34ac     	stp	x12, x13, [x5, #-0x40]
    3364: a9033c0e     	stp	x14, x15, [x0, #0x30]
    3368: a9021c06     	stp	x6, x7, [x0, #0x20]
    336c: a9012408     	stp	x8, x9, [x0, #0x10]
    3370: a9002c0a     	stp	x10, x11, [x0]
    3374: d65f03c0     	ret
		...
    3380: aa1f03e2     	mov	x2, xzr
    3384: a9401003     	ldp	x3, x4, [x0]
    3388: b4000041     	cbz	x1, 0x3390 <.text+0x2390>
    338c: a9400821     	ldp	x1, x2, [x1]
    3390: eb03003f     	cmp	x1, x3
    3394: fa440040     	ccmp	x2, x4, #0x0, eq
    3398: 1a9f17e0     	cset	w0, eq
    339c: d65f03c0     	ret
    33a0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    33a4: a9014ffc     	stp	x28, x19, [sp, #0x10]
    33a8: 910003fd     	mov	x29, sp
    33ac: d10c03ff     	sub	sp, sp, #0x300
    33b0: f0000029     	adrp	x9, 0xa000 <.text+0x9000>
    33b4: b000004a     	adrp	x10, 0xc000
    33b8: a90913e3     	stp	x3, x4, [sp, #0x90]
    33bc: f90047e2     	str	x2, [sp, #0x88]
    33c0: b948a129     	ldr	w9, [x9, #0x8a0]
    33c4: f940014a     	ldr	x10, [x10]
    33c8: a90a1be5     	stp	x5, x6, [sp, #0xa0]
    33cc: f9005be7     	str	x7, [sp, #0xb0]
    33d0: ea00013f     	tst	x9, x0
    33d4: ad0007e0     	stp	q0, q1, [sp]
    33d8: ad010fe2     	stp	q2, q3, [sp, #0x20]
    33dc: ad0217e4     	stp	q4, q5, [sp, #0x40]
    33e0: ad031fe6     	stp	q6, q7, [sp, #0x60]
    33e4: f81f83aa     	stur	x10, [x29, #-0x8]
    33e8: 54000380     	b.eq	0x3458 <.text+0x2458>
    33ec: aa0103e8     	mov	x8, x1
    33f0: 928005e9     	mov	x9, #-0x30              // =-48
    33f4: 910003ea     	mov	x10, sp
    33f8: 910223ec     	add	x12, sp, #0x88
    33fc: aa0003f3     	mov	x19, x0
    3400: f2dff009     	movk	x9, #0xff80, lsl #32
    3404: 9102014a     	add	x10, x10, #0x80
    3408: 910083ab     	add	x11, x29, #0x20
    340c: 9100c18c     	add	x12, x12, #0x30
    3410: 9103e3e0     	add	x0, sp, #0xf8
    3414: 9102e3e3     	add	x3, sp, #0xb8
    3418: 52804001     	mov	w1, #0x200              // =512
    341c: aa0803e2     	mov	x2, x8
    3420: a90ea7ea     	stp	x10, x9, [sp, #0xe8]
    3424: a90db3eb     	stp	x11, x12, [sp, #0xd8]
    3428: a90bb3eb     	stp	x11, x12, [sp, #0xb8]
    342c: a90ca7ea     	stp	x10, x9, [sp, #0xc8]
    3430: 94000227     	bl	0x3ccc <.text+0x2ccc>
    3434: 52808048     	mov	w8, #0x402              // =1026
    3438: 72b00008     	movk	w8, #0x8000, lsl #16
    343c: ea08027f     	tst	x19, x8
    3440: 540000c0     	b.eq	0x3458 <.text+0x2458>
    3444: 9103e3e0     	add	x0, sp, #0xf8
    3448: 940000d8     	bl	0x37a8 <.text+0x27a8>
    344c: aa0003e1     	mov	x1, x0
    3450: 9103e3e0     	add	x0, sp, #0xf8
    3454: 94001982     	bl	0x9a5c <.text+0x8a5c>
    3458: b0000049     	adrp	x9, 0xc000
    345c: f85f83a8     	ldur	x8, [x29, #-0x8]
    3460: f9400129     	ldr	x9, [x9]
    3464: eb08013f     	cmp	x9, x8
    3468: 540000a1     	b.ne	0x347c <.text+0x247c>
    346c: 910c03ff     	add	sp, sp, #0x300
    3470: a9414ffc     	ldp	x28, x19, [sp, #0x10]
    3474: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3478: d65f03c0     	ret
    347c: 97fff715     	bl	0x10d0 <.text+0xd0>
    3480: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    3484: a90157fc     	stp	x28, x21, [sp, #0x10]
    3488: a9024ff4     	stp	x20, x19, [sp, #0x20]
    348c: 910003fd     	mov	x29, sp
    3490: d10843ff     	sub	sp, sp, #0x210
    3494: b0000048     	adrp	x8, 0xc000
    3498: aa0203f3     	mov	x19, x2
    349c: aa0103f4     	mov	x20, x1
    34a0: aa0003f5     	mov	x21, x0
    34a4: f9400108     	ldr	x8, [x8]
    34a8: f81f83a8     	stur	x8, [x29, #-0x8]
    34ac: 9400194b     	bl	0x99d8 <.text+0x89d8>
    34b0: 9400194e     	bl	0x99e8 <.text+0x89e8>
    34b4: 72001c1f     	tst	w0, #0xff
    34b8: 540000e0     	b.eq	0x34d4 <.text+0x24d4>
    34bc: 52800040     	mov	w0, #0x2                // =2
    34c0: 528000e1     	mov	w1, #0x7                // =7
    34c4: 72b20000     	movk	w0, #0x9000, lsl #16
    34c8: 72a06001     	movk	w1, #0x300, lsl #16
    34cc: 9400194f     	bl	0x9a08 <.text+0x8a08>
    34d0: 14000002     	b	0x34d8 <.text+0x24d8>
    34d4: 94001949     	bl	0x99f8 <.text+0x89f8>
    34d8: 94001991     	bl	0x9b1c <.text+0x8b1c>
    34dc: 940019a1     	bl	0x9b60 <.text+0x8b60>
    34e0: f0000022     	adrp	x2, 0xa000 <.text+0x9000>
    34e4: 910023e0     	add	x0, sp, #0x8
    34e8: 912a4042     	add	x2, x2, #0xa90
    34ec: 52804001     	mov	w1, #0x200              // =512
    34f0: aa1503e3     	mov	x3, x21
    34f4: aa1403e4     	mov	x4, x20
    34f8: aa1303e5     	mov	x5, x19
    34fc: 94000217     	bl	0x3d58 <.text+0x2d58>
    3500: 910023e0     	add	x0, sp, #0x8
    3504: 940000a9     	bl	0x37a8 <.text+0x27a8>
    3508: aa0003e1     	mov	x1, x0
    350c: 910023e0     	add	x0, sp, #0x8
    3510: 94001953     	bl	0x9a5c <.text+0x8a5c>
    3514: 94001982     	bl	0x9b1c <.text+0x8b1c>
    3518: f0000020     	adrp	x0, 0xa000 <.text+0x9000>
    351c: 52800021     	mov	w1, #0x1                // =1
    3520: 912a8c00     	add	x0, x0, #0xaa3
    3524: 9400194e     	bl	0x9a5c <.text+0x8a5c>
    3528: 9400197d     	bl	0x9b1c <.text+0x8b1c>
    352c: 940019de     	bl	0x9ca4 <.text+0x8ca4>
    3530: 94000014     	bl	0x3580 <.text+0x2580>
    3534: b0000049     	adrp	x9, 0xc000
    3538: f85f83a8     	ldur	x8, [x29, #-0x8]
    353c: f9400129     	ldr	x9, [x9]
    3540: eb08013f     	cmp	x9, x8
    3544: 540000c1     	b.ne	0x355c <.text+0x255c>
    3548: 910843ff     	add	sp, sp, #0x210
    354c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3550: a94157fc     	ldp	x28, x21, [sp, #0x10]
    3554: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    3558: d65f03c0     	ret
    355c: 97fff6dd     	bl	0x10d0 <.text+0xd0>
    3560: f0000028     	adrp	x8, 0xa000 <.text+0x9000>
    3564: 39629108     	ldrb	w8, [x8, #0x8a4]
    3568: 12000100     	and	w0, w8, #0x1
    356c: d65f03c0     	ret
    3570: f0000028     	adrp	x8, 0xa000 <.text+0x9000>
    3574: 39629108     	ldrb	w8, [x8, #0x8a4]
    3578: 53020900     	ubfx	w0, w8, #2, #1
    357c: d65f03c0     	ret
    3580: d10083ff     	sub	sp, sp, #0x20
    3584: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3588: 910043fd     	add	x29, sp, #0x10
    358c: 940019c6     	bl	0x9ca4 <.text+0x8ca4>
    3590: 94001983     	bl	0x9b9c <.text+0x8b9c>
    3594: f90007ff     	str	xzr, [sp, #0x8]
    3598: f94007e8     	ldr	x8, [sp, #0x8]
    359c: b5000068     	cbnz	x8, 0x35a8 <.text+0x25a8>
    35a0: 940000ae     	bl	0x3858 <.text+0x2858>
    35a4: 17fffffd     	b	0x3598 <.text+0x2598>
    35a8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    35ac: 910083ff     	add	sp, sp, #0x20
    35b0: d65f03c0     	ret
    35b4: aa1f03e8     	mov	x8, xzr
    35b8: b40001e0     	cbz	x0, 0x35f4 <.text+0x25f4>
    35bc: b40001c1     	cbz	x1, 0x35f4 <.text+0x25f4>
    35c0: 79400008     	ldrh	w8, [x0]
    35c4: 34000128     	cbz	w8, 0x35e8 <.text+0x25e8>
    35c8: 52800028     	mov	w8, #0x1                // =1
    35cc: eb08003f     	cmp	x1, x8
    35d0: 54000100     	b.eq	0x35f0 <.text+0x25f0>
    35d4: 78687809     	ldrh	w9, [x0, x8, lsl #1]
    35d8: 91000508     	add	x8, x8, #0x1
    35dc: 35ffff89     	cbnz	w9, 0x35cc <.text+0x25cc>
    35e0: d1000508     	sub	x8, x8, #0x1
    35e4: 14000004     	b	0x35f4 <.text+0x25f4>
    35e8: aa1f03e8     	mov	x8, xzr
    35ec: 14000002     	b	0x35f4 <.text+0x25f4>
    35f0: aa0103e8     	mov	x8, x1
    35f4: aa0803e0     	mov	x0, x8
    35f8: d65f03c0     	ret
    35fc: b40001e0     	cbz	x0, 0x3638 <.text+0x2638>
    3600: b4000181     	cbz	x1, 0x3630 <.text+0x2630>
    3604: 79400008     	ldrh	w8, [x0]
    3608: 34000128     	cbz	w8, 0x362c <.text+0x262c>
    360c: 52800028     	mov	w8, #0x1                // =1
    3610: eb08003f     	cmp	x1, x8
    3614: 540000e0     	b.eq	0x3630 <.text+0x2630>
    3618: 78687809     	ldrh	w9, [x0, x8, lsl #1]
    361c: 91000508     	add	x8, x8, #0x1
    3620: 35ffff89     	cbnz	w9, 0x3610 <.text+0x2610>
    3624: d1000501     	sub	x1, x8, #0x1
    3628: 14000002     	b	0x3630 <.text+0x2630>
    362c: aa1f03e1     	mov	x1, xzr
    3630: d37ff828     	lsl	x8, x1, #1
    3634: 91000900     	add	x0, x8, #0x2
    3638: d65f03c0     	ret
    363c: d2800048     	mov	x8, #0x2                // =2
    3640: f2f00008     	movk	x8, #0x8000, lsl #48
    3644: b40004c0     	cbz	x0, 0x36dc <.text+0x26dc>
    3648: b40004a2     	cbz	x2, 0x36dc <.text+0x26dc>
    364c: f0000029     	adrp	x9, 0xa000 <.text+0x9000>
    3650: b948b129     	ldr	w9, [x9, #0x8b0]
    3654: f100013f     	cmp	x9, #0x0
    3658: fa411122     	ccmp	x9, x1, #0x2, ne
    365c: 1a9f27e9     	cset	w9, lo
    3660: b40003e1     	cbz	x1, 0x36dc <.text+0x26dc>
    3664: 370003c9     	tbnz	w9, #0x0, 0x36dc <.text+0x26dc>
    3668: 79400049     	ldrh	w9, [x2]
    366c: 34000169     	cbz	w9, 0x3698 <.text+0x2698>
    3670: aa1f03eb     	mov	x11, xzr
    3674: d100042a     	sub	x10, x1, #0x1
    3678: 9100084c     	add	x12, x2, #0x2
    367c: eb0b015f     	cmp	x10, x11
    3680: 540002c0     	b.eq	0x36d8 <.text+0x26d8>
    3684: 9100056d     	add	x13, x11, #0x1
    3688: 786b798e     	ldrh	w14, [x12, x11, lsl #1]
    368c: aa0d03eb     	mov	x11, x13
    3690: 35ffff6e     	cbnz	w14, 0x367c <.text+0x267c>
    3694: 14000002     	b	0x369c <.text+0x269c>
    3698: aa1f03ed     	mov	x13, xzr
    369c: eb0101bf     	cmp	x13, x1
    36a0: 540001c2     	b.hs	0x36d8 <.text+0x26d8>
    36a4: eb02001f     	cmp	x0, x2
    36a8: 540000a3     	b.lo	0x36bc <.text+0x26bc>
    36ac: 8b0d0448     	add	x8, x2, x13, lsl #1
    36b0: 91000908     	add	x8, x8, #0x2
    36b4: eb00011f     	cmp	x8, x0
    36b8: 540000c8     	b.hi	0x36d0 <.text+0x26d0>
    36bc: eb00005f     	cmp	x2, x0
    36c0: 54000123     	b.lo	0x36e4 <.text+0x26e4>
    36c4: 8b010408     	add	x8, x0, x1, lsl #1
    36c8: eb02011f     	cmp	x8, x2
    36cc: 540000c9     	b.ls	0x36e4 <.text+0x26e4>
    36d0: b24113e8     	mov	x8, #-0x7ffffffffffffff1 // =-9223372036854775793
    36d4: 14000002     	b	0x36dc <.text+0x26dc>
    36d8: 91000d08     	add	x8, x8, #0x3
    36dc: aa0803e0     	mov	x0, x8
    36e0: d65f03c0     	ret
    36e4: 340000a9     	cbz	w9, 0x36f8 <.text+0x26f8>
    36e8: 91000848     	add	x8, x2, #0x2
    36ec: 78002409     	strh	w9, [x0], #0x2
    36f0: 78402509     	ldrh	w9, [x8], #0x2
    36f4: 35ffffc9     	cbnz	w9, 0x36ec <.text+0x26ec>
    36f8: aa1f03e8     	mov	x8, xzr
    36fc: 7900001f     	strh	wzr, [x0]
    3700: 17fffff7     	b	0x36dc <.text+0x26dc>
    3704: aa1f03e8     	mov	x8, xzr
    3708: b40001e0     	cbz	x0, 0x3744 <.text+0x2744>
    370c: b40001c1     	cbz	x1, 0x3744 <.text+0x2744>
    3710: 39400008     	ldrb	w8, [x0]
    3714: 34000128     	cbz	w8, 0x3738 <.text+0x2738>
    3718: 52800028     	mov	w8, #0x1                // =1
    371c: eb08003f     	cmp	x1, x8
    3720: 54000100     	b.eq	0x3740 <.text+0x2740>
    3724: 38686809     	ldrb	w9, [x0, x8]
    3728: 91000508     	add	x8, x8, #0x1
    372c: 35ffff89     	cbnz	w9, 0x371c <.text+0x271c>
    3730: d1000508     	sub	x8, x8, #0x1
    3734: 14000004     	b	0x3744 <.text+0x2744>
    3738: aa1f03e8     	mov	x8, xzr
    373c: 14000002     	b	0x3744 <.text+0x2744>
    3740: aa0103e8     	mov	x8, x1
    3744: aa0803e0     	mov	x0, x8
    3748: d65f03c0     	ret
    374c: 79400009     	ldrh	w9, [x0]
    3750: 340000e9     	cbz	w9, 0x376c <.text+0x276c>
    3754: aa0003e8     	mov	x8, x0
    3758: 52800040     	mov	w0, #0x2                // =2
    375c: 78606909     	ldrh	w9, [x8, x0]
    3760: 91000800     	add	x0, x0, #0x2
    3764: 35ffffc9     	cbnz	w9, 0x375c <.text+0x275c>
    3768: d65f03c0     	ret
    376c: 52800040     	mov	w0, #0x2                // =2
    3770: d65f03c0     	ret
    3774: 79400008     	ldrh	w8, [x0]
    3778: 34000108     	cbz	w8, 0x3798 <.text+0x2798>
    377c: 91000809     	add	x9, x0, #0x2
    3780: 7940002a     	ldrh	w10, [x1]
    3784: 6b0a011f     	cmp	w8, w10
    3788: 54000081     	b.ne	0x3798 <.text+0x2798>
    378c: 78402528     	ldrh	w8, [x9], #0x2
    3790: 91000821     	add	x1, x1, #0x2
    3794: 35ffff68     	cbnz	w8, 0x3780 <.text+0x2780>
    3798: 79400029     	ldrh	w9, [x1]
    379c: 2a0803e8     	mov	w8, w8
    37a0: cb090100     	sub	x0, x8, x9
    37a4: d65f03c0     	ret
    37a8: 39400008     	ldrb	w8, [x0]
    37ac: 34000108     	cbz	w8, 0x37cc <.text+0x27cc>
    37b0: aa1f03e9     	mov	x9, xzr
    37b4: 91000408     	add	x8, x0, #0x1
    37b8: 91000520     	add	x0, x9, #0x1
    37bc: 3869690a     	ldrb	w10, [x8, x9]
    37c0: aa0003e9     	mov	x9, x0
    37c4: 35ffffaa     	cbnz	w10, 0x37b8 <.text+0x27b8>
    37c8: d65f03c0     	ret
    37cc: aa1f03e0     	mov	x0, xzr
    37d0: d65f03c0     	ret
    37d4: b4000242     	cbz	x2, 0x381c <.text+0x281c>
    37d8: 39400008     	ldrb	w8, [x0]
    37dc: 34000188     	cbz	w8, 0x380c <.text+0x280c>
    37e0: 91000409     	add	x9, x0, #0x1
    37e4: 3940002a     	ldrb	w10, [x1]
    37e8: 3400014a     	cbz	w10, 0x3810 <.text+0x2810>
    37ec: 6b0a011f     	cmp	w8, w10
    37f0: 54000101     	b.ne	0x3810 <.text+0x2810>
    37f4: f100085f     	cmp	x2, #0x2
    37f8: 540000c3     	b.lo	0x3810 <.text+0x2810>
    37fc: 38401528     	ldrb	w8, [x9], #0x1
    3800: 91000421     	add	x1, x1, #0x1
    3804: d1000442     	sub	x2, x2, #0x1
    3808: 35fffee8     	cbnz	w8, 0x37e4 <.text+0x27e4>
    380c: 3940002a     	ldrb	w10, [x1]
    3810: 2a0803e8     	mov	w8, w8
    3814: cb2a4100     	sub	x0, x8, w10, uxtw
    3818: d65f03c0     	ret
    381c: aa1f03e0     	mov	x0, xzr
    3820: d65f03c0     	ret
		...
    3840: d280001d     	mov	x29, #0x0               // =0
    3844: aa0003fe     	mov	x30, x0
    3848: 9100007f     	mov	sp, x3
    384c: aa0103e0     	mov	x0, x1
    3850: aa0203e1     	mov	x1, x2
    3854: d65f03c0     	ret
    3858: d503201f     	nop
    385c: d503201f     	nop
    3860: d503201f     	nop
    3864: d503201f     	nop
    3868: d503201f     	nop
    386c: d65f03c0     	ret
    3870: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3874: a9014ff4     	stp	x20, x19, [sp, #0x10]
    3878: 910003fd     	mov	x29, sp
    387c: 2a0003f3     	mov	w19, w0
    3880: 94000008     	bl	0x38a0 <.text+0x28a0>
    3884: 2a0003f4     	mov	w20, w0
    3888: 53107e60     	lsr	w0, w19, #16
    388c: 94000005     	bl	0x38a0 <.text+0x28a0>
    3890: 33103e80     	bfi	w0, w20, #16, #16
    3894: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    3898: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    389c: d65f03c0     	ret
    38a0: 5ac00808     	rev	w8, w0
    38a4: 53107d00     	lsr	w0, w8, #16
    38a8: d65f03c0     	ret
    38ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    38b0: f9000bf3     	str	x19, [sp, #0x10]
    38b4: 910003fd     	mov	x29, sp
    38b8: b40000c0     	cbz	x0, 0x38d0 <.text+0x28d0>
    38bc: aa0003f3     	mov	x19, x0
    38c0: f9400000     	ldr	x0, [x0]
    38c4: b4000060     	cbz	x0, 0x38d0 <.text+0x28d0>
    38c8: 9400021e     	bl	0x4140 <.text+0x3140>
    38cc: f900027f     	str	xzr, [x19]
    38d0: f9400bf3     	ldr	x19, [sp, #0x10]
    38d4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    38d8: d65f03c0     	ret
    38dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    38e0: f9000bf3     	str	x19, [sp, #0x10]
    38e4: 910003fd     	mov	x29, sp
    38e8: f9403028     	ldr	x8, [x1, #0x60]
    38ec: b0000040     	adrp	x0, 0xc000
    38f0: d0000042     	adrp	x2, 0xd000
    38f4: 91096000     	add	x0, x0, #0x258
    38f8: 91000042     	add	x2, x2, #0x0
    38fc: aa1f03e1     	mov	x1, xzr
    3900: f940a108     	ldr	x8, [x8, #0x140]
    3904: d63f0100     	blr	x8
    3908: aa0003f3     	mov	x19, x0
    390c: b6f800c0     	tbz	x0, #0x3f, 0x3924 <.text+0x2924>
    3910: f0000021     	adrp	x1, 0xa000 <.text+0x9000>
    3914: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    3918: 911ed021     	add	x1, x1, #0x7b4
    391c: aa1303e2     	mov	x2, x19
    3920: 97fffea0     	bl	0x33a0 <.text+0x23a0>
    3924: aa1303e0     	mov	x0, x19
    3928: f9400bf3     	ldr	x19, [sp, #0x10]
    392c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3930: d65f03c0     	ret
    3934: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    3938: f9000bf9     	str	x25, [sp, #0x10]
    393c: a9025ff8     	stp	x24, x23, [sp, #0x20]
    3940: a90357f6     	stp	x22, x21, [sp, #0x30]
    3944: a9044ff4     	stp	x20, x19, [sp, #0x40]
    3948: 910003fd     	mov	x29, sp
    394c: b4001341     	cbz	x1, 0x3bb4 <.text+0x2bb4>
    3950: aa0403f3     	mov	x19, x4
    3954: aa0303f4     	mov	x20, x3
    3958: aa0103f7     	mov	x23, x1
    395c: aa0203f5     	mov	x21, x2
    3960: 2a0003f6     	mov	w22, w0
    3964: 72001c1f     	tst	w0, #0xff
    3968: 54000220     	b.eq	0x39ac <.text+0x29ac>
    396c: f0000028     	adrp	x8, 0xa000 <.text+0x9000>
    3970: b948ad19     	ldr	w25, [x8, #0x8ac]
    3974: 34000159     	cbz	w25, 0x399c <.text+0x299c>
    3978: 11000738     	add	w24, w25, #0x1
    397c: aa1703e0     	mov	x0, x23
    3980: aa1803e1     	mov	x1, x24
    3984: 97ffff60     	bl	0x3704 <.text+0x2704>
    3988: aa1703e0     	mov	x0, x23
    398c: aa1803e1     	mov	x1, x24
    3990: 97ffff5d     	bl	0x3704 <.text+0x2704>
    3994: eb19001f     	cmp	x0, x25
    3998: 540010e8     	b.hi	0x3bb4 <.text+0x2bb4>
    399c: aa1f03eb     	mov	x11, xzr
    39a0: 52800028     	mov	w8, #0x1                // =1
    39a4: 52801fe9     	mov	w9, #0xff               // =255
    39a8: 14000011     	b	0x39ec <.text+0x29ec>
    39ac: f0000028     	adrp	x8, 0xa000 <.text+0x9000>
    39b0: b948b119     	ldr	w25, [x8, #0x8b0]
    39b4: 34000159     	cbz	w25, 0x39dc <.text+0x29dc>
    39b8: 11000738     	add	w24, w25, #0x1
    39bc: aa1703e0     	mov	x0, x23
    39c0: aa1803e1     	mov	x1, x24
    39c4: 97fffefc     	bl	0x35b4 <.text+0x25b4>
    39c8: aa1703e0     	mov	x0, x23
    39cc: aa1803e1     	mov	x1, x24
    39d0: 97fffef9     	bl	0x35b4 <.text+0x25b4>
    39d4: eb19001f     	cmp	x0, x25
    39d8: 54000ee8     	b.hi	0x3bb4 <.text+0x2bb4>
    39dc: 394006ea     	ldrb	w10, [x23, #0x1]
    39e0: 52800048     	mov	w8, #0x2                // =2
    39e4: 529fffe9     	mov	w9, #0xffff             // =65535
    39e8: d378dd4b     	lsl	x11, x10, #8
    39ec: 394002ec     	ldrb	w12, [x23]
    39f0: f000002d     	adrp	x13, 0xa000 <.text+0x9000>
    39f4: 5280002a     	mov	w10, #0x1               // =1
    39f8: 912a95ad     	add	x13, x13, #0xaa5
    39fc: aa0c016e     	orr	x14, x11, x12
    3a00: d2cf002b     	mov	x11, #0x780100000000    // =131945690300416
    3a04: f2e07feb     	movk	x11, #0x3ff, lsl #48
    3a08: aa1403ec     	mov	x12, x20
    3a0c: 0a0901ce     	and	w14, w14, w9
    3a10: 710095df     	cmp	w14, #0x25
    3a14: 54000060     	b.eq	0x3a20 <.text+0x2a20>
    3a18: 350008ce     	cbnz	w14, 0x3b30 <.text+0x2b30>
    3a1c: 1400006d     	b	0x3bd0 <.text+0x2bd0>
    3a20: 2a1f03ee     	mov	w14, wzr
    3a24: aa1703f0     	mov	x16, x23
    3a28: 8b0802f7     	add	x23, x23, x8
    3a2c: 72001edf     	tst	w22, #0xff
    3a30: 394002ef     	ldrb	w15, [x23]
    3a34: 54000060     	b.eq	0x3a40 <.text+0x2a40>
    3a38: aa1f03f1     	mov	x17, xzr
    3a3c: 14000003     	b	0x3a48 <.text+0x2a48>
    3a40: 394006f1     	ldrb	w17, [x23, #0x1]
    3a44: d378de31     	lsl	x17, x17, #8
    3a48: 2a0f022f     	orr	w15, w17, w15
    3a4c: 8a0901ef     	and	x15, x15, x9
    3a50: 7100e5ff     	cmp	w15, #0x39
    3a54: 540002c8     	b.hi	0x3aac <.text+0x2aac>
    3a58: 9acf2151     	lsl	x17, x10, x15
    3a5c: ea0b023f     	tst	x17, x11
    3a60: 54fffe21     	b.ne	0x3a24 <.text+0x2a24>
    3a64: f100a9ff     	cmp	x15, #0x2a
    3a68: 54000201     	b.ne	0x3aa8 <.text+0x2aa8>
    3a6c: b9801aaf     	ldrsw	x15, [x21, #0x18]
    3a70: 36f8010f     	tbz	w15, #0x1f, 0x3a90 <.text+0x2a90>
    3a74: 110021f0     	add	w16, w15, #0x8
    3a78: 310021ff     	cmn	w15, #0x8
    3a7c: b9001ab0     	str	w16, [x21, #0x18]
    3a80: 54000088     	b.hi	0x3a90 <.text+0x2a90>
    3a84: f94006b0     	ldr	x16, [x21, #0x8]
    3a88: 8b0f020f     	add	x15, x16, x15
    3a8c: 14000004     	b	0x3a9c <.text+0x2a9c>
    3a90: f94002af     	ldr	x15, [x21]
    3a94: 910021f0     	add	x16, x15, #0x8
    3a98: f90002b0     	str	x16, [x21]
    3a9c: f94001ef     	ldr	x15, [x15]
    3aa0: f800858f     	str	x15, [x12], #0x8
    3aa4: 17ffffe0     	b	0x3a24 <.text+0x2a24>
    3aa8: b40000ef     	cbz	x15, 0x3ac4 <.text+0x2ac4>
    3aac: 7101b1ff     	cmp	w15, #0x6c
    3ab0: 54000060     	b.eq	0x3abc <.text+0x2abc>
    3ab4: 710131ff     	cmp	w15, #0x4c
    3ab8: 54000081     	b.ne	0x3ac8 <.text+0x2ac8>
    3abc: 5280002e     	mov	w14, #0x1               // =1
    3ac0: 17ffffd9     	b	0x3a24 <.text+0x2a24>
    3ac4: aa1003f7     	mov	x23, x16
    3ac8: 510185f0     	sub	w16, w15, #0x61
    3acc: 71005e1f     	cmp	w16, #0x17
    3ad0: 540000a8     	b.hi	0x3ae4 <.text+0x2ae4>
    3ad4: 1000010f     	adr	x15, 0x3af4 <.text+0x2af4>
    3ad8: 387069b1     	ldrb	w17, [x13, x16]
    3adc: 8b1109ef     	add	x15, x15, x17, lsl #2
    3ae0: d61f01e0     	br	x15
    3ae4: 71014dff     	cmp	w15, #0x53
    3ae8: 54000080     	b.eq	0x3af8 <.text+0x2af8>
    3aec: 710161ff     	cmp	w15, #0x58
    3af0: 54000201     	b.ne	0x3b30 <.text+0x2b30>
    3af4: 340003ae     	cbz	w14, 0x3b68 <.text+0x2b68>
    3af8: b9801aae     	ldrsw	x14, [x21, #0x18]
    3afc: 36f8010e     	tbz	w14, #0x1f, 0x3b1c <.text+0x2b1c>
    3b00: 110021cf     	add	w15, w14, #0x8
    3b04: 310021df     	cmn	w14, #0x8
    3b08: b9001aaf     	str	w15, [x21, #0x18]
    3b0c: 54000088     	b.hi	0x3b1c <.text+0x2b1c>
    3b10: f94006af     	ldr	x15, [x21, #0x8]
    3b14: 8b0e01ee     	add	x14, x15, x14
    3b18: 14000004     	b	0x3b28 <.text+0x2b28>
    3b1c: f94002ae     	ldr	x14, [x21]
    3b20: 910021cf     	add	x15, x14, #0x8
    3b24: f90002af     	str	x15, [x21]
    3b28: f94001ce     	ldr	x14, [x14]
    3b2c: f800858e     	str	x14, [x12], #0x8
    3b30: cb14018e     	sub	x14, x12, x20
    3b34: eb1301df     	cmp	x14, x19
    3b38: 54000368     	b.hi	0x3ba4 <.text+0x2ba4>
    3b3c: 8b0802f7     	add	x23, x23, x8
    3b40: 72001edf     	tst	w22, #0xff
    3b44: 54000060     	b.eq	0x3b50 <.text+0x2b50>
    3b48: aa1f03ee     	mov	x14, xzr
    3b4c: 14000003     	b	0x3b58 <.text+0x2b58>
    3b50: 394006ee     	ldrb	w14, [x23, #0x1]
    3b54: d378ddce     	lsl	x14, x14, #8
    3b58: 394002ef     	ldrb	w15, [x23]
    3b5c: 92781dce     	and	x14, x14, #0xff00
    3b60: aa0f01ce     	orr	x14, x14, x15
    3b64: 17ffffaa     	b	0x3a0c <.text+0x2a0c>
    3b68: b9801aae     	ldrsw	x14, [x21, #0x18]
    3b6c: 36f8010e     	tbz	w14, #0x1f, 0x3b8c <.text+0x2b8c>
    3b70: 110021cf     	add	w15, w14, #0x8
    3b74: 310021df     	cmn	w14, #0x8
    3b78: b9001aaf     	str	w15, [x21, #0x18]
    3b7c: 54000088     	b.hi	0x3b8c <.text+0x2b8c>
    3b80: f94006af     	ldr	x15, [x21, #0x8]
    3b84: 8b0e01ee     	add	x14, x15, x14
    3b88: 14000004     	b	0x3b98 <.text+0x2b98>
    3b8c: f94002ae     	ldr	x14, [x21]
    3b90: 910021cf     	add	x15, x14, #0x8
    3b94: f90002af     	str	x15, [x21]
    3b98: f94001ce     	ldr	x14, [x14]
    3b9c: b800858e     	str	w14, [x12], #0x8
    3ba0: 17ffffe4     	b	0x3b30 <.text+0x2b30>
    3ba4: f0000021     	adrp	x1, 0xa000 <.text+0x9000>
    3ba8: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    3bac: 912af421     	add	x1, x1, #0xabd
    3bb0: 97fffdfc     	bl	0x33a0 <.text+0x23a0>
    3bb4: 2a1f03e0     	mov	w0, wzr
    3bb8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    3bbc: a94357f6     	ldp	x22, x21, [sp, #0x30]
    3bc0: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    3bc4: f9400bf9     	ldr	x25, [sp, #0x10]
    3bc8: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    3bcc: d65f03c0     	ret
    3bd0: 52800020     	mov	w0, #0x1                // =1
    3bd4: 17fffff9     	b	0x3bb8 <.text+0x2bb8>
    3bd8: d10543ff     	sub	sp, sp, #0x150
    3bdc: a9127bfd     	stp	x29, x30, [sp, #0x120]
    3be0: a91357fc     	stp	x28, x21, [sp, #0x130]
    3be4: a9144ff4     	stp	x20, x19, [sp, #0x140]
    3be8: 910483fd     	add	x29, sp, #0x120
    3bec: aa0203f3     	mov	x19, x2
    3bf0: aa0103f4     	mov	x20, x1
    3bf4: a9402468     	ldp	x8, x9, [x3]
    3bf8: aa0003f5     	mov	x21, x0
    3bfc: 910003e2     	mov	x2, sp
    3c00: a9412c6a     	ldp	x10, x11, [x3, #0x10]
    3c04: 910083e3     	add	x3, sp, #0x20
    3c08: 2a1f03e0     	mov	w0, wzr
    3c0c: aa1303e1     	mov	x1, x19
    3c10: 52801f04     	mov	w4, #0xf8               // =248
    3c14: a90027e8     	stp	x8, x9, [sp]
    3c18: a9012fea     	stp	x10, x11, [sp, #0x10]
    3c1c: 97ffff46     	bl	0x3934 <.text+0x2934>
    3c20: 72001c1f     	tst	w0, #0xff
    3c24: 54000140     	b.eq	0x3c4c <.text+0x2c4c>
    3c28: d0000048     	adrp	x8, 0xd000
    3c2c: 910083e3     	add	x3, sp, #0x20
    3c30: aa1503e0     	mov	x0, x21
    3c34: aa1403e1     	mov	x1, x20
    3c38: aa1303e2     	mov	x2, x19
    3c3c: f9400108     	ldr	x8, [x8]
    3c40: f9400108     	ldr	x8, [x8]
    3c44: d63f0100     	blr	x8
    3c48: 14000002     	b	0x3c50 <.text+0x2c50>
    3c4c: aa1f03e0     	mov	x0, xzr
    3c50: a9544ff4     	ldp	x20, x19, [sp, #0x140]
    3c54: a95357fc     	ldp	x28, x21, [sp, #0x130]
    3c58: a9527bfd     	ldp	x29, x30, [sp, #0x120]
    3c5c: 910543ff     	add	sp, sp, #0x150
    3c60: d65f03c0     	ret
    3c64: d10403ff     	sub	sp, sp, #0x100
    3c68: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
    3c6c: 9103c3fd     	add	x29, sp, #0xf0
    3c70: 910003e8     	mov	x8, sp
    3c74: 928004e9     	mov	x9, #-0x28              // =-40
    3c78: d101a3aa     	sub	x10, x29, #0x68
    3c7c: a93993a3     	stp	x3, x4, [x29, #-0x68]
    3c80: f2dff009     	movk	x9, #0xff80, lsl #32
    3c84: 91020108     	add	x8, x8, #0x80
    3c88: 9100a14a     	add	x10, x10, #0x28
    3c8c: 910043ab     	add	x11, x29, #0x10
    3c90: d10103a3     	sub	x3, x29, #0x40
    3c94: a93a9ba5     	stp	x5, x6, [x29, #-0x58]
    3c98: f81b83a7     	stur	x7, [x29, #-0x48]
    3c9c: ad0007e0     	stp	q0, q1, [sp]
    3ca0: ad010fe2     	stp	q2, q3, [sp, #0x20]
    3ca4: ad0217e4     	stp	q4, q5, [sp, #0x40]
    3ca8: ad031fe6     	stp	q6, q7, [sp, #0x60]
    3cac: a93f27a8     	stp	x8, x9, [x29, #-0x10]
    3cb0: a93e2bab     	stp	x11, x10, [x29, #-0x20]
    3cb4: a93c2bab     	stp	x11, x10, [x29, #-0x40]
    3cb8: a93d27a8     	stp	x8, x9, [x29, #-0x30]
    3cbc: 97ffffc7     	bl	0x3bd8 <.text+0x2bd8>
    3cc0: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
    3cc4: 910403ff     	add	sp, sp, #0x100
    3cc8: d65f03c0     	ret
    3ccc: d10543ff     	sub	sp, sp, #0x150
    3cd0: a9127bfd     	stp	x29, x30, [sp, #0x120]
    3cd4: a91357fc     	stp	x28, x21, [sp, #0x130]
    3cd8: a9144ff4     	stp	x20, x19, [sp, #0x140]
    3cdc: 910483fd     	add	x29, sp, #0x120
    3ce0: aa0203f3     	mov	x19, x2
    3ce4: aa0103f4     	mov	x20, x1
    3ce8: a9402468     	ldp	x8, x9, [x3]
    3cec: aa0003f5     	mov	x21, x0
    3cf0: 910003e2     	mov	x2, sp
    3cf4: a9412c6a     	ldp	x10, x11, [x3, #0x10]
    3cf8: 910083e3     	add	x3, sp, #0x20
    3cfc: 52800020     	mov	w0, #0x1                // =1
    3d00: aa1303e1     	mov	x1, x19
    3d04: 52801f04     	mov	w4, #0xf8               // =248
    3d08: a90027e8     	stp	x8, x9, [sp]
    3d0c: a9012fea     	stp	x10, x11, [sp, #0x10]
    3d10: 97ffff09     	bl	0x3934 <.text+0x2934>
    3d14: 72001c1f     	tst	w0, #0xff
    3d18: 54000140     	b.eq	0x3d40 <.text+0x2d40>
    3d1c: d0000048     	adrp	x8, 0xd000
    3d20: 910083e3     	add	x3, sp, #0x20
    3d24: aa1503e0     	mov	x0, x21
    3d28: aa1403e1     	mov	x1, x20
    3d2c: aa1303e2     	mov	x2, x19
    3d30: f9400108     	ldr	x8, [x8]
    3d34: f9401508     	ldr	x8, [x8, #0x28]
    3d38: d63f0100     	blr	x8
    3d3c: 14000002     	b	0x3d44 <.text+0x2d44>
    3d40: aa1f03e0     	mov	x0, xzr
    3d44: a9544ff4     	ldp	x20, x19, [sp, #0x140]
    3d48: a95357fc     	ldp	x28, x21, [sp, #0x130]
    3d4c: a9527bfd     	ldp	x29, x30, [sp, #0x120]
    3d50: 910543ff     	add	sp, sp, #0x150
    3d54: d65f03c0     	ret
    3d58: d10403ff     	sub	sp, sp, #0x100
    3d5c: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
    3d60: 9103c3fd     	add	x29, sp, #0xf0
    3d64: 910003e8     	mov	x8, sp
    3d68: 928004e9     	mov	x9, #-0x28              // =-40
    3d6c: d101a3aa     	sub	x10, x29, #0x68
    3d70: a93993a3     	stp	x3, x4, [x29, #-0x68]
    3d74: f2dff009     	movk	x9, #0xff80, lsl #32
    3d78: 91020108     	add	x8, x8, #0x80
    3d7c: 9100a14a     	add	x10, x10, #0x28
    3d80: 910043ab     	add	x11, x29, #0x10
    3d84: d10103a3     	sub	x3, x29, #0x40
    3d88: a93a9ba5     	stp	x5, x6, [x29, #-0x58]
    3d8c: f81b83a7     	stur	x7, [x29, #-0x48]
    3d90: ad0007e0     	stp	q0, q1, [sp]
    3d94: ad010fe2     	stp	q2, q3, [sp, #0x20]
    3d98: ad0217e4     	stp	q4, q5, [sp, #0x40]
    3d9c: ad031fe6     	stp	q6, q7, [sp, #0x60]
    3da0: a93f27a8     	stp	x8, x9, [x29, #-0x10]
    3da4: a93e2bab     	stp	x11, x10, [x29, #-0x20]
    3da8: a93c2bab     	stp	x11, x10, [x29, #-0x40]
    3dac: a93d27a8     	stp	x8, x9, [x29, #-0x30]
    3db0: 97ffffc7     	bl	0x3ccc <.text+0x2ccc>
    3db4: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
    3db8: 910403ff     	add	sp, sp, #0x100
    3dbc: d65f03c0     	ret
    3dc0: f9402c28     	ldr	x8, [x1, #0x58]
    3dc4: d0000049     	adrp	x9, 0xd000
    3dc8: aa1f03e0     	mov	x0, xzr
    3dcc: f9000528     	str	x8, [x9, #0x8]
    3dd0: d65f03c0     	ret
    3dd4: f940302b     	ldr	x11, [x1, #0x60]
    3dd8: aa0003e8     	mov	x8, x0
    3ddc: aa1f03e0     	mov	x0, xzr
    3de0: d0000049     	adrp	x9, 0xd000
    3de4: d000004a     	adrp	x10, 0xd000
    3de8: d000004c     	adrp	x12, 0xd000
    3dec: f9000928     	str	x8, [x9, #0x10]
    3df0: f9000d41     	str	x1, [x10, #0x18]
    3df4: f900118b     	str	x11, [x12, #0x20]
    3df8: d65f03c0     	ret
    3dfc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3e00: f9000bf3     	str	x19, [sp, #0x10]
    3e04: 910003fd     	mov	x29, sp
    3e08: d0000048     	adrp	x8, 0xd000
    3e0c: f9401508     	ldr	x8, [x8, #0x28]
    3e10: b5000508     	cbnz	x8, 0x3eb0 <.text+0x2eb0>
    3e14: d0000048     	adrp	x8, 0xd000
    3e18: d0000053     	adrp	x19, 0xd000
    3e1c: b0000040     	adrp	x0, 0xc000
    3e20: 9100a273     	add	x19, x19, #0x28
    3e24: 9109a000     	add	x0, x0, #0x268
    3e28: aa1f03e1     	mov	x1, xzr
    3e2c: f9401108     	ldr	x8, [x8, #0x20]
    3e30: aa1303e2     	mov	x2, x19
    3e34: f940a108     	ldr	x8, [x8, #0x140]
    3e38: d63f0100     	blr	x8
    3e3c: f9400268     	ldr	x8, [x19]
    3e40: f100001f     	cmp	x0, #0x0
    3e44: fa400904     	ccmp	x8, #0x0, #0x4, eq
    3e48: 54000061     	b.ne	0x3e54 <.text+0x2e54>
    3e4c: 9400001d     	bl	0x3ec0 <.text+0x2ec0>
    3e50: 14000018     	b	0x3eb0 <.text+0x2eb0>
    3e54: a940ad09     	ldp	x9, x11, [x8, #0x8]
    3e58: d000004a     	adrp	x10, 0xd000
    3e5c: d000004c     	adrp	x12, 0xd000
    3e60: d000004e     	adrp	x14, 0xd000
    3e64: f9001949     	str	x9, [x10, #0x30]
    3e68: d000004a     	adrp	x10, 0xd000
    3e6c: a941b509     	ldp	x9, x13, [x8, #0x18]
    3e70: f9001d8b     	str	x11, [x12, #0x38]
    3e74: d000004b     	adrp	x11, 0xd000
    3e78: f9002149     	str	x9, [x10, #0x40]
    3e7c: d0000049     	adrp	x9, 0xd000
    3e80: a942a90c     	ldp	x12, x10, [x8, #0x28]
    3e84: f900256d     	str	x13, [x11, #0x48]
    3e88: a943b50b     	ldp	x11, x13, [x8, #0x38]
    3e8c: f900292c     	str	x12, [x9, #0x50]
    3e90: d0000049     	adrp	x9, 0xd000
    3e94: f9402d08     	ldr	x8, [x8, #0x58]
    3e98: d000004c     	adrp	x12, 0xd000
    3e9c: f90035cd     	str	x13, [x14, #0x68]
    3ea0: f9002d2a     	str	x10, [x9, #0x58]
    3ea4: d0000049     	adrp	x9, 0xd000
    3ea8: f900318b     	str	x11, [x12, #0x60]
    3eac: f9003928     	str	x8, [x9, #0x70]
    3eb0: f9400bf3     	ldr	x19, [sp, #0x10]
    3eb4: aa1f03e0     	mov	x0, xzr
    3eb8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3ebc: d65f03c0     	ret
    3ec0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3ec4: f9000bf3     	str	x19, [sp, #0x10]
    3ec8: 910003fd     	mov	x29, sp
    3ecc: d0000053     	adrp	x19, 0xd000
    3ed0: f9401668     	ldr	x8, [x19, #0x28]
    3ed4: b5000128     	cbnz	x8, 0x3ef8 <.text+0x2ef8>
    3ed8: b0000040     	adrp	x0, 0xc000
    3edc: 911af000     	add	x0, x0, #0x6bc
    3ee0: 94000482     	bl	0x50e8 <.text+0x40e8>
    3ee4: b4000060     	cbz	x0, 0x3ef0 <.text+0x2ef0>
    3ee8: f9400c08     	ldr	x8, [x0, #0x18]
    3eec: 14000002     	b	0x3ef4 <.text+0x2ef4>
    3ef0: aa1f03e8     	mov	x8, xzr
    3ef4: f9001668     	str	x8, [x19, #0x28]
    3ef8: f9400bf3     	ldr	x19, [sp, #0x10]
    3efc: f100011f     	cmp	x8, #0x0
    3f00: 1a9f07e0     	cset	w0, ne
    3f04: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3f08: d65f03c0     	ret
    3f0c: d0000048     	adrp	x8, 0xd000
    3f10: f9401500     	ldr	x0, [x8, #0x28]
    3f14: d65f03c0     	ret
    3f18: d0000048     	adrp	x8, 0xd000
    3f1c: f9403d08     	ldr	x8, [x8, #0x78]
    3f20: b4000068     	cbz	x8, 0x3f2c <.text+0x2f2c>
    3f24: f9401100     	ldr	x0, [x8, #0x20]
    3f28: d61f0000     	br	x0
    3f2c: d65f03c0     	ret
    3f30: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3f34: f9000bf3     	str	x19, [sp, #0x10]
    3f38: 910003fd     	mov	x29, sp
    3f3c: d0000053     	adrp	x19, 0xd000
    3f40: f9403e68     	ldr	x8, [x19, #0x78]
    3f44: b4000068     	cbz	x8, 0x3f50 <.text+0x2f50>
    3f48: aa1f03e0     	mov	x0, xzr
    3f4c: 14000009     	b	0x3f70 <.text+0x2f70>
    3f50: 97ffffef     	bl	0x3f0c <.text+0x2f0c>
    3f54: b40000a0     	cbz	x0, 0x3f68 <.text+0x2f68>
    3f58: f9402408     	ldr	x8, [x0, #0x48]
    3f5c: aa1f03e0     	mov	x0, xzr
    3f60: f9003e68     	str	x8, [x19, #0x78]
    3f64: 14000003     	b	0x3f70 <.text+0x2f70>
    3f68: d28001c0     	mov	x0, #0xe                // =14
    3f6c: f2f00000     	movk	x0, #0x8000, lsl #48
    3f70: f9400bf3     	ldr	x19, [sp, #0x10]
    3f74: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3f78: d65f03c0     	ret
    3f7c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    3f80: 910003fd     	mov	x29, sp
    3f84: 94001704     	bl	0x9b94 <.text+0x8b94>
    3f88: b4000060     	cbz	x0, 0x3f94 <.text+0x2f94>
    3f8c: 94001871     	bl	0xa150 <.text+0x9150>
    3f90: 14000005     	b	0x3fa4 <.text+0x2fa4>
    3f94: f0000021     	adrp	x1, 0xa000 <.text+0x9000>
    3f98: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    3f9c: 91374021     	add	x1, x1, #0xdd0
    3fa0: 97fffd00     	bl	0x33a0 <.text+0x23a0>
    3fa4: aa1f03e0     	mov	x0, xzr
    3fa8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3fac: d65f03c0     	ret
    3fb0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3fb4: f9000bf3     	str	x19, [sp, #0x10]
    3fb8: 910003fd     	mov	x29, sp
    3fbc: f9403028     	ldr	x8, [x1, #0x60]
    3fc0: b0000040     	adrp	x0, 0xc000
    3fc4: d0000042     	adrp	x2, 0xd000
    3fc8: 9109e000     	add	x0, x0, #0x278
    3fcc: 91022042     	add	x2, x2, #0x88
    3fd0: aa1f03e1     	mov	x1, xzr
    3fd4: f940a108     	ldr	x8, [x8, #0x140]
    3fd8: d63f0100     	blr	x8
    3fdc: b7f801c0     	tbnz	x0, #0x3f, 0x4014 <.text+0x3014>
    3fe0: d0000053     	adrp	x19, 0xd000
    3fe4: 910073a1     	add	x1, x29, #0x1c
    3fe8: 390073bf     	strb	wzr, [x29, #0x1c]
    3fec: f9404660     	ldr	x0, [x19, #0x88]
    3ff0: f9400008     	ldr	x8, [x0]
    3ff4: d63f0100     	blr	x8
    3ff8: 394073a8     	ldrb	w8, [x29, #0x1c]
    3ffc: 340000c8     	cbz	w8, 0x4014 <.text+0x3014>
    4000: f9404660     	ldr	x0, [x19, #0x88]
    4004: b0000041     	adrp	x1, 0xd000
    4008: 91020021     	add	x1, x1, #0x80
    400c: f9400408     	ldr	x8, [x0, #0x8]
    4010: d63f0100     	blr	x8
    4014: f9400bf3     	ldr	x19, [sp, #0x10]
    4018: aa1f03e0     	mov	x0, xzr
    401c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    4020: d65f03c0     	ret
    4024: b0000048     	adrp	x8, 0xd000
    4028: f9404108     	ldr	x8, [x8, #0x80]
    402c: f100011f     	cmp	x8, #0x0
    4030: 1a9f07e0     	cset	w0, ne
    4034: d65f03c0     	ret
    4038: d100c3ff     	sub	sp, sp, #0x30
    403c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4040: f90013f3     	str	x19, [sp, #0x20]
    4044: 910043fd     	add	x29, sp, #0x10
    4048: 97fffff7     	bl	0x4024 <.text+0x3024>
    404c: 72001c1f     	tst	w0, #0xff
    4050: 540005c0     	b.eq	0x4108 <.text+0x3108>
    4054: b0000048     	adrp	x8, 0xd000
    4058: 90000040     	adrp	x0, 0xc000
    405c: 910a2000     	add	x0, x0, #0x288
    4060: 910063a2     	add	x2, x29, #0x18
    4064: aa1f03e1     	mov	x1, xzr
    4068: f9401108     	ldr	x8, [x8, #0x20]
    406c: f940a108     	ldr	x8, [x8, #0x140]
    4070: d63f0100     	blr	x8
    4074: b6f800c0     	tbz	x0, #0x3f, 0x408c <.text+0x308c>
    4078: d0000021     	adrp	x1, 0xa000 <.text+0x9000>
    407c: aa0003e2     	mov	x2, x0
    4080: 911ed021     	add	x1, x1, #0x7b4
    4084: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    4088: 97fffcc6     	bl	0x33a0 <.text+0x23a0>
    408c: f9400fa0     	ldr	x0, [x29, #0x18]
    4090: 910023e1     	add	x1, sp, #0x8
    4094: aa1f03e2     	mov	x2, xzr
    4098: f90007ff     	str	xzr, [sp, #0x8]
    409c: f9400c08     	ldr	x8, [x0, #0x18]
    40a0: d63f0100     	blr	x8
    40a4: b0000048     	adrp	x8, 0xd000
    40a8: b0000053     	adrp	x19, 0xd000
    40ac: f94007e1     	ldr	x1, [sp, #0x8]
    40b0: 91024273     	add	x19, x19, #0x90
    40b4: 528000c0     	mov	w0, #0x6                // =6
    40b8: aa1303e2     	mov	x2, x19
    40bc: f9404108     	ldr	x8, [x8, #0x80]
    40c0: f900027f     	str	xzr, [x19]
    40c4: f9402908     	ldr	x8, [x8, #0x50]
    40c8: d63f0100     	blr	x8
    40cc: f9400fa0     	ldr	x0, [x29, #0x18]
    40d0: 910023e1     	add	x1, sp, #0x8
    40d4: f9400262     	ldr	x2, [x19]
    40d8: f9400c08     	ldr	x8, [x0, #0x18]
    40dc: d63f0100     	blr	x8
    40e0: b6f800c0     	tbz	x0, #0x3f, 0x40f8 <.text+0x30f8>
    40e4: d0000021     	adrp	x1, 0xa000 <.text+0x9000>
    40e8: aa0003e2     	mov	x2, x0
    40ec: 911ed021     	add	x1, x1, #0x7b4
    40f0: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    40f4: 97fffcab     	bl	0x33a0 <.text+0x23a0>
    40f8: f94007e8     	ldr	x8, [sp, #0x8]
    40fc: b0000049     	adrp	x9, 0xd000
    4100: d345fd08     	lsr	x8, x8, #5
    4104: f9004d28     	str	x8, [x9, #0x98]
    4108: f94013f3     	ldr	x19, [sp, #0x20]
    410c: aa1f03e0     	mov	x0, xzr
    4110: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4114: 9100c3ff     	add	sp, sp, #0x30
    4118: d65f03c0     	ret
    411c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    4120: 910003fd     	mov	x29, sp
    4124: b0000048     	adrp	x8, 0xd000
    4128: f9404900     	ldr	x0, [x8, #0x90]
    412c: b4000040     	cbz	x0, 0x4134 <.text+0x3134>
    4130: 94000004     	bl	0x4140 <.text+0x3140>
    4134: aa1f03e0     	mov	x0, xzr
    4138: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    413c: d65f03c0     	ret
    4140: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    4144: f9000bf3     	str	x19, [sp, #0x10]
    4148: 910003fd     	mov	x29, sp
    414c: b0000048     	adrp	x8, 0xd000
    4150: aa0003f3     	mov	x19, x0
    4154: f9404908     	ldr	x8, [x8, #0x90]
    4158: b4000128     	cbz	x8, 0x417c <.text+0x317c>
    415c: aa1303e0     	mov	x0, x19
    4160: 94000018     	bl	0x41c0 <.text+0x31c0>
    4164: 72001c1f     	tst	w0, #0xff
    4168: 540000a0     	b.eq	0x417c <.text+0x317c>
    416c: b0000048     	adrp	x8, 0xd000
    4170: f9404108     	ldr	x8, [x8, #0x80]
    4174: 91016108     	add	x8, x8, #0x58
    4178: 14000004     	b	0x4188 <.text+0x3188>
    417c: b0000048     	adrp	x8, 0xd000
    4180: f9401108     	ldr	x8, [x8, #0x20]
    4184: 91012108     	add	x8, x8, #0x48
    4188: f9400108     	ldr	x8, [x8]
    418c: aa1303e0     	mov	x0, x19
    4190: d63f0100     	blr	x8
    4194: b7f80080     	tbnz	x0, #0x3f, 0x41a4 <.text+0x31a4>
    4198: f9400bf3     	ldr	x19, [sp, #0x10]
    419c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    41a0: d65f03c0     	ret
    41a4: f9400bf3     	ldr	x19, [sp, #0x10]
    41a8: d0000021     	adrp	x1, 0xa000 <.text+0x9000>
    41ac: aa0003e2     	mov	x2, x0
    41b0: 911ed021     	add	x1, x1, #0x7b4
    41b4: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    41b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    41bc: 17fffc79     	b	0x33a0 <.text+0x23a0>
    41c0: b0000048     	adrp	x8, 0xd000
    41c4: f9404d08     	ldr	x8, [x8, #0x98]
    41c8: b40001c8     	cbz	x8, 0x4200 <.text+0x3200>
    41cc: b0000049     	adrp	x9, 0xd000
    41d0: f9404929     	ldr	x9, [x9, #0x90]
    41d4: 91004129     	add	x9, x9, #0x10
    41d8: f85f812a     	ldur	x10, [x9, #-0x8]
    41dc: eb00015f     	cmp	x10, x0
    41e0: 540000a8     	b.hi	0x41f4 <.text+0x31f4>
    41e4: f940012b     	ldr	x11, [x9]
    41e8: 8b0a016a     	add	x10, x11, x10
    41ec: eb00015f     	cmp	x10, x0
    41f0: 540000c8     	b.hi	0x4208 <.text+0x3208>
    41f4: f1000508     	subs	x8, x8, #0x1
    41f8: 91008129     	add	x9, x9, #0x20
    41fc: 54fffee1     	b.ne	0x41d8 <.text+0x31d8>
    4200: 2a1f03e0     	mov	w0, wzr
    4204: d65f03c0     	ret
    4208: 52800020     	mov	w0, #0x1                // =1
    420c: d65f03c0     	ret
    4210: d10083ff     	sub	sp, sp, #0x20
    4214: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4218: 910043fd     	add	x29, sp, #0x10
    421c: b0000048     	adrp	x8, 0xd000
    4220: b0000049     	adrp	x9, 0xd000
    4224: b000004a     	adrp	x10, 0xd000
    4228: aa0003e1     	mov	x1, x0
    422c: 910023e2     	add	x2, sp, #0x8
    4230: f9404908     	ldr	x8, [x8, #0x90]
    4234: f9404129     	ldr	x9, [x9, #0x80]
    4238: f940114a     	ldr	x10, [x10, #0x20]
    423c: f100011f     	cmp	x8, #0x0
    4240: 91014128     	add	x8, x9, #0x50
    4244: 91010149     	add	x9, x10, #0x40
    4248: 5280008a     	mov	w10, #0x4               // =4
    424c: 9a880128     	csel	x8, x9, x8, eq
    4250: 528000c9     	mov	w9, #0x6                // =6
    4254: 1a890140     	csel	w0, w10, w9, eq
    4258: f9400108     	ldr	x8, [x8]
    425c: d63f0100     	blr	x8
    4260: f94007e8     	ldr	x8, [sp, #0x8]
    4264: f100001f     	cmp	x0, #0x0
    4268: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    426c: 9a88b3e0     	csel	x0, xzr, x8, lt
    4270: 910083ff     	add	sp, sp, #0x20
    4274: d65f03c0     	ret
    4278: d10083ff     	sub	sp, sp, #0x20
    427c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4280: 910043fd     	add	x29, sp, #0x10
    4284: b0000048     	adrp	x8, 0xd000
    4288: b0000049     	adrp	x9, 0xd000
    428c: b000004a     	adrp	x10, 0xd000
    4290: aa0003e1     	mov	x1, x0
    4294: 910023e2     	add	x2, sp, #0x8
    4298: 528000c0     	mov	w0, #0x6                // =6
    429c: f9404908     	ldr	x8, [x8, #0x90]
    42a0: f9404129     	ldr	x9, [x9, #0x80]
    42a4: f940114a     	ldr	x10, [x10, #0x20]
    42a8: f100011f     	cmp	x8, #0x0
    42ac: 91014129     	add	x9, x9, #0x50
    42b0: 9101014a     	add	x10, x10, #0x40
    42b4: 9a890148     	csel	x8, x10, x9, eq
    42b8: f9400108     	ldr	x8, [x8]
    42bc: d63f0100     	blr	x8
    42c0: f94007e8     	ldr	x8, [sp, #0x8]
    42c4: f100001f     	cmp	x0, #0x0
    42c8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    42cc: 9a88b3e0     	csel	x0, xzr, x8, lt
    42d0: 910083ff     	add	sp, sp, #0x20
    42d4: d65f03c0     	ret
    42d8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    42dc: f9000bf3     	str	x19, [sp, #0x10]
    42e0: 910003fd     	mov	x29, sp
    42e4: b0000048     	adrp	x8, 0xd000
    42e8: b0000049     	adrp	x9, 0xd000
    42ec: b000004a     	adrp	x10, 0xd000
    42f0: 910063a2     	add	x2, x29, #0x18
    42f4: aa0103f3     	mov	x19, x1
    42f8: f9404908     	ldr	x8, [x8, #0x90]
    42fc: f9404129     	ldr	x9, [x9, #0x80]
    4300: f940114a     	ldr	x10, [x10, #0x20]
    4304: f100011f     	cmp	x8, #0x0
    4308: 91014129     	add	x9, x9, #0x50
    430c: 9101014a     	add	x10, x10, #0x40
    4310: 9a890148     	csel	x8, x10, x9, eq
    4314: f9400108     	ldr	x8, [x8]
    4318: d63f0100     	blr	x8
    431c: aa0003e8     	mov	x8, x0
    4320: aa1f03e0     	mov	x0, xzr
    4324: b7f800c8     	tbnz	x8, #0x3f, 0x433c <.text+0x333c>
    4328: f9400fa8     	ldr	x8, [x29, #0x18]
    432c: b4000088     	cbz	x8, 0x433c <.text+0x333c>
    4330: aa0803e0     	mov	x0, x8
    4334: aa1303e1     	mov	x1, x19
    4338: 97fffb01     	bl	0x2f3c <.text+0x1f3c>
    433c: f9400bf3     	ldr	x19, [sp, #0x10]
    4340: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    4344: d65f03c0     	ret
    4348: b0000048     	adrp	x8, 0xd000
    434c: 52800089     	mov	w9, #0x4                // =4
    4350: aa0003e1     	mov	x1, x0
    4354: f9404908     	ldr	x8, [x8, #0x90]
    4358: f100011f     	cmp	x8, #0x0
    435c: 528000c8     	mov	w8, #0x6                // =6
    4360: 1a880120     	csel	w0, w9, w8, eq
    4364: 17ffffdd     	b	0x42d8 <.text+0x32d8>
    4368: b0000048     	adrp	x8, 0xd000
    436c: f9404908     	ldr	x8, [x8, #0x90]
    4370: b4000068     	cbz	x8, 0x437c <.text+0x337c>
    4374: aa1f03e0     	mov	x0, xzr
    4378: d65f03c0     	ret
    437c: aa0003e1     	mov	x1, x0
    4380: 2a1f03e0     	mov	w0, wzr
    4384: 17ffffd5     	b	0x42d8 <.text+0x32d8>
    4388: d100c3ff     	sub	sp, sp, #0x30
    438c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4390: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4394: 910043fd     	add	x29, sp, #0x10
    4398: b0000048     	adrp	x8, 0xd000
    439c: b0000049     	adrp	x9, 0xd000
    43a0: b000004a     	adrp	x10, 0xd000
    43a4: aa0203f4     	mov	x20, x2
    43a8: 910023e2     	add	x2, sp, #0x8
    43ac: aa0103f3     	mov	x19, x1
    43b0: f9404908     	ldr	x8, [x8, #0x90]
    43b4: f9404129     	ldr	x9, [x9, #0x80]
    43b8: f940114a     	ldr	x10, [x10, #0x20]
    43bc: f100011f     	cmp	x8, #0x0
    43c0: 91014129     	add	x9, x9, #0x50
    43c4: 9101014a     	add	x10, x10, #0x40
    43c8: 9a890148     	csel	x8, x10, x9, eq
    43cc: f9400108     	ldr	x8, [x8]
    43d0: d63f0100     	blr	x8
    43d4: aa0003e8     	mov	x8, x0
    43d8: aa1f03e0     	mov	x0, xzr
    43dc: b7f800e8     	tbnz	x8, #0x3f, 0x43f8 <.text+0x33f8>
    43e0: f94007e8     	ldr	x8, [sp, #0x8]
    43e4: b40000a8     	cbz	x8, 0x43f8 <.text+0x33f8>
    43e8: aa0803e0     	mov	x0, x8
    43ec: aa1403e1     	mov	x1, x20
    43f0: aa1303e2     	mov	x2, x19
    43f4: 97fffad5     	bl	0x2f48 <.text+0x1f48>
    43f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    43fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4400: 9100c3ff     	add	sp, sp, #0x30
    4404: d65f03c0     	ret
    4408: b0000048     	adrp	x8, 0xd000
    440c: 528000c9     	mov	w9, #0x6                // =6
    4410: 5280008a     	mov	w10, #0x4               // =4
    4414: aa0103e2     	mov	x2, x1
    4418: aa0003e1     	mov	x1, x0
    441c: f9404908     	ldr	x8, [x8, #0x90]
    4420: f100011f     	cmp	x8, #0x0
    4424: 1a890148     	csel	w8, w10, w9, eq
    4428: 2a0803e0     	mov	w0, w8
    442c: 17ffffd7     	b	0x4388 <.text+0x3388>
    4430: d0000028     	adrp	x8, 0xa000 <.text+0x9000>
    4434: 3962d108     	ldrb	w8, [x8, #0x8b4]
    4438: 53010500     	ubfx	w0, w8, #1, #1
    443c: d65f03c0     	ret
    4440: aa1f03e0     	mov	x0, xzr
    4444: d65f03c0     	ret
    4448: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    444c: a9015ff8     	stp	x24, x23, [sp, #0x10]
    4450: a90257f6     	stp	x22, x21, [sp, #0x20]
    4454: a9034ff4     	stp	x20, x19, [sp, #0x30]
    4458: 910003fd     	mov	x29, sp
    445c: b0000048     	adrp	x8, 0xd000
    4460: d28001d4     	mov	x20, #0xe               // =14
    4464: f2f00014     	movk	x20, #0x8000, lsl #48
    4468: f9400d16     	ldr	x22, [x8, #0x18]
    446c: f900003f     	str	xzr, [x1]
    4470: f94036c8     	ldr	x8, [x22, #0x68]
    4474: b40002c8     	cbz	x8, 0x44cc <.text+0x34cc>
    4478: aa0103f3     	mov	x19, x1
    447c: aa0003f5     	mov	x21, x0
    4480: aa1f03f7     	mov	x23, xzr
    4484: 52800218     	mov	w24, #0x10              // =16
    4488: f9403ac8     	ldr	x8, [x22, #0x70]
    448c: aa1503e0     	mov	x0, x21
    4490: 8b180108     	add	x8, x8, x24
    4494: d1004101     	sub	x1, x8, #0x10
    4498: 97fffaa8     	bl	0x2f38 <.text+0x1f38>
    449c: 72001c1f     	tst	w0, #0xff
    44a0: 540000e1     	b.ne	0x44bc <.text+0x34bc>
    44a4: f94036c8     	ldr	x8, [x22, #0x68]
    44a8: 910006f7     	add	x23, x23, #0x1
    44ac: 91006318     	add	x24, x24, #0x18
    44b0: eb0802ff     	cmp	x23, x8
    44b4: 54fffea3     	b.lo	0x4488 <.text+0x3488>
    44b8: 14000005     	b	0x44cc <.text+0x34cc>
    44bc: f9403ac8     	ldr	x8, [x22, #0x70]
    44c0: aa1f03f4     	mov	x20, xzr
    44c4: f8786908     	ldr	x8, [x8, x24]
    44c8: f9000268     	str	x8, [x19]
    44cc: aa1403e0     	mov	x0, x20
    44d0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    44d4: a94257f6     	ldp	x22, x21, [sp, #0x20]
    44d8: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    44dc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    44e0: d65f03c0     	ret
    44e4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    44e8: f9000bf5     	str	x21, [sp, #0x10]
    44ec: a9024ff4     	stp	x20, x19, [sp, #0x20]
    44f0: 910003fd     	mov	x29, sp
    44f4: b0000055     	adrp	x21, 0xd000
    44f8: aa0403f3     	mov	x19, x4
    44fc: aa0003f4     	mov	x20, x0
    4500: 910063a4     	add	x4, x29, #0x18
    4504: 52804000     	mov	w0, #0x200              // =512
    4508: f94012a8     	ldr	x8, [x21, #0x20]
    450c: f9402908     	ldr	x8, [x8, #0x50]
    4510: d63f0100     	blr	x8
    4514: b6f800c0     	tbz	x0, #0x3f, 0x452c <.text+0x352c>
    4518: d0000021     	adrp	x1, 0xa000 <.text+0x9000>
    451c: aa0003e2     	mov	x2, x0
    4520: 911ed021     	add	x1, x1, #0x7b4
    4524: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    4528: 97fffb9e     	bl	0x33a0 <.text+0x23a0>
    452c: f94012a8     	ldr	x8, [x21, #0x20]
    4530: aa1403e0     	mov	x0, x20
    4534: f9400fa1     	ldr	x1, [x29, #0x18]
    4538: aa1303e2     	mov	x2, x19
    453c: f9405508     	ldr	x8, [x8, #0xa8]
    4540: d63f0100     	blr	x8
    4544: b6f800c0     	tbz	x0, #0x3f, 0x455c <.text+0x355c>
    4548: d0000021     	adrp	x1, 0xa000 <.text+0x9000>
    454c: aa0003e2     	mov	x2, x0
    4550: 911ed021     	add	x1, x1, #0x7b4
    4554: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    4558: 97fffb92     	bl	0x33a0 <.text+0x23a0>
    455c: f94012a8     	ldr	x8, [x21, #0x20]
    4560: f9400fa0     	ldr	x0, [x29, #0x18]
    4564: f9403508     	ldr	x8, [x8, #0x68]
    4568: d63f0100     	blr	x8
    456c: f9400fa0     	ldr	x0, [x29, #0x18]
    4570: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4574: f9400bf5     	ldr	x21, [sp, #0x10]
    4578: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    457c: d65f03c0     	ret
    4580: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    4584: f9000bf9     	str	x25, [sp, #0x10]
    4588: a9025ff8     	stp	x24, x23, [sp, #0x20]
    458c: a90357f6     	stp	x22, x21, [sp, #0x30]
    4590: a9044ff4     	stp	x20, x19, [sp, #0x40]
    4594: 910003fd     	mov	x29, sp
    4598: aa0303f3     	mov	x19, x3
    459c: aa0203f4     	mov	x20, x2
    45a0: aa0103f5     	mov	x21, x1
    45a4: aa0003f6     	mov	x22, x0
    45a8: f9000fbf     	str	xzr, [x29, #0x18]
    45ac: f900005f     	str	xzr, [x2]
    45b0: b4000083     	cbz	x3, 0x45c0 <.text+0x35c0>
    45b4: f900027f     	str	xzr, [x19]
    45b8: f9400284     	ldr	x4, [x20]
    45bc: 14000002     	b	0x45c4 <.text+0x35c4>
    45c0: aa1f03e4     	mov	x4, xzr
    45c4: b0000058     	adrp	x24, 0xd000
    45c8: 910063a3     	add	x3, x29, #0x18
    45cc: aa1603e0     	mov	x0, x22
    45d0: aa1503e1     	mov	x1, x21
    45d4: aa1f03e2     	mov	x2, xzr
    45d8: d28000b9     	mov	x25, #0x5               // =5
    45dc: f9400708     	ldr	x8, [x24, #0x8]
    45e0: f2f00019     	movk	x25, #0x8000, lsl #48
    45e4: f9402508     	ldr	x8, [x8, #0x48]
    45e8: d63f0100     	blr	x8
    45ec: aa0003f7     	mov	x23, x0
    45f0: eb19001f     	cmp	x0, x25
    45f4: 540002e1     	b.ne	0x4650 <.text+0x3650>
    45f8: f9400fa0     	ldr	x0, [x29, #0x18]
    45fc: 97ffff05     	bl	0x4210 <.text+0x3210>
    4600: f9000280     	str	x0, [x20]
    4604: b4000240     	cbz	x0, 0x464c <.text+0x364c>
    4608: f9400708     	ldr	x8, [x24, #0x8]
    460c: aa0003e4     	mov	x4, x0
    4610: 910063a3     	add	x3, x29, #0x18
    4614: aa1603e0     	mov	x0, x22
    4618: aa1503e1     	mov	x1, x21
    461c: aa1f03e2     	mov	x2, xzr
    4620: f9402508     	ldr	x8, [x8, #0x48]
    4624: d63f0100     	blr	x8
    4628: aa0003f7     	mov	x23, x0
    462c: b6f80080     	tbz	x0, #0x3f, 0x463c <.text+0x363c>
    4630: f9400280     	ldr	x0, [x20]
    4634: 97fffec3     	bl	0x4140 <.text+0x3140>
    4638: f900029f     	str	xzr, [x20]
    463c: b40000b3     	cbz	x19, 0x4650 <.text+0x3650>
    4640: f9400fa8     	ldr	x8, [x29, #0x18]
    4644: f9000268     	str	x8, [x19]
    4648: 14000002     	b	0x4650 <.text+0x3650>
    464c: 91001337     	add	x23, x25, #0x4
    4650: aa1703e0     	mov	x0, x23
    4654: f9400bf9     	ldr	x25, [sp, #0x10]
    4658: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    465c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    4660: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    4664: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    4668: d65f03c0     	ret
    466c: aa0203e3     	mov	x3, x2
    4670: aa0103e2     	mov	x2, x1
    4674: 90000041     	adrp	x1, 0xc000
    4678: 9100a021     	add	x1, x1, #0x28
    467c: 17ffffc1     	b	0x4580 <.text+0x3580>
    4680: d10483ff     	sub	sp, sp, #0x120
    4684: a90d7bfd     	stp	x29, x30, [sp, #0xd0]
    4688: a90e67fc     	stp	x28, x25, [sp, #0xe0]
    468c: a90f5ff8     	stp	x24, x23, [sp, #0xf0]
    4690: a91057f6     	stp	x22, x21, [sp, #0x100]
    4694: a9114ff4     	stp	x20, x19, [sp, #0x110]
    4698: 910343fd     	add	x29, sp, #0xd0
    469c: 910003e8     	mov	x8, sp
    46a0: 928005e9     	mov	x9, #-0x30              // =-48
    46a4: d10143aa     	sub	x10, x29, #0x50
    46a8: aa0103f3     	mov	x19, x1
    46ac: aa0003f4     	mov	x20, x0
    46b0: f2dff009     	movk	x9, #0xff80, lsl #32
    46b4: 91020108     	add	x8, x8, #0x80
    46b8: 9100c14a     	add	x10, x10, #0x30
    46bc: 910143ab     	add	x11, x29, #0x50
    46c0: a93b93a3     	stp	x3, x4, [x29, #-0x48]
    46c4: f81b03a2     	stur	x2, [x29, #-0x50]
    46c8: a93c9ba5     	stp	x5, x6, [x29, #-0x38]
    46cc: f81d83a7     	stur	x7, [x29, #-0x28]
    46d0: ad0007e0     	stp	q0, q1, [sp]
    46d4: ad010fe2     	stp	q2, q3, [sp, #0x20]
    46d8: ad0217e4     	stp	q4, q5, [sp, #0x40]
    46dc: ad031fe6     	stp	q6, q7, [sp, #0x60]
    46e0: a93f27a8     	stp	x8, x9, [x29, #-0x10]
    46e4: a93e2bab     	stp	x11, x10, [x29, #-0x20]
    46e8: b89f83a8     	ldursw	x8, [x29, #-0x8]
    46ec: 36f80108     	tbz	w8, #0x1f, 0x470c <.text+0x370c>
    46f0: 11002109     	add	w9, w8, #0x8
    46f4: 3100211f     	cmn	w8, #0x8
    46f8: b81f83a9     	stur	w9, [x29, #-0x8]
    46fc: 54000088     	b.hi	0x470c <.text+0x370c>
    4700: f85e83a9     	ldur	x9, [x29, #-0x18]
    4704: 8b080128     	add	x8, x9, x8
    4708: 14000004     	b	0x4718 <.text+0x3718>
    470c: f85e03a8     	ldur	x8, [x29, #-0x20]
    4710: 91002109     	add	x9, x8, #0x8
    4714: f81e03a9     	stur	x9, [x29, #-0x20]
    4718: f9400115     	ldr	x21, [x8]
    471c: b40008d5     	cbz	x21, 0x4834 <.text+0x3834>
    4720: aa1503e0     	mov	x0, x21
    4724: 97fffc21     	bl	0x37a8 <.text+0x27a8>
    4728: f1000c1f     	cmp	x0, #0x3
    472c: 54000089     	b.ls	0x473c <.text+0x373c>
    4730: 52800076     	mov	w22, #0x3               // =3
    4734: b50000d3     	cbnz	x19, 0x474c <.text+0x374c>
    4738: 1400002b     	b	0x47e4 <.text+0x37e4>
    473c: aa1503e0     	mov	x0, x21
    4740: 97fffc1a     	bl	0x37a8 <.text+0x27a8>
    4744: aa0003f6     	mov	x22, x0
    4748: b40004f3     	cbz	x19, 0x47e4 <.text+0x37e4>
    474c: b4fffcf6     	cbz	x22, 0x46e8 <.text+0x36e8>
    4750: d10006b9     	sub	x25, x21, #0x1
    4754: 52800078     	mov	w24, #0x3               // =3
    4758: 39400288     	ldrb	w8, [x20]
    475c: 34000328     	cbz	w8, 0x47c0 <.text+0x37c0>
    4760: aa1403f7     	mov	x23, x20
    4764: b50001f3     	cbnz	x19, 0x47a0 <.text+0x37a0>
    4768: 14000002     	b	0x4770 <.text+0x3770>
    476c: 38401ee8     	ldrb	w8, [x23, #0x1]!
    4770: 7100ed1f     	cmp	w8, #0x3b
    4774: 54ffffc0     	b.eq	0x476c <.text+0x376c>
    4778: 52800029     	mov	w9, #0x1                // =1
    477c: 340000c8     	cbz	w8, 0x4794 <.text+0x3794>
    4780: 7100ed1f     	cmp	w8, #0x3b
    4784: 54000080     	b.eq	0x4794 <.text+0x3794>
    4788: 38696ae8     	ldrb	w8, [x23, x9]
    478c: 91000529     	add	x9, x9, #0x1
    4790: 35ffff88     	cbnz	w8, 0x4780 <.text+0x3780>
    4794: d1000538     	sub	x24, x9, #0x1
    4798: eb1802df     	cmp	x22, x24
    479c: 540000c8     	b.hi	0x47b4 <.text+0x37b4>
    47a0: aa1703e0     	mov	x0, x23
    47a4: aa1503e1     	mov	x1, x21
    47a8: aa1603e2     	mov	x2, x22
    47ac: 97fffc0a     	bl	0x37d4 <.text+0x27d4>
    47b0: b4000280     	cbz	x0, 0x4800 <.text+0x3800>
    47b4: 8b1802f7     	add	x23, x23, x24
    47b8: 394002e8     	ldrb	w8, [x23]
    47bc: 35fffd48     	cbnz	w8, 0x4764 <.text+0x3764>
    47c0: b5fff953     	cbnz	x19, 0x46e8 <.text+0x36e8>
    47c4: f10006c8     	subs	x8, x22, #0x1
    47c8: 54fff900     	b.eq	0x46e8 <.text+0x36e8>
    47cc: 38766b29     	ldrb	w9, [x25, x22]
    47d0: aa0803f6     	mov	x22, x8
    47d4: 7100b53f     	cmp	w9, #0x2d
    47d8: 54ffff61     	b.ne	0x47c4 <.text+0x37c4>
    47dc: aa0803f6     	mov	x22, x8
    47e0: 17ffffde     	b	0x4758 <.text+0x3758>
    47e4: aa1f03f6     	mov	x22, xzr
    47e8: 38766aa8     	ldrb	w8, [x21, x22]
    47ec: 34fffb08     	cbz	w8, 0x474c <.text+0x374c>
    47f0: 7100ed1f     	cmp	w8, #0x3b
    47f4: 54fffac0     	b.eq	0x474c <.text+0x374c>
    47f8: 910006d6     	add	x22, x22, #0x1
    47fc: 17fffffb     	b	0x47e8 <.text+0x37e8>
    4800: 91000700     	add	x0, x24, #0x1
    4804: 97fffed1     	bl	0x4348 <.text+0x3348>
    4808: b4000080     	cbz	x0, 0x4818 <.text+0x3818>
    480c: aa1703e1     	mov	x1, x23
    4810: aa1803e2     	mov	x2, x24
    4814: 97fff9cd     	bl	0x2f48 <.text+0x1f48>
    4818: a9514ff4     	ldp	x20, x19, [sp, #0x110]
    481c: a95057f6     	ldp	x22, x21, [sp, #0x100]
    4820: a94f5ff8     	ldp	x24, x23, [sp, #0xf0]
    4824: a94e67fc     	ldp	x28, x25, [sp, #0xe0]
    4828: a94d7bfd     	ldp	x29, x30, [sp, #0xd0]
    482c: 910483ff     	add	sp, sp, #0x120
    4830: d65f03c0     	ret
    4834: aa1f03e0     	mov	x0, xzr
    4838: 17fffff8     	b	0x4818 <.text+0x3818>
    483c: d101c3ff     	sub	sp, sp, #0x70
    4840: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4844: a9026ffc     	stp	x28, x27, [sp, #0x20]
    4848: a90367fa     	stp	x26, x25, [sp, #0x30]
    484c: a9045ff8     	stp	x24, x23, [sp, #0x40]
    4850: a90557f6     	stp	x22, x21, [sp, #0x50]
    4854: a9064ff4     	stp	x20, x19, [sp, #0x60]
    4858: 910043fd     	add	x29, sp, #0x10
    485c: d2800059     	mov	x25, #0x2               // =2
    4860: f2f00019     	movk	x25, #0x8000, lsl #48
    4864: b4000a80     	cbz	x0, 0x49b4 <.text+0x39b4>
    4868: aa0103fa     	mov	x26, x1
    486c: b4000a41     	cbz	x1, 0x49b4 <.text+0x39b4>
    4870: aa0303f3     	mov	x19, x3
    4874: b4000a03     	cbz	x3, 0x49b4 <.text+0x39b4>
    4878: aa0603f6     	mov	x22, x6
    487c: aa0503f7     	mov	x23, x5
    4880: aa0003fb     	mov	x27, x0
    4884: aa0403f8     	mov	x24, x4
    4888: 2a0203f4     	mov	w20, w2
    488c: 51001848     	sub	w8, w2, #0x6
    4890: 7100111f     	cmp	w8, #0x4
    4894: 54000063     	b.lo	0x48a0 <.text+0x38a0>
    4898: 7100429f     	cmp	w20, #0x10
    489c: 540008c1     	b.ne	0x49b4 <.text+0x39b4>
    48a0: aa1b03e0     	mov	x0, x27
    48a4: 9400004d     	bl	0x49d8 <.text+0x39d8>
    48a8: aa0003f5     	mov	x21, x0
    48ac: b50002a0     	cbnz	x0, 0x4900 <.text+0x3900>
    48b0: 52801d00     	mov	w0, #0xe8               // =232
    48b4: 97fffea5     	bl	0x4348 <.text+0x3348>
    48b8: b40007c0     	cbz	x0, 0x49b0 <.text+0x39b0>
    48bc: 528a0908     	mov	w8, #0x5048             // =20552
    48c0: aa0003f5     	mov	x21, x0
    48c4: 72a90868     	movk	w8, #0x4843, lsl #16
    48c8: 5280031c     	mov	w28, #0x18              // =24
    48cc: b9000008     	str	w8, [x0]
    48d0: 8b1c02a0     	add	x0, x21, x28
    48d4: 94001587     	bl	0x9ef0 <.text+0x8ef0>
    48d8: 9100439c     	add	x28, x28, #0x10
    48dc: f101a39f     	cmp	x28, #0x68
    48e0: 54ffff81     	b.ne	0x48d0 <.text+0x38d0>
    48e4: 910312a0     	add	x0, x21, #0xc4
    48e8: aa1b03e1     	mov	x1, x27
    48ec: 97fff991     	bl	0x2f30 <.text+0x1f30>
    48f0: b0000048     	adrp	x8, 0xd000
    48f4: 910022a1     	add	x1, x21, #0x8
    48f8: f9405100     	ldr	x0, [x8, #0xa0]
    48fc: 9400157f     	bl	0x9ef8 <.text+0x8ef8>
    4900: 52800d00     	mov	w0, #0x68               // =104
    4904: 97fffe91     	bl	0x4348 <.text+0x3348>
    4908: b4000540     	cbz	x0, 0x49b0 <.text+0x39b0>
    490c: 528a0908     	mov	w8, #0x5048             // =20552
    4910: aa0003fc     	mov	x28, x0
    4914: 72aa0868     	movk	w8, #0x5043, lsl #16
    4918: 9100a000     	add	x0, x0, #0x28
    491c: aa1b03e1     	mov	x1, x27
    4920: b9000388     	str	w8, [x28]
    4924: 97fff983     	bl	0x2f30 <.text+0x1f30>
    4928: b9003b94     	str	w20, [x28, #0x38]
    492c: f900239a     	str	x26, [x28, #0x40]
    4930: 97fffb10     	bl	0x3570 <.text+0x2570>
    4934: 72001c1f     	tst	w0, #0xff
    4938: 54000140     	b.eq	0x4960 <.text+0x3960>
    493c: a904df98     	stp	x24, x23, [x28, #0x48]
    4940: f9002f96     	str	x22, [x28, #0x58]
    4944: f9405ea8     	ldr	x8, [x21, #0xb8]
    4948: b4000048     	cbz	x8, 0x4950 <.text+0x3950>
    494c: 97fffeb9     	bl	0x4430 <.text+0x3430>
    4950: 381fc3bf     	sturb	wzr, [x29, #-0x4]
    4954: 385fc3a8     	ldurb	w8, [x29, #-0x4]
    4958: 11000508     	add	w8, w8, #0x1
    495c: 381fc3a8     	sturb	w8, [x29, #-0x4]
    4960: d0000029     	adrp	x9, 0xa000 <.text+0x9000>
    4964: aa1f03e8     	mov	x8, xzr
    4968: 913bb129     	add	x9, x9, #0xeec
    496c: b868792a     	ldr	w10, [x9, x8, lsl #2]
    4970: 6b14015f     	cmp	w10, w20
    4974: 540000a0     	b.eq	0x4988 <.text+0x3988>
    4978: 91000508     	add	x8, x8, #0x1
    497c: f100151f     	cmp	x8, #0x5
    4980: 54ffff61     	b.ne	0x496c <.text+0x396c>
    4984: aa1f03e8     	mov	x8, xzr
    4988: 8b0812a8     	add	x8, x21, x8, lsl #4
    498c: 91002381     	add	x1, x28, #0x8
    4990: 91006100     	add	x0, x8, #0x18
    4994: 94001559     	bl	0x9ef8 <.text+0x8ef8>
    4998: f900027c     	str	x28, [x19]
    499c: f9405ea8     	ldr	x8, [x21, #0xb8]
    49a0: f100011f     	cmp	x8, #0x0
    49a4: 528000a8     	mov	w8, #0x5                // =5
    49a8: 9a8803f9     	csel	x25, xzr, x8, eq
    49ac: 14000002     	b	0x49b4 <.text+0x39b4>
    49b0: 91001f39     	add	x25, x25, #0x7
    49b4: aa1903e0     	mov	x0, x25
    49b8: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    49bc: a94557f6     	ldp	x22, x21, [sp, #0x50]
    49c0: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    49c4: a94367fa     	ldp	x26, x25, [sp, #0x30]
    49c8: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    49cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    49d0: 9101c3ff     	add	sp, sp, #0x70
    49d4: d65f03c0     	ret
    49d8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    49dc: a90167fa     	stp	x26, x25, [sp, #0x10]
    49e0: a9025ff8     	stp	x24, x23, [sp, #0x20]
    49e4: a90357f6     	stp	x22, x21, [sp, #0x30]
    49e8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    49ec: 910003fd     	mov	x29, sp
    49f0: b0000059     	adrp	x25, 0xd000
    49f4: aa0003f3     	mov	x19, x0
    49f8: f9405328     	ldr	x8, [x25, #0xa0]
    49fc: aa0803e0     	mov	x0, x8
    4a00: 94001552     	bl	0x9f48 <.text+0x8f48>
    4a04: f9405328     	ldr	x8, [x25, #0xa0]
    4a08: eb08001f     	cmp	x0, x8
    4a0c: 540003c0     	b.eq	0x4a84 <.text+0x3a84>
    4a10: 528a091a     	mov	w26, #0x5048            // =20552
    4a14: d0000036     	adrp	x22, 0xa000 <.text+0x9000>
    4a18: d0000037     	adrp	x23, 0xa000 <.text+0x9000>
    4a1c: aa0003f4     	mov	x20, x0
    4a20: 72a9087a     	movk	w26, #0x4843, lsl #16
    4a24: 52801415     	mov	w21, #0xa0              // =160
    4a28: 913b6ed6     	add	x22, x22, #0xedb
    4a2c: 91236af7     	add	x23, x23, #0x8da
    4a30: aa1403f8     	mov	x24, x20
    4a34: b85f8f08     	ldr	w8, [x24, #-0x8]!
    4a38: 6b1a011f     	cmp	w8, w26
    4a3c: 540000c0     	b.eq	0x4a54 <.text+0x3a54>
    4a40: aa1603e0     	mov	x0, x22
    4a44: aa1503e1     	mov	x1, x21
    4a48: aa1703e2     	mov	x2, x23
    4a4c: 97fffa8d     	bl	0x3480 <.text+0x2480>
    4a50: aa1403f8     	mov	x24, x20
    4a54: 91031301     	add	x1, x24, #0xc4
    4a58: aa1303e0     	mov	x0, x19
    4a5c: 97fff937     	bl	0x2f38 <.text+0x1f38>
    4a60: 72001c1f     	tst	w0, #0xff
    4a64: 54000121     	b.ne	0x4a88 <.text+0x3a88>
    4a68: f9405320     	ldr	x0, [x25, #0xa0]
    4a6c: aa1403e1     	mov	x1, x20
    4a70: 94001538     	bl	0x9f50 <.text+0x8f50>
    4a74: f9405328     	ldr	x8, [x25, #0xa0]
    4a78: aa0003f4     	mov	x20, x0
    4a7c: eb08001f     	cmp	x0, x8
    4a80: 54fffd81     	b.ne	0x4a30 <.text+0x3a30>
    4a84: aa1f03f8     	mov	x24, xzr
    4a88: aa1803e0     	mov	x0, x24
    4a8c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    4a90: a94357f6     	ldp	x22, x21, [sp, #0x30]
    4a94: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    4a98: a94167fa     	ldp	x26, x25, [sp, #0x10]
    4a9c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    4aa0: d65f03c0     	ret
    4aa4: d10243ff     	sub	sp, sp, #0x90
    4aa8: a9037bfd     	stp	x29, x30, [sp, #0x30]
    4aac: a9046ffc     	stp	x28, x27, [sp, #0x40]
    4ab0: a90567fa     	stp	x26, x25, [sp, #0x50]
    4ab4: a9065ff8     	stp	x24, x23, [sp, #0x60]
    4ab8: a90757f6     	stp	x22, x21, [sp, #0x70]
    4abc: a9084ff4     	stp	x20, x19, [sp, #0x80]
    4ac0: 9100c3fd     	add	x29, sp, #0x30
    4ac4: d2800055     	mov	x21, #0x2               // =2
    4ac8: f81f83a1     	stur	x1, [x29, #-0x8]
    4acc: f2f00015     	movk	x21, #0x8000, lsl #48
    4ad0: b4001480     	cbz	x0, 0x4d60 <.text+0x3d60>
    4ad4: b4001461     	cbz	x1, 0x4d60 <.text+0x3d60>
    4ad8: aa0003f4     	mov	x20, x0
    4adc: 97ffffbf     	bl	0x49d8 <.text+0x39d8>
    4ae0: b40010c0     	cbz	x0, 0x4cf8 <.text+0x3cf8>
    4ae4: 91036014     	add	x20, x0, #0xd8
    4ae8: aa0003fa     	mov	x26, x0
    4aec: 910063e0     	add	x0, sp, #0x18
    4af0: aa1403e1     	mov	x1, x20
    4af4: 52800102     	mov	w2, #0x8                // =8
    4af8: 528a0913     	mov	w19, #0x5048            // =20552
    4afc: 72aa0873     	movk	w19, #0x5043, lsl #16
    4b00: 97fff912     	bl	0x2f48 <.text+0x1f48>
    4b04: d10023a1     	sub	x1, x29, #0x8
    4b08: aa1403e0     	mov	x0, x20
    4b0c: 52800102     	mov	w2, #0x8                // =8
    4b10: f90007f4     	str	x20, [sp, #0x8]
    4b14: 97fff90d     	bl	0x2f48 <.text+0x1f48>
    4b18: f9407348     	ldr	x8, [x26, #0xe0]
    4b1c: d0000036     	adrp	x22, 0xa000 <.text+0x9000>
    4b20: f85f83b5     	ldur	x21, [x29, #-0x8]
    4b24: d0000039     	adrp	x25, 0xa000 <.text+0x9000>
    4b28: aa1f03f4     	mov	x20, xzr
    4b2c: 913b6ed6     	add	x22, x22, #0xedb
    4b30: 52802fd8     	mov	w24, #0x17e             // =382
    4b34: 91236b39     	add	x25, x25, #0x8da
    4b38: 91000508     	add	x8, x8, #0x1
    4b3c: f9007348     	str	x8, [x26, #0xe0]
    4b40: 8b141348     	add	x8, x26, x20, lsl #4
    4b44: aa1a03f7     	mov	x23, x26
    4b48: 9100611a     	add	x26, x8, #0x18
    4b4c: aa1a03e0     	mov	x0, x26
    4b50: 940014fe     	bl	0x9f48 <.text+0x8f48>
    4b54: aa0003fb     	mov	x27, x0
    4b58: aa1a03e0     	mov	x0, x26
    4b5c: aa1b03e1     	mov	x1, x27
    4b60: 94001509     	bl	0x9f84 <.text+0x8f84>
    4b64: 72001c1f     	tst	w0, #0xff
    4b68: 540004a1     	b.ne	0x4bfc <.text+0x3bfc>
    4b6c: aa1b03fc     	mov	x28, x27
    4b70: b85f8f88     	ldr	w8, [x28, #-0x8]!
    4b74: 6b13011f     	cmp	w8, w19
    4b78: 540000c0     	b.eq	0x4b90 <.text+0x3b90>
    4b7c: aa1603e0     	mov	x0, x22
    4b80: aa1803e1     	mov	x1, x24
    4b84: aa1903e2     	mov	x2, x25
    4b88: 97fffa3e     	bl	0x3480 <.text+0x2480>
    4b8c: aa1b03fc     	mov	x28, x27
    4b90: 39418388     	ldrb	w8, [x28, #0x60]
    4b94: f81f03bc     	stur	x28, [x29, #-0x10]
    4b98: 350002a8     	cbnz	w8, 0x4bec <.text+0x3bec>
    4b9c: 97fffe25     	bl	0x4430 <.text+0x3430>
    4ba0: 97fffa74     	bl	0x3570 <.text+0x2570>
    4ba4: 72001c1f     	tst	w0, #0xff
    4ba8: 54000140     	b.eq	0x4bd0 <.text+0x3bd0>
    4bac: b0000040     	adrp	x0, 0xd000
    4bb0: aa1c03e1     	mov	x1, x28
    4bb4: 9102a000     	add	x0, x0, #0xa8
    4bb8: 52800d02     	mov	w2, #0x68               // =104
    4bbc: 97fff8e3     	bl	0x2f48 <.text+0x1f48>
    4bc0: 390053ff     	strb	wzr, [sp, #0x14]
    4bc4: 394053e8     	ldrb	w8, [sp, #0x14]
    4bc8: 11000508     	add	w8, w8, #0x1
    4bcc: 390053e8     	strb	w8, [sp, #0x14]
    4bd0: f9402388     	ldr	x8, [x28, #0x40]
    4bd4: aa1f03e0     	mov	x0, xzr
    4bd8: aa1c03e1     	mov	x1, x28
    4bdc: d63f0100     	blr	x8
    4be0: 97fffe14     	bl	0x4430 <.text+0x3430>
    4be4: b94006a8     	ldr	w8, [x21, #0x4]
    4be8: 37380148     	tbnz	w8, #0x7, 0x4c10 <.text+0x3c10>
    4bec: aa1a03e0     	mov	x0, x26
    4bf0: aa1b03e1     	mov	x1, x27
    4bf4: 940014d7     	bl	0x9f50 <.text+0x8f50>
    4bf8: 17ffffd7     	b	0x4b54 <.text+0x3b54>
    4bfc: 91000694     	add	x20, x20, #0x1
    4c00: aa1703fa     	mov	x26, x23
    4c04: f100169f     	cmp	x20, #0x5
    4c08: 54fff9c1     	b.ne	0x4b40 <.text+0x3b40>
    4c0c: 14000005     	b	0x4c20 <.text+0x3c20>
    4c10: 12187908     	and	w8, w8, #0xffffff7f
    4c14: b90006a8     	str	w8, [x21, #0x4]
    4c18: 97fffe06     	bl	0x4430 <.text+0x3430>
    4c1c: aa1703fa     	mov	x26, x23
    4c20: f9405f48     	ldr	x8, [x26, #0xb8]
    4c24: 910063e1     	add	x1, sp, #0x18
    4c28: f94007e0     	ldr	x0, [sp, #0x8]
    4c2c: 52800102     	mov	w2, #0x8                // =8
    4c30: 91000508     	add	x8, x8, #0x1
    4c34: f9005f48     	str	x8, [x26, #0xb8]
    4c38: 97fff8c4     	bl	0x2f48 <.text+0x1f48>
    4c3c: f9407348     	ldr	x8, [x26, #0xe0]
    4c40: f1000508     	subs	x8, x8, #0x1
    4c44: f9007348     	str	x8, [x26, #0xe0]
    4c48: 54000541     	b.ne	0x4cf0 <.text+0x3cf0>
    4c4c: d0000035     	adrp	x21, 0xa000 <.text+0x9000>
    4c50: d0000036     	adrp	x22, 0xa000 <.text+0x9000>
    4c54: aa1f03f9     	mov	x25, xzr
    4c58: 52803554     	mov	w20, #0x1aa             // =426
    4c5c: 913b6eb5     	add	x21, x21, #0xedb
    4c60: 91236ad6     	add	x22, x22, #0x8da
    4c64: 8b191348     	add	x8, x26, x25, lsl #4
    4c68: 91006117     	add	x23, x8, #0x18
    4c6c: aa1703e0     	mov	x0, x23
    4c70: 940014b6     	bl	0x9f48 <.text+0x8f48>
    4c74: aa0003f8     	mov	x24, x0
    4c78: aa1703e0     	mov	x0, x23
    4c7c: aa1803e1     	mov	x1, x24
    4c80: 940014c1     	bl	0x9f84 <.text+0x8f84>
    4c84: 72001c1f     	tst	w0, #0xff
    4c88: 540002e1     	b.ne	0x4ce4 <.text+0x3ce4>
    4c8c: aa1803e8     	mov	x8, x24
    4c90: b85f8d09     	ldr	w9, [x8, #-0x8]!
    4c94: 6b13013f     	cmp	w9, w19
    4c98: 540000c0     	b.eq	0x4cb0 <.text+0x3cb0>
    4c9c: aa1503e0     	mov	x0, x21
    4ca0: aa1403e1     	mov	x1, x20
    4ca4: aa1603e2     	mov	x2, x22
    4ca8: 97fff9f6     	bl	0x3480 <.text+0x2480>
    4cac: aa1803e8     	mov	x8, x24
    4cb0: 39418109     	ldrb	w9, [x8, #0x60]
    4cb4: f81f03a8     	stur	x8, [x29, #-0x10]
    4cb8: 340000e9     	cbz	w9, 0x4cd4 <.text+0x3cd4>
    4cbc: aa1803e0     	mov	x0, x24
    4cc0: 940014c1     	bl	0x9fc4 <.text+0x8fc4>
    4cc4: aa0003f8     	mov	x24, x0
    4cc8: d10043a0     	sub	x0, x29, #0x10
    4ccc: 97fffaf8     	bl	0x38ac <.text+0x28ac>
    4cd0: f9400718     	ldr	x24, [x24, #0x8]
    4cd4: aa1703e0     	mov	x0, x23
    4cd8: aa1803e1     	mov	x1, x24
    4cdc: 9400149d     	bl	0x9f50 <.text+0x8f50>
    4ce0: 17ffffe5     	b	0x4c74 <.text+0x3c74>
    4ce4: 91000739     	add	x25, x25, #0x1
    4ce8: f100173f     	cmp	x25, #0x5
    4cec: 54fffbc1     	b.ne	0x4c64 <.text+0x3c64>
    4cf0: aa1f03f5     	mov	x21, xzr
    4cf4: 1400001b     	b	0x4d60 <.text+0x3d60>
    4cf8: 52801d00     	mov	w0, #0xe8               // =232
    4cfc: 97fffd93     	bl	0x4348 <.text+0x3348>
    4d00: b40002e0     	cbz	x0, 0x4d5c <.text+0x3d5c>
    4d04: 528a0908     	mov	w8, #0x5048             // =20552
    4d08: aa0003f3     	mov	x19, x0
    4d0c: 72a90868     	movk	w8, #0x4843, lsl #16
    4d10: 52800315     	mov	w21, #0x18              // =24
    4d14: b9000008     	str	w8, [x0]
    4d18: 8b150260     	add	x0, x19, x21
    4d1c: 94001475     	bl	0x9ef0 <.text+0x8ef0>
    4d20: 910042b5     	add	x21, x21, #0x10
    4d24: f101a2bf     	cmp	x21, #0x68
    4d28: 54ffff81     	b.ne	0x4d18 <.text+0x3d18>
    4d2c: 91031260     	add	x0, x19, #0xc4
    4d30: aa1403e1     	mov	x1, x20
    4d34: 97fff87f     	bl	0x2f30 <.text+0x1f30>
    4d38: b0000048     	adrp	x8, 0xd000
    4d3c: 91002261     	add	x1, x19, #0x8
    4d40: f9405100     	ldr	x0, [x8, #0xa0]
    4d44: 9400146d     	bl	0x9ef8 <.text+0x8ef8>
    4d48: f9405e68     	ldr	x8, [x19, #0xb8]
    4d4c: aa1f03f5     	mov	x21, xzr
    4d50: 91000508     	add	x8, x8, #0x1
    4d54: f9005e68     	str	x8, [x19, #0xb8]
    4d58: 14000002     	b	0x4d60 <.text+0x3d60>
    4d5c: 91001eb5     	add	x21, x21, #0x7
    4d60: aa1503e0     	mov	x0, x21
    4d64: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    4d68: a94757f6     	ldp	x22, x21, [sp, #0x70]
    4d6c: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    4d70: a94567fa     	ldp	x26, x25, [sp, #0x50]
    4d74: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    4d78: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    4d7c: 910243ff     	add	sp, sp, #0x90
    4d80: d65f03c0     	ret
    4d84: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    4d88: f9000bfb     	str	x27, [sp, #0x10]
    4d8c: a90267fa     	stp	x26, x25, [sp, #0x20]
    4d90: a9035ff8     	stp	x24, x23, [sp, #0x30]
    4d94: a90457f6     	stp	x22, x21, [sp, #0x40]
    4d98: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4d9c: 910003fd     	mov	x29, sp
    4da0: d2800053     	mov	x19, #0x2               // =2
    4da4: f2f00013     	movk	x19, #0x8000, lsl #48
    4da8: b40008a0     	cbz	x0, 0x4ebc <.text+0x3ebc>
    4dac: b9400008     	ldr	w8, [x0]
    4db0: 528a091b     	mov	w27, #0x5048            // =20552
    4db4: aa0003f4     	mov	x20, x0
    4db8: 72aa087b     	movk	w27, #0x5043, lsl #16
    4dbc: 6b1b011f     	cmp	w8, w27
    4dc0: 540007e1     	b.ne	0x4ebc <.text+0x3ebc>
    4dc4: 9100a280     	add	x0, x20, #0x28
    4dc8: 97ffff04     	bl	0x49d8 <.text+0x39d8>
    4dcc: b4000780     	cbz	x0, 0x4ebc <.text+0x3ebc>
    4dd0: b9400008     	ldr	w8, [x0]
    4dd4: aa0003f5     	mov	x21, x0
    4dd8: 528a0909     	mov	w9, #0x5048             // =20552
    4ddc: 72a90869     	movk	w9, #0x4843, lsl #16
    4de0: 6b09011f     	cmp	w8, w9
    4de4: 540006c1     	b.ne	0x4ebc <.text+0x3ebc>
    4de8: b9403a89     	ldr	w9, [x20, #0x38]
    4dec: d000002a     	adrp	x10, 0xa000 <.text+0x9000>
    4df0: aa1f03e8     	mov	x8, xzr
    4df4: 913bb14a     	add	x10, x10, #0xeec
    4df8: b868794b     	ldr	w11, [x10, x8, lsl #2]
    4dfc: 6b09017f     	cmp	w11, w9
    4e00: 540000a0     	b.eq	0x4e14 <.text+0x3e14>
    4e04: 91000508     	add	x8, x8, #0x1
    4e08: f100151f     	cmp	x8, #0x5
    4e0c: 54ffff61     	b.ne	0x4df8 <.text+0x3df8>
    4e10: aa1f03e8     	mov	x8, xzr
    4e14: 8b0812a8     	add	x8, x21, x8, lsl #4
    4e18: 91006116     	add	x22, x8, #0x18
    4e1c: aa1603e0     	mov	x0, x22
    4e20: 9400144a     	bl	0x9f48 <.text+0x8f48>
    4e24: eb16001f     	cmp	x0, x22
    4e28: 540004a0     	b.eq	0x4ebc <.text+0x3ebc>
    4e2c: d0000039     	adrp	x25, 0xa000 <.text+0x9000>
    4e30: d000003a     	adrp	x26, 0xa000 <.text+0x9000>
    4e34: aa0003f7     	mov	x23, x0
    4e38: 52803b98     	mov	w24, #0x1dc             // =476
    4e3c: 913b6f39     	add	x25, x25, #0xedb
    4e40: 91236b5a     	add	x26, x26, #0x8da
    4e44: aa1703e8     	mov	x8, x23
    4e48: b85f8d09     	ldr	w9, [x8, #-0x8]!
    4e4c: 6b1b013f     	cmp	w9, w27
    4e50: 540000c0     	b.eq	0x4e68 <.text+0x3e68>
    4e54: aa1903e0     	mov	x0, x25
    4e58: aa1803e1     	mov	x1, x24
    4e5c: aa1a03e2     	mov	x2, x26
    4e60: 97fff988     	bl	0x3480 <.text+0x2480>
    4e64: aa1703e8     	mov	x8, x23
    4e68: eb14011f     	cmp	x8, x20
    4e6c: f9000fa8     	str	x8, [x29, #0x18]
    4e70: 54000100     	b.eq	0x4e90 <.text+0x3e90>
    4e74: aa1603e0     	mov	x0, x22
    4e78: aa1703e1     	mov	x1, x23
    4e7c: 94001435     	bl	0x9f50 <.text+0x8f50>
    4e80: aa0003f7     	mov	x23, x0
    4e84: eb16001f     	cmp	x0, x22
    4e88: 54fffde1     	b.ne	0x4e44 <.text+0x3e44>
    4e8c: 1400000c     	b	0x4ebc <.text+0x3ebc>
    4e90: f94072a8     	ldr	x8, [x21, #0xe0]
    4e94: b40000a8     	cbz	x8, 0x4ea8 <.text+0x3ea8>
    4e98: 52800028     	mov	w8, #0x1                // =1
    4e9c: aa1f03f3     	mov	x19, xzr
    4ea0: 39018288     	strb	w8, [x20, #0x60]
    4ea4: 14000006     	b	0x4ebc <.text+0x3ebc>
    4ea8: aa1703e0     	mov	x0, x23
    4eac: 94001446     	bl	0x9fc4 <.text+0x8fc4>
    4eb0: 910063a0     	add	x0, x29, #0x18
    4eb4: 97fffa7e     	bl	0x38ac <.text+0x28ac>
    4eb8: aa1f03f3     	mov	x19, xzr
    4ebc: aa1303e0     	mov	x0, x19
    4ec0: f9400bfb     	ldr	x27, [sp, #0x10]
    4ec4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    4ec8: a94457f6     	ldp	x22, x21, [sp, #0x40]
    4ecc: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    4ed0: a94267fa     	ldp	x26, x25, [sp, #0x20]
    4ed4: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    4ed8: d65f03c0     	ret
    4edc: d10103ff     	sub	sp, sp, #0x40
    4ee0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    4ee4: f9001bf3     	str	x19, [sp, #0x30]
    4ee8: 910083fd     	add	x29, sp, #0x20
    4eec: b0000053     	adrp	x19, 0xd000
    4ef0: 90000040     	adrp	x0, 0xc000
    4ef4: 9109e000     	add	x0, x0, #0x278
    4ef8: d10023a2     	sub	x2, x29, #0x8
    4efc: aa1f03e1     	mov	x1, xzr
    4f00: f9401268     	ldr	x8, [x19, #0x20]
    4f04: f940a108     	ldr	x8, [x8, #0x140]
    4f08: d63f0100     	blr	x8
    4f0c: 390033ff     	strb	wzr, [sp, #0xc]
    4f10: b7f803c0     	tbnz	x0, #0x3f, 0x4f88 <.text+0x3f88>
    4f14: f85f83a0     	ldur	x0, [x29, #-0x8]
    4f18: 910033e1     	add	x1, sp, #0xc
    4f1c: f9400008     	ldr	x8, [x0]
    4f20: d63f0100     	blr	x8
    4f24: 394033e8     	ldrb	w8, [sp, #0xc]
    4f28: 34000308     	cbz	w8, 0x4f88 <.text+0x3f88>
    4f2c: f85f83a0     	ldur	x0, [x29, #-0x8]
    4f30: 910043e1     	add	x1, sp, #0x10
    4f34: f9400408     	ldr	x8, [x0, #0x8]
    4f38: d63f0100     	blr	x8
    4f3c: b7f80600     	tbnz	x0, #0x3f, 0x4ffc <.text+0x3ffc>
    4f40: f9400be8     	ldr	x8, [sp, #0x10]
    4f44: 90000040     	adrp	x0, 0xc000
    4f48: b0000042     	adrp	x2, 0xd000
    4f4c: 911b3000     	add	x0, x0, #0x6cc
    4f50: 91028042     	add	x2, x2, #0xa0
    4f54: aa1f03e1     	mov	x1, xzr
    4f58: f9406908     	ldr	x8, [x8, #0xd0]
    4f5c: d63f0100     	blr	x8
    4f60: b6f804e0     	tbz	x0, #0x3f, 0x4ffc <.text+0x3ffc>
    4f64: 52800200     	mov	w0, #0x10               // =16
    4f68: 97fffcaa     	bl	0x4210 <.text+0x3210>
    4f6c: b0000048     	adrp	x8, 0xd000
    4f70: f9005100     	str	x0, [x8, #0xa0]
    4f74: b4000400     	cbz	x0, 0x4ff4 <.text+0x3ff4>
    4f78: 940013de     	bl	0x9ef0 <.text+0x8ef0>
    4f7c: f9400be8     	ldr	x8, [sp, #0x10]
    4f80: 9102a108     	add	x8, x8, #0xa8
    4f84: 14000012     	b	0x4fcc <.text+0x3fcc>
    4f88: f9401268     	ldr	x8, [x19, #0x20]
    4f8c: 90000040     	adrp	x0, 0xc000
    4f90: b0000042     	adrp	x2, 0xd000
    4f94: 911b3000     	add	x0, x0, #0x6cc
    4f98: 91028042     	add	x2, x2, #0xa0
    4f9c: aa1f03e1     	mov	x1, xzr
    4fa0: f940a108     	ldr	x8, [x8, #0x140]
    4fa4: d63f0100     	blr	x8
    4fa8: b6f802a0     	tbz	x0, #0x3f, 0x4ffc <.text+0x3ffc>
    4fac: 52800200     	mov	w0, #0x10               // =16
    4fb0: 97fffc98     	bl	0x4210 <.text+0x3210>
    4fb4: b0000048     	adrp	x8, 0xd000
    4fb8: f9005100     	str	x0, [x8, #0xa0]
    4fbc: b40001c0     	cbz	x0, 0x4ff4 <.text+0x3ff4>
    4fc0: 940013cc     	bl	0x9ef0 <.text+0x8ef0>
    4fc4: f9401268     	ldr	x8, [x19, #0x20]
    4fc8: 91020108     	add	x8, x8, #0x80
    4fcc: b0000049     	adrp	x9, 0xd000
    4fd0: f9400108     	ldr	x8, [x8]
    4fd4: 90000041     	adrp	x1, 0xc000
    4fd8: 910063a0     	add	x0, x29, #0x18
    4fdc: 911b3021     	add	x1, x1, #0x6cc
    4fe0: 2a1f03e2     	mov	w2, wzr
    4fe4: f9405123     	ldr	x3, [x9, #0xa0]
    4fe8: f9000fbf     	str	xzr, [x29, #0x18]
    4fec: d63f0100     	blr	x8
    4ff0: 14000003     	b	0x4ffc <.text+0x3ffc>
    4ff4: d2800120     	mov	x0, #0x9                // =9
    4ff8: f2f00000     	movk	x0, #0x8000, lsl #48
    4ffc: f9401bf3     	ldr	x19, [sp, #0x30]
    5000: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    5004: 910103ff     	add	sp, sp, #0x40
    5008: d65f03c0     	ret
    500c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    5010: f9000bf3     	str	x19, [sp, #0x10]
    5014: 910003fd     	mov	x29, sp
    5018: 90000053     	adrp	x19, 0xd000
    501c: f9408a68     	ldr	x8, [x19, #0x110]
    5020: b5000188     	cbnz	x8, 0x5050 <.text+0x4050>
    5024: f0000020     	adrp	x0, 0xc000
    5028: 90000041     	adrp	x1, 0xd000
    502c: 9101e000     	add	x0, x0, #0x78
    5030: 91044021     	add	x1, x1, #0x110
    5034: 97fffd05     	bl	0x4448 <.text+0x3448>
    5038: b6f800c0     	tbz	x0, #0x3f, 0x5050 <.text+0x4050>
    503c: b0000021     	adrp	x1, 0xa000 <.text+0x9000>
    5040: aa0003e2     	mov	x2, x0
    5044: 911ed021     	add	x1, x1, #0x7b4
    5048: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    504c: 97fff8d5     	bl	0x33a0 <.text+0x23a0>
    5050: f9408a60     	ldr	x0, [x19, #0x110]
    5054: f9400bf3     	ldr	x19, [sp, #0x10]
    5058: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    505c: d65f03c0     	ret
    5060: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    5064: 910003fd     	mov	x29, sp
    5068: 97ffffe9     	bl	0x500c <.text+0x400c>
    506c: aa1f03e0     	mov	x0, xzr
    5070: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    5074: d65f03c0     	ret
    5078: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    507c: f9000bf5     	str	x21, [sp, #0x10]
    5080: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5084: 910003fd     	mov	x29, sp
    5088: 79400028     	ldrh	w8, [x1]
    508c: 529ffff5     	mov	w21, #0xffff            // =65535
    5090: 6b15011f     	cmp	w8, w21
    5094: 540001e0     	b.eq	0x50d0 <.text+0x40d0>
    5098: aa0103f3     	mov	x19, x1
    509c: aa0003f4     	mov	x20, x0
    50a0: 7100111f     	cmp	w8, #0x4
    50a4: 540000c1     	b.ne	0x50bc <.text+0x40bc>
    50a8: 91002261     	add	x1, x19, #0x8
    50ac: aa1403e0     	mov	x0, x20
    50b0: 97fff7a2     	bl	0x2f38 <.text+0x1f38>
    50b4: 72001c1f     	tst	w0, #0xff
    50b8: 540000e1     	b.ne	0x50d4 <.text+0x40d4>
    50bc: 79400668     	ldrh	w8, [x19, #0x2]
    50c0: 8b080273     	add	x19, x19, x8
    50c4: 79400268     	ldrh	w8, [x19]
    50c8: 6b15011f     	cmp	w8, w21
    50cc: 54fffea1     	b.ne	0x50a0 <.text+0x40a0>
    50d0: aa1f03f3     	mov	x19, xzr
    50d4: aa1303e0     	mov	x0, x19
    50d8: f9400bf5     	ldr	x21, [sp, #0x10]
    50dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    50e0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    50e4: d65f03c0     	ret
    50e8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    50ec: f9000bf3     	str	x19, [sp, #0x10]
    50f0: 910003fd     	mov	x29, sp
    50f4: aa0003f3     	mov	x19, x0
    50f8: 97ffffc5     	bl	0x500c <.text+0x400c>
    50fc: aa0003e1     	mov	x1, x0
    5100: aa1303e0     	mov	x0, x19
    5104: f9400bf3     	ldr	x19, [sp, #0x10]
    5108: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    510c: 17ffffdb     	b	0x5078 <.text+0x4078>
    5110: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    5114: 910003fd     	mov	x29, sp
    5118: 97ffffbd     	bl	0x500c <.text+0x400c>
    511c: b9400c00     	ldr	w0, [x0, #0xc]
    5120: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    5124: d65f03c0     	ret
    5128: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    512c: f9000bf3     	str	x19, [sp, #0x10]
    5130: 910003fd     	mov	x29, sp
    5134: 90000048     	adrp	x8, 0xd000
    5138: 39446108     	ldrb	w8, [x8, #0x118]
    513c: 36000068     	tbz	w8, #0x0, 0x5148 <.text+0x4148>
    5140: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    5144: 1400001c     	b	0x51b4 <.text+0x41b4>
    5148: 90000048     	adrp	x8, 0xd000
    514c: f9409113     	ldr	x19, [x8, #0x120]
    5150: b40000f3     	cbz	x19, 0x516c <.text+0x416c>
    5154: f0000021     	adrp	x1, 0xc000
    5158: aa1303e0     	mov	x0, x19
    515c: 911b7021     	add	x1, x1, #0x6dc
    5160: 52800082     	mov	w2, #0x4                // =4
    5164: 94001303     	bl	0x9d70 <.text+0x8d70>
    5168: b4000060     	cbz	x0, 0x5174 <.text+0x4174>
    516c: aa1f03e0     	mov	x0, xzr
    5170: 14000011     	b	0x51b4 <.text+0x41b4>
    5174: 38414e60     	ldrb	w0, [x19, #0x14]!
    5178: aa1303e8     	mov	x8, x19
    517c: 3940166b     	ldrb	w11, [x19, #0x5]
    5180: 39400e6c     	ldrb	w12, [x19, #0x3]
    5184: 38404d09     	ldrb	w9, [x8, #0x4]!
    5188: 39400d0a     	ldrb	w10, [x8, #0x3]
    518c: 39400908     	ldrb	w8, [x8, #0x2]
    5190: 33181d69     	bfi	w9, w11, #8, #8
    5194: 3940066b     	ldrb	w11, [x19, #0x1]
    5198: 33181d48     	bfi	w8, w10, #8, #8
    519c: 39400a6a     	ldrb	w10, [x19, #0x2]
    51a0: b3781d60     	bfi	x0, x11, #8, #8
    51a4: 33103d09     	bfi	w9, w8, #16, #16
    51a8: b3781d8a     	bfi	x10, x12, #8, #8
    51ac: b3703d40     	bfi	x0, x10, #16, #16
    51b0: b3607d20     	bfi	x0, x9, #32, #32
    51b4: f9400bf3     	ldr	x19, [sp, #0x10]
    51b8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    51bc: d65f03c0     	ret
    51c0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    51c4: 910003fd     	mov	x29, sp
    51c8: 90000048     	adrp	x8, 0xd000
    51cc: 90000049     	adrp	x9, 0xd000
    51d0: f9401108     	ldr	x8, [x8, #0x20]
    51d4: f9409520     	ldr	x0, [x9, #0x128]
    51d8: f9403908     	ldr	x8, [x8, #0x70]
    51dc: d63f0100     	blr	x8
    51e0: 90000048     	adrp	x8, 0xd000
    51e4: 52800029     	mov	w9, #0x1                // =1
    51e8: 39046109     	strb	w9, [x8, #0x118]
    51ec: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    51f0: d65f03c0     	ret
    51f4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    51f8: f9000bf5     	str	x21, [sp, #0x10]
    51fc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5200: 910003fd     	mov	x29, sp
    5204: 90000048     	adrp	x8, 0xd000
    5208: 3900001f     	strb	wzr, [x0]
    520c: 39446108     	ldrb	w8, [x8, #0x118]
    5210: 36000068     	tbz	w8, #0x0, 0x521c <.text+0x421c>
    5214: b2410bf5     	mov	x21, #-0x7ffffffffffffffd // =-9223372036854775805
    5218: 1400003f     	b	0x5314 <.text+0x4314>
    521c: 90000048     	adrp	x8, 0xd000
    5220: d28001d5     	mov	x21, #0xe               // =14
    5224: f2f00015     	movk	x21, #0x8000, lsl #48
    5228: f9409114     	ldr	x20, [x8, #0x120]
    522c: b4000754     	cbz	x20, 0x5314 <.text+0x4314>
    5230: f0000021     	adrp	x1, 0xc000
    5234: aa0003f3     	mov	x19, x0
    5238: 911b7021     	add	x1, x1, #0x6dc
    523c: aa1403e0     	mov	x0, x20
    5240: 52800082     	mov	w2, #0x4                // =4
    5244: 940012cb     	bl	0x9d70 <.text+0x8d70>
    5248: b5000660     	cbnz	x0, 0x5314 <.text+0x4314>
    524c: aa1f03e9     	mov	x9, xzr
    5250: 2a1f03e8     	mov	w8, wzr
    5254: 38696a8a     	ldrb	w10, [x20, x9]
    5258: 91000529     	add	x9, x9, #0x1
    525c: 7100713f     	cmp	w9, #0x1c
    5260: 0b080148     	add	w8, w10, w8
    5264: 54ffff81     	b.ne	0x5254 <.text+0x4254>
    5268: 72001d1f     	tst	w8, #0xff
    526c: 54000060     	b.eq	0x5278 <.text+0x4278>
    5270: 910032b5     	add	x21, x21, #0xc
    5274: 14000028     	b	0x5314 <.text+0x4314>
    5278: aa1403e8     	mov	x8, x20
    527c: aa1403ec     	mov	x12, x20
    5280: 3940268b     	ldrb	w11, [x20, #0x9]
    5284: 3940168f     	ldrb	w15, [x20, #0x5]
    5288: 38408d0a     	ldrb	w10, [x8, #0x8]!
    528c: 38404d89     	ldrb	w9, [x12, #0x4]!
    5290: 39400d0d     	ldrb	w13, [x8, #0x3]
    5294: 39400908     	ldrb	w8, [x8, #0x2]
    5298: 39400d8e     	ldrb	w14, [x12, #0x3]
    529c: b3781d6a     	bfi	x10, x11, #8, #8
    52a0: 3940098c     	ldrb	w12, [x12, #0x2]
    52a4: b3781de9     	bfi	x9, x15, #8, #8
    52a8: b3781da8     	bfi	x8, x13, #8, #8
    52ac: b3781dcc     	bfi	x12, x14, #8, #8
    52b0: b3703d0a     	bfi	x10, x8, #16, #16
    52b4: b3703d89     	bfi	x9, x12, #16, #16
    52b8: 6b09015f     	cmp	w10, w9
    52bc: 54000262     	b.hs	0x5308 <.text+0x4308>
    52c0: 8b090289     	add	x9, x20, x9
    52c4: 8b0a028a     	add	x10, x20, x10
    52c8: 3940368c     	ldrb	w12, [x20, #0xd]
    52cc: 2a1f03e8     	mov	w8, wzr
    52d0: 3840ce8b     	ldrb	w11, [x20, #0xc]!
    52d4: 39400e8d     	ldrb	w13, [x20, #0x3]
    52d8: 39400a8e     	ldrb	w14, [x20, #0x2]
    52dc: b3781d8b     	bfi	x11, x12, #8, #8
    52e0: 5280002c     	mov	w12, #0x1               // =1
    52e4: b3781dae     	bfi	x14, x13, #8, #8
    52e8: b3703dcb     	bfi	x11, x14, #16, #16
    52ec: 3940c14d     	ldrb	w13, [x10, #0x30]
    52f0: 8b0b014a     	add	x10, x10, x11
    52f4: eb09015f     	cmp	x10, x9
    52f8: 0a6d058d     	bic	w13, w12, w13, lsr #1
    52fc: 0b0801a8     	add	w8, w13, w8
    5300: 54ffff63     	b.lo	0x52ec <.text+0x42ec>
    5304: 14000002     	b	0x530c <.text+0x430c>
    5308: 2a1f03e8     	mov	w8, wzr
    530c: aa1f03f5     	mov	x21, xzr
    5310: 39000268     	strb	w8, [x19]
    5314: aa1503e0     	mov	x0, x21
    5318: f9400bf5     	ldr	x21, [sp, #0x10]
    531c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5320: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    5324: d65f03c0     	ret
    5328: d101c3ff     	sub	sp, sp, #0x70
    532c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    5330: a9026ffc     	stp	x28, x27, [sp, #0x20]
    5334: a90367fa     	stp	x26, x25, [sp, #0x30]
    5338: a9045ff8     	stp	x24, x23, [sp, #0x40]
    533c: a90557f6     	stp	x22, x21, [sp, #0x50]
    5340: a9064ff4     	stp	x20, x19, [sp, #0x60]
    5344: 910043fd     	add	x29, sp, #0x10
    5348: 90000048     	adrp	x8, 0xd000
    534c: 3900005f     	strb	wzr, [x2]
    5350: f900007f     	str	xzr, [x3]
    5354: f900009f     	str	xzr, [x4]
    5358: 39446108     	ldrb	w8, [x8, #0x118]
    535c: b90000bf     	str	wzr, [x5]
    5360: 36000068     	tbz	w8, #0x0, 0x536c <.text+0x436c>
    5364: b2410bf4     	mov	x20, #-0x7ffffffffffffffd // =-9223372036854775805
    5368: 14000020     	b	0x53e8 <.text+0x43e8>
    536c: d28001d4     	mov	x20, #0xe               // =14
    5370: 2a0103f8     	mov	w24, w1
    5374: 12001c28     	and	w8, w1, #0xff
    5378: f2f00014     	movk	x20, #0x8000, lsl #48
    537c: 34000348     	cbz	w8, 0x53e4 <.text+0x43e4>
    5380: 90000048     	adrp	x8, 0xd000
    5384: f940911b     	ldr	x27, [x8, #0x120]
    5388: b400031b     	cbz	x27, 0x53e8 <.text+0x43e8>
    538c: f0000021     	adrp	x1, 0xc000
    5390: aa0203f7     	mov	x23, x2
    5394: aa0003fa     	mov	x26, x0
    5398: 911b7021     	add	x1, x1, #0x6dc
    539c: aa1b03e0     	mov	x0, x27
    53a0: 52800082     	mov	w2, #0x4                // =4
    53a4: aa0503f3     	mov	x19, x5
    53a8: aa0403f5     	mov	x21, x4
    53ac: aa0303f6     	mov	x22, x3
    53b0: 94001270     	bl	0x9d70 <.text+0x8d70>
    53b4: b50001a0     	cbnz	x0, 0x53e8 <.text+0x43e8>
    53b8: aa1f03e9     	mov	x9, xzr
    53bc: 2a1f03e8     	mov	w8, wzr
    53c0: 38696b6a     	ldrb	w10, [x27, x9]
    53c4: 91000529     	add	x9, x9, #0x1
    53c8: 7100713f     	cmp	w9, #0x1c
    53cc: 0b080148     	add	w8, w10, w8
    53d0: 54ffff81     	b.ne	0x53c0 <.text+0x43c0>
    53d4: 72001d1f     	tst	w8, #0xff
    53d8: 540001a0     	b.eq	0x540c <.text+0x440c>
    53dc: 91003294     	add	x20, x20, #0xc
    53e0: 14000002     	b	0x53e8 <.text+0x43e8>
    53e4: d1003294     	sub	x20, x20, #0xc
    53e8: aa1403e0     	mov	x0, x20
    53ec: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    53f0: a94557f6     	ldp	x22, x21, [sp, #0x50]
    53f4: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    53f8: a94367fa     	ldp	x26, x25, [sp, #0x30]
    53fc: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    5400: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5404: 9101c3ff     	add	sp, sp, #0x70
    5408: d65f03c0     	ret
    540c: aa1b03eb     	mov	x11, x27
    5410: aa1b03e9     	mov	x9, x27
    5414: 3940276f     	ldrb	w15, [x27, #0x9]
    5418: 3940176a     	ldrb	w10, [x27, #0x5]
    541c: 38408d6d     	ldrb	w13, [x11, #0x8]!
    5420: 38404d28     	ldrb	w8, [x9, #0x4]!
    5424: 39400d6e     	ldrb	w14, [x11, #0x3]
    5428: 3940096b     	ldrb	w11, [x11, #0x2]
    542c: 39400d2c     	ldrb	w12, [x9, #0x3]
    5430: b3781ded     	bfi	x13, x15, #8, #8
    5434: 39400929     	ldrb	w9, [x9, #0x2]
    5438: b3781d48     	bfi	x8, x10, #8, #8
    543c: b3781dcb     	bfi	x11, x14, #8, #8
    5440: b3781d89     	bfi	x9, x12, #8, #8
    5444: b3703d6d     	bfi	x13, x11, #16, #16
    5448: 8b0d0379     	add	x25, x27, x13
    544c: b3703d28     	bfi	x8, x9, #16, #16
    5450: 6b0801bf     	cmp	w13, w8
    5454: 54000382     	b.hs	0x54c4 <.text+0x44c4>
    5458: 8b080368     	add	x8, x27, x8
    545c: 2a1f03fc     	mov	w28, wzr
    5460: 3840cf6b     	ldrb	w11, [x27, #0xc]!
    5464: 39400b69     	ldrb	w9, [x27, #0x2]
    5468: f90007e8     	str	x8, [sp, #0x8]
    546c: 39400f68     	ldrb	w8, [x27, #0x3]
    5470: 3940076a     	ldrb	w10, [x27, #0x1]
    5474: b3781d09     	bfi	x9, x8, #8, #8
    5478: b3781d4b     	bfi	x11, x10, #8, #8
    547c: b3703d2b     	bfi	x11, x9, #16, #16
    5480: aa0b03fb     	mov	x27, x11
    5484: aa1903e0     	mov	x0, x25
    5488: aa1a03e1     	mov	x1, x26
    548c: 97fff6ab     	bl	0x2f38 <.text+0x1f38>
    5490: 72001c1f     	tst	w0, #0xff
    5494: 540000e0     	b.eq	0x54b0 <.text+0x44b0>
    5498: 3940c328     	ldrb	w8, [x25, #0x30]
    549c: 370800a8     	tbnz	w8, #0x1, 0x54b0 <.text+0x44b0>
    54a0: 1100079c     	add	w28, w28, #0x1
    54a4: 12001f88     	and	w8, w28, #0xff
    54a8: 6b38011f     	cmp	w8, w24, uxtb
    54ac: 54000140     	b.eq	0x54d4 <.text+0x44d4>
    54b0: f94007e8     	ldr	x8, [sp, #0x8]
    54b4: 8b1b0339     	add	x25, x25, x27
    54b8: eb08033f     	cmp	x25, x8
    54bc: 54fffe43     	b.lo	0x5484 <.text+0x4484>
    54c0: 14000002     	b	0x54c8 <.text+0x44c8>
    54c4: 2a1f03fc     	mov	w28, wzr
    54c8: 12001f88     	and	w8, w28, #0xff
    54cc: 6b38011f     	cmp	w8, w24, uxtb
    54d0: 54fff8c1     	b.ne	0x53e8 <.text+0x43e8>
    54d4: 91004321     	add	x1, x25, #0x10
    54d8: aa1703e0     	mov	x0, x23
    54dc: 52800202     	mov	w2, #0x10               // =16
    54e0: 97fff69a     	bl	0x2f48 <.text+0x1f48>
    54e4: 38420f28     	ldrb	w8, [x25, #0x20]!
    54e8: aa1903e9     	mov	x9, x25
    54ec: 3940172c     	ldrb	w12, [x25, #0x5]
    54f0: 39400f2d     	ldrb	w13, [x25, #0x3]
    54f4: aa1f03f4     	mov	x20, xzr
    54f8: 38404d2a     	ldrb	w10, [x9, #0x4]!
    54fc: 39400d2b     	ldrb	w11, [x9, #0x3]
    5500: 39400929     	ldrb	w9, [x9, #0x2]
    5504: 33181d8a     	bfi	w10, w12, #8, #8
    5508: 3940072c     	ldrb	w12, [x25, #0x1]
    550c: 33181d69     	bfi	w9, w11, #8, #8
    5510: 39400b2b     	ldrb	w11, [x25, #0x2]
    5514: b3781d88     	bfi	x8, x12, #8, #8
    5518: 33103d2a     	bfi	w10, w9, #16, #16
    551c: b3781dab     	bfi	x11, x13, #8, #8
    5520: b3703d68     	bfi	x8, x11, #16, #16
    5524: b3607d48     	bfi	x8, x10, #32, #32
    5528: f90002c8     	str	x8, [x22]
    552c: 38408f28     	ldrb	w8, [x25, #0x8]!
    5530: aa1903e9     	mov	x9, x25
    5534: 3940172c     	ldrb	w12, [x25, #0x5]
    5538: 39400f2d     	ldrb	w13, [x25, #0x3]
    553c: 38404d2a     	ldrb	w10, [x9, #0x4]!
    5540: 39400d2b     	ldrb	w11, [x9, #0x3]
    5544: 39400929     	ldrb	w9, [x9, #0x2]
    5548: 33181d8a     	bfi	w10, w12, #8, #8
    554c: 3940072c     	ldrb	w12, [x25, #0x1]
    5550: 33181d69     	bfi	w9, w11, #8, #8
    5554: 39400b2b     	ldrb	w11, [x25, #0x2]
    5558: b3781d88     	bfi	x8, x12, #8, #8
    555c: 33103d2a     	bfi	w10, w9, #16, #16
    5560: b3781dab     	bfi	x11, x13, #8, #8
    5564: b3703d68     	bfi	x8, x11, #16, #16
    5568: b3607d48     	bfi	x8, x10, #32, #32
    556c: f90002a8     	str	x8, [x21]
    5570: 38408f28     	ldrb	w8, [x25, #0x8]!
    5574: 39400f29     	ldrb	w9, [x25, #0x3]
    5578: 39400b2a     	ldrb	w10, [x25, #0x2]
    557c: 3940072b     	ldrb	w11, [x25, #0x1]
    5580: 33181d2a     	bfi	w10, w9, #8, #8
    5584: 33181d68     	bfi	w8, w11, #8, #8
    5588: 33103d48     	bfi	w8, w10, #16, #16
    558c: b9000268     	str	w8, [x19]
    5590: 17ffff96     	b	0x53e8 <.text+0x43e8>
    5594: d10183ff     	sub	sp, sp, #0x60
    5598: a9037bfd     	stp	x29, x30, [sp, #0x30]
    559c: f90023f5     	str	x21, [sp, #0x40]
    55a0: a9054ff4     	stp	x20, x19, [sp, #0x50]
    55a4: 9100c3fd     	add	x29, sp, #0x30
    55a8: f0000028     	adrp	x8, 0xc000
    55ac: 90000049     	adrp	x9, 0xd000
    55b0: f9400108     	ldr	x8, [x8]
    55b4: f81f83a8     	stur	x8, [x29, #-0x8]
    55b8: 39446128     	ldrb	w8, [x9, #0x118]
    55bc: 36000068     	tbz	w8, #0x0, 0x55c8 <.text+0x45c8>
    55c0: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    55c4: 1400001f     	b	0x5640 <.text+0x4640>
    55c8: aa0303f3     	mov	x19, x3
    55cc: aa0203f4     	mov	x20, x2
    55d0: 910063e2     	add	x2, sp, #0x18
    55d4: 910043e3     	add	x3, sp, #0x10
    55d8: 910023e4     	add	x4, sp, #0x8
    55dc: 910013e5     	add	x5, sp, #0x4
    55e0: 97ffff52     	bl	0x5328 <.text+0x4328>
    55e4: b7f801a0     	tbnz	x0, #0x3f, 0x5618 <.text+0x4618>
    55e8: 90000048     	adrp	x8, 0xd000
    55ec: 3944c108     	ldrb	w8, [x8, #0x130]
    55f0: 7100051f     	cmp	w8, #0x1
    55f4: 54000181     	b.ne	0x5624 <.text+0x4624>
    55f8: 90000048     	adrp	x8, 0xd000
    55fc: 90000049     	adrp	x9, 0xd000
    5600: f9400be2     	ldr	x2, [sp, #0x10]
    5604: f9409100     	ldr	x0, [x8, #0x120]
    5608: f9409d21     	ldr	x1, [x9, #0x138]
    560c: 94000018     	bl	0x566c <.text+0x466c>
    5610: aa0003e8     	mov	x8, x0
    5614: 14000007     	b	0x5630 <.text+0x4630>
    5618: d28001c0     	mov	x0, #0xe                // =14
    561c: f2f00000     	movk	x0, #0x8000, lsl #48
    5620: 14000008     	b	0x5640 <.text+0x4640>
    5624: f9400bf5     	ldr	x21, [sp, #0x10]
    5628: 97fffec0     	bl	0x5128 <.text+0x4128>
    562c: 8b150008     	add	x8, x0, x21
    5630: f94007e9     	ldr	x9, [sp, #0x8]
    5634: aa1f03e0     	mov	x0, xzr
    5638: f9000288     	str	x8, [x20]
    563c: f9000269     	str	x9, [x19]
    5640: f0000029     	adrp	x9, 0xc000
    5644: f85f83a8     	ldur	x8, [x29, #-0x8]
    5648: f9400129     	ldr	x9, [x9]
    564c: eb08013f     	cmp	x9, x8
    5650: 540000c1     	b.ne	0x5668 <.text+0x4668>
    5654: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    5658: f94023f5     	ldr	x21, [sp, #0x40]
    565c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    5660: 910183ff     	add	sp, sp, #0x60
    5664: d65f03c0     	ret
    5668: 97ffee9a     	bl	0x10d0 <.text+0xd0>
    566c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    5670: f9000bf9     	str	x25, [sp, #0x10]
    5674: a9025ff8     	stp	x24, x23, [sp, #0x20]
    5678: a90357f6     	stp	x22, x21, [sp, #0x30]
    567c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5680: 910003fd     	mov	x29, sp
    5684: b4000c40     	cbz	x0, 0x580c <.text+0x480c>
    5688: aa0103f4     	mov	x20, x1
    568c: f0000021     	adrp	x1, 0xc000
    5690: aa0203f3     	mov	x19, x2
    5694: 911b7021     	add	x1, x1, #0x6dc
    5698: 52800082     	mov	w2, #0x4                // =4
    569c: aa0003f6     	mov	x22, x0
    56a0: 940011b4     	bl	0x9d70 <.text+0x8d70>
    56a4: b4000060     	cbz	x0, 0x56b0 <.text+0x46b0>
    56a8: aa1f03e0     	mov	x0, xzr
    56ac: 14000058     	b	0x580c <.text+0x480c>
    56b0: aa1f03e9     	mov	x9, xzr
    56b4: 2a1f03e8     	mov	w8, wzr
    56b8: 38696aca     	ldrb	w10, [x22, x9]
    56bc: 91000529     	add	x9, x9, #0x1
    56c0: 7100713f     	cmp	w9, #0x1c
    56c4: 0b080148     	add	w8, w10, w8
    56c8: 54ffff81     	b.ne	0x56b8 <.text+0x46b8>
    56cc: aa1f03e0     	mov	x0, xzr
    56d0: b40009f4     	cbz	x20, 0x580c <.text+0x480c>
    56d4: 72001d1f     	tst	w8, #0xff
    56d8: 540009a1     	b.ne	0x580c <.text+0x480c>
    56dc: aa1603e9     	mov	x9, x22
    56e0: aa1603eb     	mov	x11, x22
    56e4: 394026ca     	ldrb	w10, [x22, #0x9]
    56e8: 394016cf     	ldrb	w15, [x22, #0x5]
    56ec: 38408d28     	ldrb	w8, [x9, #0x8]!
    56f0: 39400d2c     	ldrb	w12, [x9, #0x3]
    56f4: 3940092d     	ldrb	w13, [x9, #0x2]
    56f8: 38404d69     	ldrb	w9, [x11, #0x4]!
    56fc: 39400d6e     	ldrb	w14, [x11, #0x3]
    5700: b3781d48     	bfi	x8, x10, #8, #8
    5704: 3940096b     	ldrb	w11, [x11, #0x2]
    5708: b3781d8d     	bfi	x13, x12, #8, #8
    570c: b3781de9     	bfi	x9, x15, #8, #8
    5710: b3703da8     	bfi	x8, x13, #16, #16
    5714: b3781dcb     	bfi	x11, x14, #8, #8
    5718: b3703d69     	bfi	x9, x11, #16, #16
    571c: 6b09011f     	cmp	w8, w9
    5720: 54000702     	b.hs	0x5800 <.text+0x4800>
    5724: 8b0902d8     	add	x24, x22, x9
    5728: 8b0802d5     	add	x21, x22, x8
    572c: 394036c8     	ldrb	w8, [x22, #0xd]
    5730: aa1f03f7     	mov	x23, xzr
    5734: 3840ced9     	ldrb	w25, [x22, #0xc]!
    5738: 39400ec9     	ldrb	w9, [x22, #0x3]
    573c: 39400aca     	ldrb	w10, [x22, #0x2]
    5740: b3781d19     	bfi	x25, x8, #8, #8
    5744: b3781d2a     	bfi	x10, x9, #8, #8
    5748: b3703d59     	bfi	x25, x10, #16, #16
    574c: aa1503e0     	mov	x0, x21
    5750: 940001df     	bl	0x5ecc <.text+0x4ecc>
    5754: 72001c1f     	tst	w0, #0xff
    5758: 540004c0     	b.eq	0x57f0 <.text+0x47f0>
    575c: aa1503e8     	mov	x8, x21
    5760: 38420d09     	ldrb	w9, [x8, #0x20]!
    5764: aa0803ea     	mov	x10, x8
    5768: 39400d0e     	ldrb	w14, [x8, #0x3]
    576c: 3940090f     	ldrb	w15, [x8, #0x2]
    5770: 3940150d     	ldrb	w13, [x8, #0x5]
    5774: 38404d4b     	ldrb	w11, [x10, #0x4]!
    5778: 39400d4c     	ldrb	w12, [x10, #0x3]
    577c: 3940094a     	ldrb	w10, [x10, #0x2]
    5780: b3781dcf     	bfi	x15, x14, #8, #8
    5784: 39400508     	ldrb	w8, [x8, #0x1]
    5788: 33181dab     	bfi	w11, w13, #8, #8
    578c: 33181d8a     	bfi	w10, w12, #8, #8
    5790: b3781d09     	bfi	x9, x8, #8, #8
    5794: 33103d4b     	bfi	w11, w10, #16, #16
    5798: b3703de9     	bfi	x9, x15, #16, #16
    579c: b3607d69     	bfi	x9, x11, #32, #32
    57a0: eb13013f     	cmp	x9, x19
    57a4: 54000268     	b.hi	0x57f0 <.text+0x47f0>
    57a8: aa1503e8     	mov	x8, x21
    57ac: 38428d09     	ldrb	w9, [x8, #0x28]!
    57b0: aa0803ea     	mov	x10, x8
    57b4: 39400d0e     	ldrb	w14, [x8, #0x3]
    57b8: 3940090f     	ldrb	w15, [x8, #0x2]
    57bc: 3940150d     	ldrb	w13, [x8, #0x5]
    57c0: 38404d4b     	ldrb	w11, [x10, #0x4]!
    57c4: 39400d4c     	ldrb	w12, [x10, #0x3]
    57c8: 3940094a     	ldrb	w10, [x10, #0x2]
    57cc: b3781dcf     	bfi	x15, x14, #8, #8
    57d0: 39400508     	ldrb	w8, [x8, #0x1]
    57d4: 33181dab     	bfi	w11, w13, #8, #8
    57d8: 33181d8a     	bfi	w10, w12, #8, #8
    57dc: b3781d09     	bfi	x9, x8, #8, #8
    57e0: 33103d4b     	bfi	w11, w10, #16, #16
    57e4: b3703de9     	bfi	x9, x15, #16, #16
    57e8: b3607d69     	bfi	x9, x11, #32, #32
    57ec: 8b170137     	add	x23, x9, x23
    57f0: 8b1902b5     	add	x21, x21, x25
    57f4: eb1802bf     	cmp	x21, x24
    57f8: 54fffaa3     	b.lo	0x574c <.text+0x474c>
    57fc: 14000002     	b	0x5804 <.text+0x4804>
    5800: aa1f03f7     	mov	x23, xzr
    5804: 8b140268     	add	x8, x19, x20
    5808: 8b170100     	add	x0, x8, x23
    580c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5810: a94357f6     	ldp	x22, x21, [sp, #0x30]
    5814: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    5818: f9400bf9     	ldr	x25, [sp, #0x10]
    581c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    5820: d65f03c0     	ret
    5824: d10083ff     	sub	sp, sp, #0x20
    5828: a9017bfd     	stp	x29, x30, [sp, #0x10]
    582c: 910043fd     	add	x29, sp, #0x10
    5830: 910023e2     	add	x2, sp, #0x8
    5834: 910003e3     	mov	x3, sp
    5838: 97ffff57     	bl	0x5594 <.text+0x4594>
    583c: f94007e8     	ldr	x8, [sp, #0x8]
    5840: f100001f     	cmp	x0, #0x0
    5844: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5848: 9a88b3e0     	csel	x0, xzr, x8, lt
    584c: 910083ff     	add	sp, sp, #0x20
    5850: d65f03c0     	ret
    5854: d10083ff     	sub	sp, sp, #0x20
    5858: a9017bfd     	stp	x29, x30, [sp, #0x10]
    585c: 910043fd     	add	x29, sp, #0x10
    5860: 910023e2     	add	x2, sp, #0x8
    5864: 910003e3     	mov	x3, sp
    5868: 97ffff4b     	bl	0x5594 <.text+0x4594>
    586c: f94003e8     	ldr	x8, [sp]
    5870: f100001f     	cmp	x0, #0x0
    5874: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5878: 9a88b3e0     	csel	x0, xzr, x8, lt
    587c: 910083ff     	add	sp, sp, #0x20
    5880: d65f03c0     	ret
    5884: d10283ff     	sub	sp, sp, #0xa0
    5888: a9047bfd     	stp	x29, x30, [sp, #0x40]
    588c: f9002bfb     	str	x27, [sp, #0x50]
    5890: a90667fa     	stp	x26, x25, [sp, #0x60]
    5894: a9075ff8     	stp	x24, x23, [sp, #0x70]
    5898: a90857f6     	stp	x22, x21, [sp, #0x80]
    589c: a9094ff4     	stp	x20, x19, [sp, #0x90]
    58a0: 910103fd     	add	x29, sp, #0x40
    58a4: f0000028     	adrp	x8, 0xc000
    58a8: 90000049     	adrp	x9, 0xd000
    58ac: f9400108     	ldr	x8, [x8]
    58b0: f81f83a8     	stur	x8, [x29, #-0x8]
    58b4: 39446128     	ldrb	w8, [x9, #0x118]
    58b8: 36000068     	tbz	w8, #0x0, 0x58c4 <.text+0x48c4>
    58bc: b2410bf5     	mov	x21, #-0x7ffffffffffffffd // =-9223372036854775805
    58c0: 14000035     	b	0x5994 <.text+0x4994>
    58c4: aa0003f8     	mov	x24, x0
    58c8: d10073a0     	sub	x0, x29, #0x1c
    58cc: d28001d5     	mov	x21, #0xe               // =14
    58d0: aa0403f3     	mov	x19, x4
    58d4: aa0303f4     	mov	x20, x3
    58d8: 2a0203f6     	mov	w22, w2
    58dc: aa0103f7     	mov	x23, x1
    58e0: f2f00015     	movk	x21, #0x8000, lsl #48
    58e4: 97fffe44     	bl	0x51f4 <.text+0x41f4>
    58e8: b7f80560     	tbnz	x0, #0x3f, 0x5994 <.text+0x4994>
    58ec: 385e43ba     	ldurb	w26, [x29, #-0x1c]
    58f0: 3400053a     	cbz	w26, 0x5994 <.text+0x4994>
    58f4: 2a1f03fb     	mov	w27, wzr
    58f8: 52800039     	mov	w25, #0x1               // =1
    58fc: d10063a2     	sub	x2, x29, #0x18
    5900: 910063e3     	add	x3, sp, #0x18
    5904: 910043e4     	add	x4, sp, #0x10
    5908: 910033e5     	add	x5, sp, #0xc
    590c: aa1803e0     	mov	x0, x24
    5910: 2a1903e1     	mov	w1, w25
    5914: 97fffe85     	bl	0x5328 <.text+0x4328>
    5918: b7f803e0     	tbnz	x0, #0x3f, 0x5994 <.text+0x4994>
    591c: d10063a0     	sub	x0, x29, #0x18
    5920: aa1703e1     	mov	x1, x23
    5924: 97fff585     	bl	0x2f38 <.text+0x1f38>
    5928: 72001c1f     	tst	w0, #0xff
    592c: 1a9b077b     	cinc	w27, w27, ne
    5930: 12001f68     	and	w8, w27, #0xff
    5934: 6b36011f     	cmp	w8, w22, uxtb
    5938: 540000a0     	b.eq	0x594c <.text+0x494c>
    593c: 11000739     	add	w25, w25, #0x1
    5940: 6b39035f     	cmp	w26, w25, uxtb
    5944: 54fffdc2     	b.hs	0x58fc <.text+0x48fc>
    5948: 14000013     	b	0x5994 <.text+0x4994>
    594c: 90000048     	adrp	x8, 0xd000
    5950: 3944c108     	ldrb	w8, [x8, #0x130]
    5954: 7100051f     	cmp	w8, #0x1
    5958: 54000101     	b.ne	0x5978 <.text+0x4978>
    595c: 90000048     	adrp	x8, 0xd000
    5960: 90000049     	adrp	x9, 0xd000
    5964: f9400fe2     	ldr	x2, [sp, #0x18]
    5968: f9409100     	ldr	x0, [x8, #0x120]
    596c: f9409d21     	ldr	x1, [x9, #0x138]
    5970: 97ffff3f     	bl	0x566c <.text+0x466c>
    5974: 14000004     	b	0x5984 <.text+0x4984>
    5978: f9400ff5     	ldr	x21, [sp, #0x18]
    597c: 97fffdeb     	bl	0x5128 <.text+0x4128>
    5980: 8b150000     	add	x0, x0, x21
    5984: f9400be8     	ldr	x8, [sp, #0x10]
    5988: aa1f03f5     	mov	x21, xzr
    598c: f9000280     	str	x0, [x20]
    5990: f9000268     	str	x8, [x19]
    5994: f0000029     	adrp	x9, 0xc000
    5998: f85f83a8     	ldur	x8, [x29, #-0x8]
    599c: f9400129     	ldr	x9, [x9]
    59a0: eb08013f     	cmp	x9, x8
    59a4: 54000141     	b.ne	0x59cc <.text+0x49cc>
    59a8: aa1503e0     	mov	x0, x21
    59ac: f9402bfb     	ldr	x27, [sp, #0x50]
    59b0: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    59b4: a94857f6     	ldp	x22, x21, [sp, #0x80]
    59b8: a9475ff8     	ldp	x24, x23, [sp, #0x70]
    59bc: a94667fa     	ldp	x26, x25, [sp, #0x60]
    59c0: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    59c4: 910283ff     	add	sp, sp, #0xa0
    59c8: d65f03c0     	ret
    59cc: 97ffedc1     	bl	0x10d0 <.text+0xd0>
    59d0: d10083ff     	sub	sp, sp, #0x20
    59d4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    59d8: 910043fd     	add	x29, sp, #0x10
    59dc: 910023e3     	add	x3, sp, #0x8
    59e0: 910003e4     	mov	x4, sp
    59e4: 97ffffa8     	bl	0x5884 <.text+0x4884>
    59e8: f94007e8     	ldr	x8, [sp, #0x8]
    59ec: f100001f     	cmp	x0, #0x0
    59f0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    59f4: 9a88b3e0     	csel	x0, xzr, x8, lt
    59f8: 910083ff     	add	sp, sp, #0x20
    59fc: d65f03c0     	ret
    5a00: d10083ff     	sub	sp, sp, #0x20
    5a04: a9017bfd     	stp	x29, x30, [sp, #0x10]
    5a08: 910043fd     	add	x29, sp, #0x10
    5a0c: 910023e3     	add	x3, sp, #0x8
    5a10: 910003e4     	mov	x4, sp
    5a14: 97ffff9c     	bl	0x5884 <.text+0x4884>
    5a18: f94003e8     	ldr	x8, [sp]
    5a1c: f100001f     	cmp	x0, #0x0
    5a20: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5a24: 9a88b3e0     	csel	x0, xzr, x8, lt
    5a28: 910083ff     	add	sp, sp, #0x20
    5a2c: d65f03c0     	ret
    5a30: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    5a34: 910003fd     	mov	x29, sp
    5a38: 90000048     	adrp	x8, 0xd000
    5a3c: f9409500     	ldr	x0, [x8, #0x128]
    5a40: b40000a0     	cbz	x0, 0x5a54 <.text+0x4a54>
    5a44: 90000048     	adrp	x8, 0xd000
    5a48: f9401108     	ldr	x8, [x8, #0x20]
    5a4c: f9403908     	ldr	x8, [x8, #0x70]
    5a50: d63f0100     	blr	x8
    5a54: aa1f03e0     	mov	x0, xzr
    5a58: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    5a5c: d65f03c0     	ret
    5a60: d10143ff     	sub	sp, sp, #0x50
    5a64: a9017bfd     	stp	x29, x30, [sp, #0x10]
    5a68: f90013f7     	str	x23, [sp, #0x20]
    5a6c: a90357f6     	stp	x22, x21, [sp, #0x30]
    5a70: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5a74: 910043fd     	add	x29, sp, #0x10
    5a78: f0000020     	adrp	x0, 0xc000
    5a7c: 911b8000     	add	x0, x0, #0x6e0
    5a80: 97fffd9a     	bl	0x50e8 <.text+0x40e8>
    5a84: b40001c0     	cbz	x0, 0x5abc <.text+0x4abc>
    5a88: f0000033     	adrp	x19, 0xc000
    5a8c: 911b8273     	add	x19, x19, #0x6e0
    5a90: 79400408     	ldrh	w8, [x0, #0x2]
    5a94: aa0003f4     	mov	x20, x0
    5a98: 8b080001     	add	x1, x0, x8
    5a9c: aa1303e0     	mov	x0, x19
    5aa0: 97fffd76     	bl	0x5078 <.text+0x4078>
    5aa4: b5ffff60     	cbnz	x0, 0x5a90 <.text+0x4a90>
    5aa8: b40000b4     	cbz	x20, 0x5abc <.text+0x4abc>
    5aac: 91006293     	add	x19, x20, #0x18
    5ab0: 90000048     	adrp	x8, 0xd000
    5ab4: f9009113     	str	x19, [x8, #0x120]
    5ab8: 14000013     	b	0x5b04 <.text+0x4b04>
    5abc: 97fffd95     	bl	0x5110 <.text+0x4110>
    5ac0: 7100801f     	cmp	w0, #0x20
    5ac4: 540000e1     	b.ne	0x5ae0 <.text+0x4ae0>
    5ac8: f0000020     	adrp	x0, 0xc000
    5acc: 911bc000     	add	x0, x0, #0x6f0
    5ad0: 97fffd86     	bl	0x50e8 <.text+0x40e8>
    5ad4: b4000060     	cbz	x0, 0x5ae0 <.text+0x4ae0>
    5ad8: f9400c13     	ldr	x19, [x0, #0x18]
    5adc: 14000007     	b	0x5af8 <.text+0x4af8>
    5ae0: 528002e1     	mov	w1, #0x17               // =23
    5ae4: f0000020     	adrp	x0, 0xc000
    5ae8: 72a60001     	movk	w1, #0x3000, lsl #16
    5aec: 91042000     	add	x0, x0, #0x108
    5af0: 9400118c     	bl	0xa120 <.text+0x9120>
    5af4: aa0003f3     	mov	x19, x0
    5af8: 90000048     	adrp	x8, 0xd000
    5afc: f9009113     	str	x19, [x8, #0x120]
    5b00: b4000653     	cbz	x19, 0x5bc8 <.text+0x4bc8>
    5b04: f0000021     	adrp	x1, 0xc000
    5b08: aa1303e0     	mov	x0, x19
    5b0c: 911b7021     	add	x1, x1, #0x6dc
    5b10: 52800082     	mov	w2, #0x4                // =4
    5b14: 94001097     	bl	0x9d70 <.text+0x8d70>
    5b18: b5000580     	cbnz	x0, 0x5bc8 <.text+0x4bc8>
    5b1c: aa1f03e9     	mov	x9, xzr
    5b20: 2a1f03e8     	mov	w8, wzr
    5b24: 38696a6a     	ldrb	w10, [x19, x9]
    5b28: 91000529     	add	x9, x9, #0x1
    5b2c: 7100713f     	cmp	w9, #0x1c
    5b30: 0b080148     	add	w8, w10, w8
    5b34: 54ffff81     	b.ne	0x5b24 <.text+0x4b24>
    5b38: 72001d1f     	tst	w8, #0xff
    5b3c: 54000461     	b.ne	0x5bc8 <.text+0x4bc8>
    5b40: aa1303e8     	mov	x8, x19
    5b44: 38408d09     	ldrb	w9, [x8, #0x8]!
    5b48: 385fcd0a     	ldrb	w10, [x8, #-0x4]!
    5b4c: 39401d0b     	ldrb	w11, [x8, #0x7]
    5b50: 3940190c     	ldrb	w12, [x8, #0x6]
    5b54: 3940150d     	ldrb	w13, [x8, #0x5]
    5b58: 39400d0e     	ldrb	w14, [x8, #0x3]
    5b5c: 3940090f     	ldrb	w15, [x8, #0x2]
    5b60: 39400508     	ldrb	w8, [x8, #0x1]
    5b64: b3781d6c     	bfi	x12, x11, #8, #8
    5b68: b3781da9     	bfi	x9, x13, #8, #8
    5b6c: 5280068b     	mov	w11, #0x34              // =52
    5b70: b3703d89     	bfi	x9, x12, #16, #16
    5b74: b3781dcf     	bfi	x15, x14, #8, #8
    5b78: 9b0b4d34     	madd	x20, x9, x11, x19
    5b7c: b3781d0a     	bfi	x10, x8, #8, #8
    5b80: b3703dea     	bfi	x10, x15, #16, #16
    5b84: 8b0a0275     	add	x21, x19, x10
    5b88: eb1402bf     	cmp	x21, x20
    5b8c: 540001e9     	b.ls	0x5bc8 <.text+0x4bc8>
    5b90: 3840ce76     	ldrb	w22, [x19, #0xc]!
    5b94: 39400e68     	ldrb	w8, [x19, #0x3]
    5b98: 39400a69     	ldrb	w9, [x19, #0x2]
    5b9c: 3940066a     	ldrb	w10, [x19, #0x1]
    5ba0: b3781d09     	bfi	x9, x8, #8, #8
    5ba4: b3781d56     	bfi	x22, x10, #8, #8
    5ba8: b3703d36     	bfi	x22, x9, #16, #16
    5bac: aa1403e0     	mov	x0, x20
    5bb0: 940000c7     	bl	0x5ecc <.text+0x4ecc>
    5bb4: 72001c1f     	tst	w0, #0xff
    5bb8: 54000e01     	b.ne	0x5d78 <.text+0x4d78>
    5bbc: 8b160294     	add	x20, x20, x22
    5bc0: eb1402bf     	cmp	x21, x20
    5bc4: 54ffff48     	b.hi	0x5bac <.text+0x4bac>
    5bc8: 90000048     	adrp	x8, 0xd000
    5bcc: 3904c11f     	strb	wzr, [x8, #0x130]
    5bd0: 90000055     	adrp	x21, 0xd000
    5bd4: f0000020     	adrp	x0, 0xc000
    5bd8: 9109e000     	add	x0, x0, #0x278
    5bdc: 910003e2     	mov	x2, sp
    5be0: aa1f03e1     	mov	x1, xzr
    5be4: f94012a8     	ldr	x8, [x21, #0x20]
    5be8: f940a108     	ldr	x8, [x8, #0x140]
    5bec: d63f0100     	blr	x8
    5bf0: 90000056     	adrp	x22, 0xd000
    5bf4: b7f80200     	tbnz	x0, #0x3f, 0x5c34 <.text+0x4c34>
    5bf8: f94003e0     	ldr	x0, [sp]
    5bfc: 90000053     	adrp	x19, 0xd000
    5c00: 91050273     	add	x19, x19, #0x140
    5c04: aa1303e1     	mov	x1, x19
    5c08: f9400008     	ldr	x8, [x0]
    5c0c: d63f0100     	blr	x8
    5c10: 39400268     	ldrb	w8, [x19]
    5c14: 34000128     	cbz	w8, 0x5c38 <.text+0x4c38>
    5c18: f94003e0     	ldr	x0, [sp]
    5c1c: 90000041     	adrp	x1, 0xd000
    5c20: 91052021     	add	x1, x1, #0x148
    5c24: f9400408     	ldr	x8, [x0, #0x8]
    5c28: d63f0100     	blr	x8
    5c2c: b6f801e0     	tbz	x0, #0x3f, 0x5c68 <.text+0x4c68>
    5c30: 1400004a     	b	0x5d58 <.text+0x4d58>
    5c34: 390502df     	strb	wzr, [x22, #0x140]
    5c38: f94012a8     	ldr	x8, [x21, #0x20]
    5c3c: 90000002     	adrp	x2, 0x5000 <.text+0x4000>
    5c40: f0000024     	adrp	x4, 0xc000
    5c44: 90000045     	adrp	x5, 0xd000
    5c48: 91070042     	add	x2, x2, #0x1c0
    5c4c: 91056084     	add	x4, x4, #0x158
    5c50: 9104a0a5     	add	x5, x5, #0x128
    5c54: 52804000     	mov	w0, #0x200              // =512
    5c58: f940b908     	ldr	x8, [x8, #0x170]
    5c5c: 52800201     	mov	w1, #0x10               // =16
    5c60: aa1f03e3     	mov	x3, xzr
    5c64: d63f0100     	blr	x8
    5c68: 90000048     	adrp	x8, 0xd000
    5c6c: f94012a9     	ldr	x9, [x21, #0x20]
    5c70: 394502ca     	ldrb	w10, [x22, #0x140]
    5c74: f0000020     	adrp	x0, 0xc000
    5c78: 911c4000     	add	x0, x0, #0x710
    5c7c: 910063a2     	add	x2, x29, #0x18
    5c80: f940a508     	ldr	x8, [x8, #0x148]
    5c84: aa1f03e1     	mov	x1, xzr
    5c88: 9105012b     	add	x11, x9, #0x140
    5c8c: 9102012c     	add	x12, x9, #0x80
    5c90: 91010129     	add	x9, x9, #0x40
    5c94: 7100015f     	cmp	w10, #0x0
    5c98: 9101410a     	add	x10, x8, #0x50
    5c9c: 9103410d     	add	x13, x8, #0xd0
    5ca0: 9a8a0129     	csel	x9, x9, x10, eq
    5ca4: 9102a108     	add	x8, x8, #0xa8
    5ca8: 9a8d016a     	csel	x10, x11, x13, eq
    5cac: 9a880188     	csel	x8, x12, x8, eq
    5cb0: f9400136     	ldr	x22, [x9]
    5cb4: f9400149     	ldr	x9, [x10]
    5cb8: f9400113     	ldr	x19, [x8]
    5cbc: d63f0120     	blr	x9
    5cc0: b7f800c0     	tbnz	x0, #0x3f, 0x5cd8 <.text+0x4cd8>
    5cc4: f9400fa8     	ldr	x8, [x29, #0x18]
    5cc8: 90000049     	adrp	x9, 0xd000
    5ccc: aa0003f4     	mov	x20, x0
    5cd0: f9009128     	str	x8, [x9, #0x120]
    5cd4: 14000022     	b	0x5d5c <.text+0x4d5c>
    5cd8: 90000055     	adrp	x21, 0xd000
    5cdc: 910063a2     	add	x2, x29, #0x18
    5ce0: 528000c0     	mov	w0, #0x6                // =6
    5ce4: f94092a8     	ldr	x8, [x21, #0x120]
    5ce8: 38404d01     	ldrb	w1, [x8, #0x4]!
    5cec: 39400d09     	ldrb	w9, [x8, #0x3]
    5cf0: 3940090a     	ldrb	w10, [x8, #0x2]
    5cf4: 39400508     	ldrb	w8, [x8, #0x1]
    5cf8: b3781d2a     	bfi	x10, x9, #8, #8
    5cfc: b3781d01     	bfi	x1, x8, #8, #8
    5d00: b3703d41     	bfi	x1, x10, #16, #16
    5d04: d63f02c0     	blr	x22
    5d08: b7f80280     	tbnz	x0, #0x3f, 0x5d58 <.text+0x4d58>
    5d0c: f94092a1     	ldr	x1, [x21, #0x120]
    5d10: f9400fa0     	ldr	x0, [x29, #0x18]
    5d14: aa0103e8     	mov	x8, x1
    5d18: 3940142a     	ldrb	w10, [x1, #0x5]
    5d1c: 38404d02     	ldrb	w2, [x8, #0x4]!
    5d20: 39400d09     	ldrb	w9, [x8, #0x3]
    5d24: 39400908     	ldrb	w8, [x8, #0x2]
    5d28: b3781d42     	bfi	x2, x10, #8, #8
    5d2c: b3781d28     	bfi	x8, x9, #8, #8
    5d30: b3703d02     	bfi	x2, x8, #16, #16
    5d34: 97fff485     	bl	0x2f48 <.text+0x1f48>
    5d38: f9400fa3     	ldr	x3, [x29, #0x18]
    5d3c: f0000021     	adrp	x1, 0xc000
    5d40: 911c4021     	add	x1, x1, #0x710
    5d44: 910023e0     	add	x0, sp, #0x8
    5d48: 2a1f03e2     	mov	w2, wzr
    5d4c: f90007ff     	str	xzr, [sp, #0x8]
    5d50: f90092a3     	str	x3, [x21, #0x120]
    5d54: d63f0260     	blr	x19
    5d58: aa0003f4     	mov	x20, x0
    5d5c: aa1403e0     	mov	x0, x20
    5d60: f94013f7     	ldr	x23, [sp, #0x20]
    5d64: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5d68: a94357f6     	ldp	x22, x21, [sp, #0x30]
    5d6c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5d70: 910143ff     	add	sp, sp, #0x50
    5d74: d65f03c0     	ret
    5d78: 90000048     	adrp	x8, 0xd000
    5d7c: d2800054     	mov	x20, #0x2               // =2
    5d80: 52800029     	mov	w9, #0x1                // =1
    5d84: f2f00014     	movk	x20, #0x8000, lsl #48
    5d88: f9409113     	ldr	x19, [x8, #0x120]
    5d8c: 90000048     	adrp	x8, 0xd000
    5d90: 3904c109     	strb	w9, [x8, #0x130]
    5d94: b4fffe53     	cbz	x19, 0x5d5c <.text+0x4d5c>
    5d98: f0000021     	adrp	x1, 0xc000
    5d9c: aa1303e0     	mov	x0, x19
    5da0: 911b7021     	add	x1, x1, #0x6dc
    5da4: 52800082     	mov	w2, #0x4                // =4
    5da8: 94000ff2     	bl	0x9d70 <.text+0x8d70>
    5dac: b5fffd80     	cbnz	x0, 0x5d5c <.text+0x4d5c>
    5db0: aa1f03e9     	mov	x9, xzr
    5db4: 2a1f03e8     	mov	w8, wzr
    5db8: 38696a6a     	ldrb	w10, [x19, x9]
    5dbc: 91000529     	add	x9, x9, #0x1
    5dc0: 7100713f     	cmp	w9, #0x1c
    5dc4: 0b080148     	add	w8, w10, w8
    5dc8: 54ffff81     	b.ne	0x5db8 <.text+0x4db8>
    5dcc: 72001d1f     	tst	w8, #0xff
    5dd0: 54000060     	b.eq	0x5ddc <.text+0x4ddc>
    5dd4: 91006294     	add	x20, x20, #0x18
    5dd8: 17ffffe1     	b	0x5d5c <.text+0x4d5c>
    5ddc: aa1303e9     	mov	x9, x19
    5de0: aa1303eb     	mov	x11, x19
    5de4: 3940266a     	ldrb	w10, [x19, #0x9]
    5de8: 3940166f     	ldrb	w15, [x19, #0x5]
    5dec: 38408d28     	ldrb	w8, [x9, #0x8]!
    5df0: 39400d2c     	ldrb	w12, [x9, #0x3]
    5df4: 3940092d     	ldrb	w13, [x9, #0x2]
    5df8: 38404d69     	ldrb	w9, [x11, #0x4]!
    5dfc: 39400d6e     	ldrb	w14, [x11, #0x3]
    5e00: b3781d48     	bfi	x8, x10, #8, #8
    5e04: 3940096b     	ldrb	w11, [x11, #0x2]
    5e08: b3781d8d     	bfi	x13, x12, #8, #8
    5e0c: b3781de9     	bfi	x9, x15, #8, #8
    5e10: b3703da8     	bfi	x8, x13, #16, #16
    5e14: b3781dcb     	bfi	x11, x14, #8, #8
    5e18: b3703d69     	bfi	x9, x11, #16, #16
    5e1c: 6b09011f     	cmp	w8, w9
    5e20: 540004a2     	b.hs	0x5eb4 <.text+0x4eb4>
    5e24: 8b090276     	add	x22, x19, x9
    5e28: 8b080274     	add	x20, x19, x8
    5e2c: 39403668     	ldrb	w8, [x19, #0xd]
    5e30: aa1f03f5     	mov	x21, xzr
    5e34: 3840ce77     	ldrb	w23, [x19, #0xc]!
    5e38: 39400e69     	ldrb	w9, [x19, #0x3]
    5e3c: 39400a6a     	ldrb	w10, [x19, #0x2]
    5e40: b3781d17     	bfi	x23, x8, #8, #8
    5e44: b3781d2a     	bfi	x10, x9, #8, #8
    5e48: b3703d57     	bfi	x23, x10, #16, #16
    5e4c: aa1403e0     	mov	x0, x20
    5e50: 9400001f     	bl	0x5ecc <.text+0x4ecc>
    5e54: 72001c1f     	tst	w0, #0xff
    5e58: 54000260     	b.eq	0x5ea4 <.text+0x4ea4>
    5e5c: aa1403e8     	mov	x8, x20
    5e60: 38428d09     	ldrb	w9, [x8, #0x28]!
    5e64: aa0803ea     	mov	x10, x8
    5e68: 39400d0e     	ldrb	w14, [x8, #0x3]
    5e6c: 3940090f     	ldrb	w15, [x8, #0x2]
    5e70: 3940150d     	ldrb	w13, [x8, #0x5]
    5e74: 38404d4b     	ldrb	w11, [x10, #0x4]!
    5e78: 39400d4c     	ldrb	w12, [x10, #0x3]
    5e7c: 3940094a     	ldrb	w10, [x10, #0x2]
    5e80: b3781dcf     	bfi	x15, x14, #8, #8
    5e84: 39400508     	ldrb	w8, [x8, #0x1]
    5e88: 33181dab     	bfi	w11, w13, #8, #8
    5e8c: 33181d8a     	bfi	w10, w12, #8, #8
    5e90: b3781d09     	bfi	x9, x8, #8, #8
    5e94: 33103d4b     	bfi	w11, w10, #16, #16
    5e98: b3703de9     	bfi	x9, x15, #16, #16
    5e9c: b3607d69     	bfi	x9, x11, #32, #32
    5ea0: 8b150135     	add	x21, x9, x21
    5ea4: 8b170294     	add	x20, x20, x23
    5ea8: eb16029f     	cmp	x20, x22
    5eac: 54fffd03     	b.lo	0x5e4c <.text+0x4e4c>
    5eb0: 14000002     	b	0x5eb8 <.text+0x4eb8>
    5eb4: aa1f03f5     	mov	x21, xzr
    5eb8: 97fffc9c     	bl	0x5128 <.text+0x4128>
    5ebc: 90000048     	adrp	x8, 0xd000
    5ec0: cb150009     	sub	x9, x0, x21
    5ec4: f9009d09     	str	x9, [x8, #0x138]
    5ec8: 17ffff42     	b	0x5bd0 <.text+0x4bd0>
    5ecc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    5ed0: f9000bf3     	str	x19, [sp, #0x10]
    5ed4: 910003fd     	mov	x29, sp
    5ed8: b4000200     	cbz	x0, 0x5f18 <.text+0x4f18>
    5edc: f0000021     	adrp	x1, 0xc000
    5ee0: aa0003f3     	mov	x19, x0
    5ee4: 9105a021     	add	x1, x1, #0x168
    5ee8: 97fff414     	bl	0x2f38 <.text+0x1f38>
    5eec: 72001c1f     	tst	w0, #0xff
    5ef0: 54000120     	b.eq	0x5f14 <.text+0x4f14>
    5ef4: f0000021     	adrp	x1, 0xc000
    5ef8: 91004260     	add	x0, x19, #0x10
    5efc: 911c0021     	add	x1, x1, #0x700
    5f00: 97fff40e     	bl	0x2f38 <.text+0x1f38>
    5f04: 72001c1f     	tst	w0, #0xff
    5f08: 54000060     	b.eq	0x5f14 <.text+0x4f14>
    5f0c: 3940c268     	ldrb	w8, [x19, #0x30]
    5f10: 370800a8     	tbnz	w8, #0x1, 0x5f24 <.text+0x4f24>
    5f14: 2a1f03e0     	mov	w0, wzr
    5f18: f9400bf3     	ldr	x19, [sp, #0x10]
    5f1c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    5f20: d65f03c0     	ret
    5f24: 52800020     	mov	w0, #0x1                // =1
    5f28: 17fffffc     	b	0x5f18 <.text+0x4f18>
    5f2c: d2800048     	mov	x8, #0x2                // =2
    5f30: f100841f     	cmp	x0, #0x21
    5f34: f2f00008     	movk	x8, #0x8000, lsl #48
    5f38: 540001c3     	b.lo	0x5f70 <.text+0x4f70>
    5f3c: b40001a1     	cbz	x1, 0x5f70 <.text+0x4f70>
    5f40: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    5f44: 910003fd     	mov	x29, sp
    5f48: 52804009     	mov	w9, #0x200              // =512
    5f4c: 91004028     	add	x8, x1, #0x10
    5f50: 72a1de29     	movk	w9, #0xef1, lsl #16
    5f54: 29012420     	stp	w0, w9, [x1, #0x8]
    5f58: f0000021     	adrp	x1, 0xc000
    5f5c: 91062021     	add	x1, x1, #0x188
    5f60: aa0803e0     	mov	x0, x8
    5f64: 97fff3f3     	bl	0x2f30 <.text+0x1f30>
    5f68: aa1f03e8     	mov	x8, xzr
    5f6c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    5f70: aa0803e0     	mov	x0, x8
    5f74: d65f03c0     	ret
    5f78: d2800048     	mov	x8, #0x2                // =2
    5f7c: d1004429     	sub	x9, x1, #0x11
    5f80: f2f00008     	movk	x8, #0x8000, lsl #48
    5f84: b100413f     	cmn	x9, #0x10
    5f88: 54000203     	b.lo	0x5fc8 <.text+0x4fc8>
    5f8c: b40001e0     	cbz	x0, 0x5fc8 <.text+0x4fc8>
    5f90: b40001c2     	cbz	x2, 0x5fc8 <.text+0x4fc8>
    5f94: b0000029     	adrp	x9, 0xa000 <.text+0x9000>
    5f98: aa1f03e8     	mov	x8, xzr
    5f9c: 913c0129     	add	x9, x9, #0xf00
    5fa0: 3868692a     	ldrb	w10, [x9, x8]
    5fa4: eb01011f     	cmp	x8, x1
    5fa8: 54000062     	b.hs	0x5fb4 <.text+0x4fb4>
    5fac: 3868680b     	ldrb	w11, [x0, x8]
    5fb0: 0b0a016a     	add	w10, w11, w10
    5fb4: 3828684a     	strb	w10, [x2, x8]
    5fb8: 91000508     	add	x8, x8, #0x1
    5fbc: f100411f     	cmp	x8, #0x10
    5fc0: 54ffff01     	b.ne	0x5fa0 <.text+0x4fa0>
    5fc4: aa1f03e8     	mov	x8, xzr
    5fc8: aa0803e0     	mov	x0, x8
    5fcc: d65f03c0     	ret
    5fd0: 90000048     	adrp	x8, 0xd000
    5fd4: f0000020     	adrp	x0, 0xc000
    5fd8: 90000042     	adrp	x2, 0xd000
    5fdc: 910ae000     	add	x0, x0, #0x2b8
    5fe0: 91056042     	add	x2, x2, #0x158
    5fe4: aa1f03e1     	mov	x1, xzr
    5fe8: f940a908     	ldr	x8, [x8, #0x150]
    5fec: f9406903     	ldr	x3, [x8, #0xd0]
    5ff0: d61f0060     	br	x3
    5ff4: d10143ff     	sub	sp, sp, #0x50
    5ff8: a9037bfd     	stp	x29, x30, [sp, #0x30]
    5ffc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    6000: 9100c3fd     	add	x29, sp, #0x30
    6004: d0000028     	adrp	x8, 0xc000
    6008: d0000033     	adrp	x19, 0xc000
    600c: 91066273     	add	x19, x19, #0x198
    6010: 910063e1     	add	x1, sp, #0x18
    6014: aa1303e0     	mov	x0, x19
    6018: 52800022     	mov	w2, #0x1                // =1
    601c: f9400108     	ldr	x8, [x8]
    6020: f81f83a8     	stur	x8, [x29, #-0x8]
    6024: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    6028: 97fffe6a     	bl	0x59d0 <.text+0x49d0>
    602c: f0000028     	adrp	x8, 0xd000
    6030: 910063e1     	add	x1, sp, #0x18
    6034: 52800022     	mov	w2, #0x1                // =1
    6038: f900b100     	str	x0, [x8, #0x160]
    603c: aa1303e0     	mov	x0, x19
    6040: 97fffe70     	bl	0x5a00 <.text+0x4a00>
    6044: f0000028     	adrp	x8, 0xd000
    6048: 52800021     	mov	w1, #0x1                // =1
    604c: f900b500     	str	x0, [x8, #0x168]
    6050: d0000020     	adrp	x0, 0xc000
    6054: 9105e000     	add	x0, x0, #0x178
    6058: 97fffdf3     	bl	0x5824 <.text+0x4824>
    605c: f0000034     	adrp	x20, 0xd000
    6060: b4000080     	cbz	x0, 0x6070 <.text+0x5070>
    6064: 79406008     	ldrh	w8, [x0, #0x30]
    6068: 8b080008     	add	x8, x0, x8
    606c: f900ba88     	str	x8, [x20, #0x170]
    6070: f0000033     	adrp	x19, 0xd000
    6074: d0000020     	adrp	x0, 0xc000
    6078: 9109e000     	add	x0, x0, #0x278
    607c: 910043e2     	add	x2, sp, #0x10
    6080: aa1f03e1     	mov	x1, xzr
    6084: f9401268     	ldr	x8, [x19, #0x20]
    6088: f940a108     	ldr	x8, [x8, #0x140]
    608c: d63f0100     	blr	x8
    6090: b7f80540     	tbnz	x0, #0x3f, 0x6138 <.text+0x5138>
    6094: f9400be0     	ldr	x0, [sp, #0x10]
    6098: 910033e1     	add	x1, sp, #0xc
    609c: 390033ff     	strb	wzr, [sp, #0xc]
    60a0: f9400008     	ldr	x8, [x0]
    60a4: d63f0100     	blr	x8
    60a8: 394033e8     	ldrb	w8, [sp, #0xc]
    60ac: 34000468     	cbz	w8, 0x6138 <.text+0x5138>
    60b0: f9401268     	ldr	x8, [x19, #0x20]
    60b4: d0000020     	adrp	x0, 0xc000
    60b8: 9109e000     	add	x0, x0, #0x278
    60bc: 910043e2     	add	x2, sp, #0x10
    60c0: aa1f03e1     	mov	x1, xzr
    60c4: f940a108     	ldr	x8, [x8, #0x140]
    60c8: d63f0100     	blr	x8
    60cc: b7f808a0     	tbnz	x0, #0x3f, 0x61e0 <.text+0x51e0>
    60d0: f9400be0     	ldr	x0, [sp, #0x10]
    60d4: f0000021     	adrp	x1, 0xd000
    60d8: 91054021     	add	x1, x1, #0x150
    60dc: f9400408     	ldr	x8, [x0, #0x8]
    60e0: d63f0100     	blr	x8
    60e4: b7f807e0     	tbnz	x0, #0x3f, 0x61e0 <.text+0x51e0>
    60e8: f0000033     	adrp	x19, 0xd000
    60ec: d0000020     	adrp	x0, 0xc000
    60f0: f0000022     	adrp	x2, 0xd000
    60f4: 910ae000     	add	x0, x0, #0x2b8
    60f8: 91056042     	add	x2, x2, #0x158
    60fc: aa1f03e1     	mov	x1, xzr
    6100: f940aa68     	ldr	x8, [x19, #0x150]
    6104: f9406908     	ldr	x8, [x8, #0xd0]
    6108: d63f0100     	blr	x8
    610c: b6f806a0     	tbz	x0, #0x3f, 0x61e0 <.text+0x51e0>
    6110: f940aa68     	ldr	x8, [x19, #0x150]
    6114: d0000020     	adrp	x0, 0xc000
    6118: f0ffffe1     	adrp	x1, 0x5000 <.text+0x4000>
    611c: f0000022     	adrp	x2, 0xd000
    6120: 910ae000     	add	x0, x0, #0x2b8
    6124: 913f4021     	add	x1, x1, #0xfd0
    6128: 91064042     	add	x2, x2, #0x190
    612c: f9406108     	ldr	x8, [x8, #0xc0]
    6130: d63f0100     	blr	x8
    6134: 1400002b     	b	0x61e0 <.text+0x51e0>
    6138: f0000028     	adrp	x8, 0xd000
    613c: f0000020     	adrp	x0, 0xd000
    6140: 9105e000     	add	x0, x0, #0x178
    6144: f9400508     	ldr	x8, [x8, #0x8]
    6148: f9000008     	str	x8, [x0]
    614c: 94001137     	bl	0xa628 <.text+0x9628>
    6150: f0000020     	adrp	x0, 0xd000
    6154: 91058000     	add	x0, x0, #0x160
    6158: 94001134     	bl	0xa628 <.text+0x9628>
    615c: f940ba88     	ldr	x8, [x20, #0x170]
    6160: b4000088     	cbz	x8, 0x6170 <.text+0x5170>
    6164: f0000020     	adrp	x0, 0xd000
    6168: 9105c000     	add	x0, x0, #0x170
    616c: 9400112f     	bl	0xa628 <.text+0x9628>
    6170: f9401268     	ldr	x8, [x19, #0x20]
    6174: 90000002     	adrp	x2, 0x6000 <.text+0x5000>
    6178: d0000024     	adrp	x4, 0xc000
    617c: f0000025     	adrp	x5, 0xd000
    6180: 91082042     	add	x2, x2, #0x208
    6184: 91056084     	add	x4, x4, #0x158
    6188: 910600a5     	add	x5, x5, #0x180
    618c: 52804000     	mov	w0, #0x200              // =512
    6190: f940b908     	ldr	x8, [x8, #0x170]
    6194: 52800101     	mov	w1, #0x8                // =8
    6198: aa1f03e3     	mov	x3, xzr
    619c: d63f0100     	blr	x8
    61a0: b7f80200     	tbnz	x0, #0x3f, 0x61e0 <.text+0x51e0>
    61a4: 90000028     	adrp	x8, 0xa000 <.text+0x9000>
    61a8: 3962e108     	ldrb	w8, [x8, #0x8b8]
    61ac: 340001a8     	cbz	w8, 0x61e0 <.text+0x51e0>
    61b0: f9401268     	ldr	x8, [x19, #0x20]
    61b4: 90000002     	adrp	x2, 0x6000 <.text+0x5000>
    61b8: d0000024     	adrp	x4, 0xc000
    61bc: f0000025     	adrp	x5, 0xd000
    61c0: 91086042     	add	x2, x2, #0x218
    61c4: 91052084     	add	x4, x4, #0x148
    61c8: 910620a5     	add	x5, x5, #0x188
    61cc: 52804000     	mov	w0, #0x200              // =512
    61d0: f940b908     	ldr	x8, [x8, #0x170]
    61d4: 52800101     	mov	w1, #0x8                // =8
    61d8: aa1f03e3     	mov	x3, xzr
    61dc: d63f0100     	blr	x8
    61e0: d0000029     	adrp	x9, 0xc000
    61e4: f85f83a8     	ldur	x8, [x29, #-0x8]
    61e8: f9400129     	ldr	x9, [x9]
    61ec: eb08013f     	cmp	x9, x8
    61f0: 540000a1     	b.ne	0x6204 <.text+0x5204>
    61f4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    61f8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    61fc: 910143ff     	add	sp, sp, #0x50
    6200: d65f03c0     	ret
    6204: 97ffebb3     	bl	0x10d0 <.text+0xd0>
    6208: f0000028     	adrp	x8, 0xd000
    620c: 52800029     	mov	w9, #0x1                // =1
    6210: 39066109     	strb	w9, [x8, #0x198]
    6214: d65f03c0     	ret
    6218: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    621c: f9000bf3     	str	x19, [sp, #0x10]
    6220: 910003fd     	mov	x29, sp
    6224: f0000028     	adrp	x8, 0xd000
    6228: f0000029     	adrp	x9, 0xd000
    622c: aa0003f3     	mov	x19, x0
    6230: f940a90a     	ldr	x10, [x8, #0x150]
    6234: f940ad28     	ldr	x8, [x9, #0x158]
    6238: 52800029     	mov	w9, #0x1                // =1
    623c: f100015f     	cmp	x10, #0x0
    6240: 390073a9     	strb	w9, [x29, #0x1c]
    6244: fa401900     	ccmp	x8, #0x0, #0x0, ne
    6248: 54000200     	b.eq	0x6288 <.text+0x5288>
    624c: f0000029     	adrp	x9, 0xd000
    6250: 9100410a     	add	x10, x8, #0x10
    6254: f100011f     	cmp	x8, #0x0
    6258: 90000020     	adrp	x0, 0xa000 <.text+0x9000>
    625c: d0000021     	adrp	x1, 0xc000
    6260: 913c4000     	add	x0, x0, #0xf10
    6264: f940bd29     	ldr	x9, [x9, #0x178]
    6268: 9104e021     	add	x1, x1, #0x138
    626c: 910073a4     	add	x4, x29, #0x1c
    6270: 528000c2     	mov	w2, #0x6                // =6
    6274: 52800023     	mov	w3, #0x1                // =1
    6278: 91016129     	add	x9, x9, #0x58
    627c: 9a8a0128     	csel	x8, x9, x10, eq
    6280: f9400108     	ldr	x8, [x8]
    6284: d63f0100     	blr	x8
    6288: f0000028     	adrp	x8, 0xd000
    628c: aa1303e0     	mov	x0, x19
    6290: f9401108     	ldr	x8, [x8, #0x20]
    6294: f9403908     	ldr	x8, [x8, #0x70]
    6298: d63f0100     	blr	x8
    629c: f9400bf3     	ldr	x19, [sp, #0x10]
    62a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    62a4: d65f03c0     	ret
    62a8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    62ac: f9000bf3     	str	x19, [sp, #0x10]
    62b0: 910003fd     	mov	x29, sp
    62b4: f0000028     	adrp	x8, 0xd000
    62b8: f0000033     	adrp	x19, 0xd000
    62bc: f940c100     	ldr	x0, [x8, #0x180]
    62c0: b4000140     	cbz	x0, 0x62e8 <.text+0x52e8>
    62c4: f9401268     	ldr	x8, [x19, #0x20]
    62c8: f9403908     	ldr	x8, [x8, #0x70]
    62cc: d63f0100     	blr	x8
    62d0: b6f800c0     	tbz	x0, #0x3f, 0x62e8 <.text+0x52e8>
    62d4: 90000021     	adrp	x1, 0xa000 <.text+0x9000>
    62d8: aa0003e2     	mov	x2, x0
    62dc: 911ed021     	add	x1, x1, #0x7b4
    62e0: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    62e4: 97fff42f     	bl	0x33a0 <.text+0x23a0>
    62e8: 90000028     	adrp	x8, 0xa000 <.text+0x9000>
    62ec: f0000029     	adrp	x9, 0xd000
    62f0: 3962e108     	ldrb	w8, [x8, #0x8b8]
    62f4: f940c520     	ldr	x0, [x9, #0x188]
    62f8: 7100011f     	cmp	w8, #0x0
    62fc: fa401804     	ccmp	x0, #0x0, #0x4, ne
    6300: 54000140     	b.eq	0x6328 <.text+0x5328>
    6304: f9401268     	ldr	x8, [x19, #0x20]
    6308: f9403908     	ldr	x8, [x8, #0x70]
    630c: d63f0100     	blr	x8
    6310: b6f800c0     	tbz	x0, #0x3f, 0x6328 <.text+0x5328>
    6314: 90000021     	adrp	x1, 0xa000 <.text+0x9000>
    6318: aa0003e2     	mov	x2, x0
    631c: 911ed021     	add	x1, x1, #0x7b4
    6320: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    6324: 97fff41f     	bl	0x33a0 <.text+0x23a0>
    6328: f0000028     	adrp	x8, 0xd000
    632c: f940bd08     	ldr	x8, [x8, #0x178]
    6330: b40000e8     	cbz	x8, 0x634c <.text+0x534c>
    6334: f0000020     	adrp	x0, 0xd000
    6338: 9105e000     	add	x0, x0, #0x178
    633c: 940010bd     	bl	0xa630 <.text+0x9630>
    6340: f0000020     	adrp	x0, 0xd000
    6344: 91058000     	add	x0, x0, #0x160
    6348: 940010ba     	bl	0xa630 <.text+0x9630>
    634c: f0000028     	adrp	x8, 0xd000
    6350: f940a908     	ldr	x8, [x8, #0x150]
    6354: b4000168     	cbz	x8, 0x6380 <.text+0x5380>
    6358: f0000029     	adrp	x9, 0xd000
    635c: f940c929     	ldr	x9, [x9, #0x190]
    6360: b4000109     	cbz	x9, 0x6380 <.text+0x5380>
    6364: f9406108     	ldr	x8, [x8, #0xc0]
    6368: d0000020     	adrp	x0, 0xc000
    636c: f0000022     	adrp	x2, 0xd000
    6370: 910ae000     	add	x0, x0, #0x2b8
    6374: 91064042     	add	x2, x2, #0x190
    6378: aa1f03e1     	mov	x1, xzr
    637c: d63f0100     	blr	x8
    6380: f9400bf3     	ldr	x19, [sp, #0x10]
    6384: aa1f03e0     	mov	x0, xzr
    6388: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    638c: d65f03c0     	ret
    6390: f0000028     	adrp	x8, 0xd000
    6394: f0000029     	adrp	x9, 0xd000
    6398: f940a90a     	ldr	x10, [x8, #0x150]
    639c: f940ad28     	ldr	x8, [x9, #0x158]
    63a0: f100015f     	cmp	x10, #0x0
    63a4: fa401900     	ccmp	x8, #0x0, #0x0, ne
    63a8: 54000160     	b.eq	0x63d4 <.text+0x53d4>
    63ac: f0000029     	adrp	x9, 0xd000
    63b0: f100011f     	cmp	x8, #0x0
    63b4: aa0303e4     	mov	x4, x3
    63b8: aa0203e3     	mov	x3, x2
    63bc: aa1f03e2     	mov	x2, xzr
    63c0: f940bd29     	ldr	x9, [x9, #0x178]
    63c4: 91012129     	add	x9, x9, #0x48
    63c8: 9a880128     	csel	x8, x9, x8, eq
    63cc: f9400105     	ldr	x5, [x8]
    63d0: d61f00a0     	br	x5
    63d4: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    63d8: d65f03c0     	ret
    63dc: aa0303e4     	mov	x4, x3
    63e0: aa0203e3     	mov	x3, x2
    63e4: aa1f03e2     	mov	x2, xzr
    63e8: 14000001     	b	0x63ec <.text+0x53ec>
    63ec: d101c3ff     	sub	sp, sp, #0x70
    63f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    63f4: a9026ffc     	stp	x28, x27, [sp, #0x20]
    63f8: a90367fa     	stp	x26, x25, [sp, #0x30]
    63fc: a9045ff8     	stp	x24, x23, [sp, #0x40]
    6400: a90557f6     	stp	x22, x21, [sp, #0x50]
    6404: a9064ff4     	stp	x20, x19, [sp, #0x60]
    6408: 910043fd     	add	x29, sp, #0x10
    640c: d280013a     	mov	x26, #0x9               // =9
    6410: f2f0001a     	movk	x26, #0x8000, lsl #48
    6414: d1001f58     	sub	x24, x26, #0x7
    6418: b4000663     	cbz	x3, 0x64e4 <.text+0x54e4>
    641c: aa0403f3     	mov	x19, x4
    6420: b4000624     	cbz	x4, 0x64e4 <.text+0x54e4>
    6424: f000003b     	adrp	x27, 0xd000
    6428: aa0303f4     	mov	x20, x3
    642c: aa0203f5     	mov	x21, x2
    6430: aa0103f6     	mov	x22, x1
    6434: aa0003f7     	mov	x23, x0
    6438: f940ab68     	ldr	x8, [x27, #0x150]
    643c: b50000c8     	cbnz	x8, 0x6454 <.text+0x5454>
    6440: f0000029     	adrp	x9, 0xd000
    6444: 39466129     	ldrb	w9, [x9, #0x198]
    6448: 34000069     	cbz	w9, 0x6454 <.text+0x5454>
    644c: aa1a03f8     	mov	x24, x26
    6450: 14000025     	b	0x64e4 <.text+0x54e4>
    6454: f000003c     	adrp	x28, 0xd000
    6458: f90007ff     	str	xzr, [sp, #0x8]
    645c: f940af89     	ldr	x9, [x28, #0x158]
    6460: b4000048     	cbz	x8, 0x6468 <.text+0x5468>
    6464: b40003e9     	cbz	x9, 0x64e0 <.text+0x54e0>
    6468: f0000028     	adrp	x8, 0xd000
    646c: f100013f     	cmp	x9, #0x0
    6470: 910023e3     	add	x3, sp, #0x8
    6474: aa1703e0     	mov	x0, x23
    6478: aa1603e1     	mov	x1, x22
    647c: aa1f03e2     	mov	x2, xzr
    6480: f940bd08     	ldr	x8, [x8, #0x178]
    6484: aa1f03e4     	mov	x4, xzr
    6488: 91012108     	add	x8, x8, #0x48
    648c: 9a890108     	csel	x8, x8, x9, eq
    6490: f9400108     	ldr	x8, [x8]
    6494: d63f0100     	blr	x8
    6498: b4000240     	cbz	x0, 0x64e0 <.text+0x54e0>
    649c: aa0003f8     	mov	x24, x0
    64a0: d28000a8     	mov	x8, #0x5                // =5
    64a4: f2f00008     	movk	x8, #0x8000, lsl #48
    64a8: eb08001f     	cmp	x0, x8
    64ac: 540001c1     	b.ne	0x64e4 <.text+0x54e4>
    64b0: f94007e0     	ldr	x0, [sp, #0x8]
    64b4: 9400002b     	bl	0x6560 <.text+0x5560>
    64b8: aa1a03f8     	mov	x24, x26
    64bc: f90003e0     	str	x0, [sp]
    64c0: b4000120     	cbz	x0, 0x64e4 <.text+0x54e4>
    64c4: f940ab69     	ldr	x9, [x27, #0x150]
    64c8: aa0003f9     	mov	x25, x0
    64cc: f940af88     	ldr	x8, [x28, #0x158]
    64d0: b40001c9     	cbz	x9, 0x6508 <.text+0x5508>
    64d4: b50001a8     	cbnz	x8, 0x6508 <.text+0x5508>
    64d8: b2410bf8     	mov	x24, #-0x7ffffffffffffffd // =-9223372036854775805
    64dc: 1400001e     	b	0x6554 <.text+0x5554>
    64e0: b2410bf8     	mov	x24, #-0x7ffffffffffffffd // =-9223372036854775805
    64e4: aa1803e0     	mov	x0, x24
    64e8: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    64ec: a94557f6     	ldp	x22, x21, [sp, #0x50]
    64f0: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    64f4: a94367fa     	ldp	x26, x25, [sp, #0x30]
    64f8: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    64fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6500: 9101c3ff     	add	sp, sp, #0x70
    6504: d65f03c0     	ret
    6508: f0000029     	adrp	x9, 0xd000
    650c: f100011f     	cmp	x8, #0x0
    6510: 910023e3     	add	x3, sp, #0x8
    6514: aa1703e0     	mov	x0, x23
    6518: aa1603e1     	mov	x1, x22
    651c: aa1503e2     	mov	x2, x21
    6520: f940bd29     	ldr	x9, [x9, #0x178]
    6524: aa1903e4     	mov	x4, x25
    6528: 91012129     	add	x9, x9, #0x48
    652c: 9a880128     	csel	x8, x9, x8, eq
    6530: f9400108     	ldr	x8, [x8]
    6534: d63f0100     	blr	x8
    6538: b7f800c0     	tbnz	x0, #0x3f, 0x6550 <.text+0x5550>
    653c: f94007e8     	ldr	x8, [sp, #0x8]
    6540: aa1f03f8     	mov	x24, xzr
    6544: f9000288     	str	x8, [x20]
    6548: f9000279     	str	x25, [x19]
    654c: 17ffffe6     	b	0x64e4 <.text+0x54e4>
    6550: aa0003f8     	mov	x24, x0
    6554: 910003e0     	mov	x0, sp
    6558: 97fff4d5     	bl	0x38ac <.text+0x28ac>
    655c: 17ffffe2     	b	0x64e4 <.text+0x54e4>
    6560: f0000028     	adrp	x8, 0xd000
    6564: f0000029     	adrp	x9, 0xd000
    6568: f940a908     	ldr	x8, [x8, #0x150]
    656c: 39466129     	ldrb	w9, [x9, #0x198]
    6570: f100011f     	cmp	x8, #0x0
    6574: 7a400924     	ccmp	w9, #0x0, #0x4, eq
    6578: 54000041     	b.ne	0x6580 <.text+0x5580>
    657c: 17fff773     	b	0x4348 <.text+0x3348>
    6580: aa1f03e0     	mov	x0, xzr
    6584: d65f03c0     	ret
    6588: f0000028     	adrp	x8, 0xd000
    658c: f0000029     	adrp	x9, 0xd000
    6590: f940a90a     	ldr	x10, [x8, #0x150]
    6594: f940ad28     	ldr	x8, [x9, #0x158]
    6598: f100015f     	cmp	x10, #0x0
    659c: fa401900     	ccmp	x8, #0x0, #0x0, ne
    65a0: 54000120     	b.eq	0x65c4 <.text+0x55c4>
    65a4: f0000029     	adrp	x9, 0xd000
    65a8: 9100410a     	add	x10, x8, #0x10
    65ac: f100011f     	cmp	x8, #0x0
    65b0: f940bd29     	ldr	x9, [x9, #0x178]
    65b4: 91016128     	add	x8, x9, #0x58
    65b8: 9a8a0108     	csel	x8, x8, x10, eq
    65bc: f9400105     	ldr	x5, [x8]
    65c0: d61f00a0     	br	x5
    65c4: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    65c8: d65f03c0     	ret
    65cc: d10243ff     	sub	sp, sp, #0x90
    65d0: a9037bfd     	stp	x29, x30, [sp, #0x30]
    65d4: a9046ffc     	stp	x28, x27, [sp, #0x40]
    65d8: a90567fa     	stp	x26, x25, [sp, #0x50]
    65dc: a9065ff8     	stp	x24, x23, [sp, #0x60]
    65e0: a90757f6     	stp	x22, x21, [sp, #0x70]
    65e4: a9084ff4     	stp	x20, x19, [sp, #0x80]
    65e8: 9100c3fd     	add	x29, sp, #0x30
    65ec: f0000028     	adrp	x8, 0xd000
    65f0: 39466108     	ldrb	w8, [x8, #0x198]
    65f4: 370001e8     	tbnz	w8, #0x0, 0x6630 <.text+0x5630>
    65f8: f0000038     	adrp	x24, 0xd000
    65fc: aa0403f3     	mov	x19, x4
    6600: aa0303f4     	mov	x20, x3
    6604: 2a0203f7     	mov	w23, w2
    6608: aa0103f6     	mov	x22, x1
    660c: aa0003f5     	mov	x21, x0
    6610: f940ab08     	ldr	x8, [x24, #0x150]
    6614: f81f83bf     	stur	xzr, [x29, #-0x8]
    6618: b4000108     	cbz	x8, 0x6638 <.text+0x5638>
    661c: 52800028     	mov	w8, #0x1                // =1
    6620: f0000029     	adrp	x9, 0xd000
    6624: f940ad29     	ldr	x9, [x9, #0x158]
    6628: 34001ac8     	cbz	w8, 0x6980 <.text+0x5980>
    662c: b5001aa9     	cbnz	x9, 0x6980 <.text+0x5980>
    6630: b2410bf8     	mov	x24, #-0x7ffffffffffffffd // =-9223372036854775805
    6634: 140000e1     	b	0x69b8 <.text+0x59b8>
    6638: f000003b     	adrp	x27, 0xd000
    663c: d0000020     	adrp	x0, 0xc000
    6640: 910ae000     	add	x0, x0, #0x2b8
    6644: d10023a2     	sub	x2, x29, #0x8
    6648: aa1f03e1     	mov	x1, xzr
    664c: f9401368     	ldr	x8, [x27, #0x20]
    6650: f940a108     	ldr	x8, [x8, #0x140]
    6654: d63f0100     	blr	x8
    6658: f9401368     	ldr	x8, [x27, #0x20]
    665c: d0000020     	adrp	x0, 0xc000
    6660: 910b2000     	add	x0, x0, #0x2c8
    6664: d10043a2     	sub	x2, x29, #0x10
    6668: aa1f03e1     	mov	x1, xzr
    666c: f940a108     	ldr	x8, [x8, #0x140]
    6670: d63f0100     	blr	x8
    6674: f940ab09     	ldr	x9, [x24, #0x150]
    6678: b7f81b20     	tbnz	x0, #0x3f, 0x69dc <.text+0x59dc>
    667c: f100013f     	cmp	x9, #0x0
    6680: 1a9f07e8     	cset	w8, ne
    6684: b5fffce9     	cbnz	x9, 0x6620 <.text+0x5620>
    6688: f85f83a9     	ldur	x9, [x29, #-0x8]
    668c: b4fffca9     	cbz	x9, 0x6620 <.text+0x5620>
    6690: d2800058     	mov	x24, #0x2               // =2
    6694: f2f00018     	movk	x24, #0x8000, lsl #48
    6698: b4001915     	cbz	x21, 0x69b8 <.text+0x59b8>
    669c: b40018f6     	cbz	x22, 0x69b8 <.text+0x59b8>
    66a0: 373018d7     	tbnz	w23, #0x6, 0x69b8 <.text+0x59b8>
    66a4: b4000054     	cbz	x20, 0x66ac <.text+0x56ac>
    66a8: b4001893     	cbz	x19, 0x69b8 <.text+0x59b8>
    66ac: aa1503e0     	mov	x0, x21
    66b0: 97fff427     	bl	0x374c <.text+0x274c>
    66b4: f9401368     	ldr	x8, [x27, #0x20]
    66b8: aa0003f9     	mov	x25, x0
    66bc: d0000020     	adrp	x0, 0xc000
    66c0: 910043e2     	add	x2, sp, #0x10
    66c4: 910b6000     	add	x0, x0, #0x2d8
    66c8: aa1f03e1     	mov	x1, xzr
    66cc: f940a108     	ldr	x8, [x8, #0x140]
    66d0: d63f0100     	blr	x8
    66d4: 91001f18     	add	x24, x24, #0x7
    66d8: b7f81700     	tbnz	x0, #0x3f, 0x69b8 <.text+0x59b8>
    66dc: f9401368     	ldr	x8, [x27, #0x20]
    66e0: d0000020     	adrp	x0, 0xc000
    66e4: 910ba000     	add	x0, x0, #0x2e8
    66e8: 910063e2     	add	x2, sp, #0x18
    66ec: aa1f03e1     	mov	x1, xzr
    66f0: f940a108     	ldr	x8, [x8, #0x140]
    66f4: d63f0100     	blr	x8
    66f8: f9400be8     	ldr	x8, [sp, #0x10]
    66fc: 910023e0     	add	x0, sp, #0x8
    6700: 910003e1     	mov	x1, sp
    6704: f9400108     	ldr	x8, [x8]
    6708: d63f0100     	blr	x8
    670c: b7f81560     	tbnz	x0, #0x3f, 0x69b8 <.text+0x59b8>
    6710: f94003e8     	ldr	x8, [sp]
    6714: 8b190289     	add	x9, x20, x25
    6718: 91013929     	add	x9, x9, #0x4e
    671c: eb08013f     	cmp	x9, x8
    6720: 540014c8     	b.hi	0x69b8 <.text+0x59b8>
    6724: f9401368     	ldr	x8, [x27, #0x20]
    6728: 52800200     	mov	w0, #0x10               // =16
    672c: f9400d08     	ldr	x8, [x8, #0x18]
    6730: d63f0100     	blr	x8
    6734: f94007f8     	ldr	x24, [sp, #0x8]
    6738: aa0003f9     	mov	x25, x0
    673c: b40002f8     	cbz	x24, 0x6798 <.text+0x5798>
    6740: f94003e8     	ldr	x8, [sp]
    6744: f101391f     	cmp	x8, #0x4e
    6748: 54000283     	b.lo	0x6798 <.text+0x5798>
    674c: 528009da     	mov	w26, #0x4e              // =78
    6750: aa1803e0     	mov	x0, x24
    6754: aa1a03e1     	mov	x1, x26
    6758: 97fff1f9     	bl	0x2f3c <.text+0x1f3c>
    675c: d0000021     	adrp	x1, 0xc000
    6760: aa1803e0     	mov	x0, x24
    6764: 910ae021     	add	x1, x1, #0x2b8
    6768: 97fff1f2     	bl	0x2f30 <.text+0x1f30>
    676c: 52800028     	mov	w8, #0x1                // =1
    6770: 52800229     	mov	w9, #0x11               // =17
    6774: 38010f1a     	strb	w26, [x24, #0x10]!
    6778: 3900171f     	strb	wzr, [x24, #0x5]
    677c: 39000f1f     	strb	wzr, [x24, #0x3]
    6780: 39000b08     	strb	w8, [x24, #0x2]
    6784: 39000709     	strb	w9, [x24, #0x1]
    6788: 38004f1f     	strb	wzr, [x24, #0x4]!
    678c: 39000f1f     	strb	wzr, [x24, #0x3]
    6790: 39000b1f     	strb	wzr, [x24, #0x2]
    6794: f94007f8     	ldr	x24, [sp, #0x8]
    6798: 38044f14     	strb	w20, [x24, #0x44]!
    679c: aa1803e8     	mov	x8, x24
    67a0: 52800a69     	mov	w9, #0x53               // =83
    67a4: d360fe8a     	lsr	x10, x20, #32
    67a8: aa1803eb     	mov	x11, x24
    67ac: aa1503e0     	mov	x0, x21
    67b0: 381e131f     	sturb	wzr, [x24, #-0x1f]
    67b4: 38004d0a     	strb	w10, [x8, #0x4]!
    67b8: 52800aca     	mov	w10, #0x56              // =86
    67bc: 381dd309     	sturb	w9, [x24, #-0x23]
    67c0: 381dcd69     	strb	w9, [x11, #-0x24]!
    67c4: 39000d69     	strb	w9, [x11, #0x3]
    67c8: d368fe89     	lsr	x9, x20, #40
    67cc: 3900096a     	strb	w10, [x11, #0x2]
    67d0: d378fe8a     	lsr	x10, x20, #56
    67d4: 39001709     	strb	w9, [x24, #0x5]
    67d8: d370fe89     	lsr	x9, x20, #48
    67dc: 39000d0a     	strb	w10, [x8, #0x3]
    67e0: d3507e8a     	ubfx	x10, x20, #16, #16
    67e4: 39000909     	strb	w9, [x8, #0x2]
    67e8: 52800428     	mov	w8, #0x21               // =33
    67ec: aa1803e9     	mov	x9, x24
    67f0: 39000b0a     	strb	w10, [x24, #0x2]
    67f4: d3487e8a     	ubfx	x10, x20, #8, #24
    67f8: d3587e8b     	ubfx	x11, x20, #24, #8
    67fc: 381e0d28     	strb	w8, [x9, #-0x20]!
    6800: 39000d3f     	strb	wzr, [x9, #0x3]
    6804: aa1803e8     	mov	x8, x24
    6808: 3900093f     	strb	wzr, [x9, #0x2]
    680c: 53087ee9     	lsr	w9, w23, #8
    6810: 3900070a     	strb	w10, [x24, #0x1]
    6814: 53107eea     	lsr	w10, w23, #16
    6818: 381f5309     	sturb	w9, [x24, #-0xb]
    681c: 53187ee9     	lsr	w9, w23, #24
    6820: 39000f0b     	strb	w11, [x24, #0x3]
    6824: 381f4d17     	strb	w23, [x8, #-0xc]!
    6828: 39000d09     	strb	w9, [x8, #0x3]
    682c: 3900090a     	strb	w10, [x8, #0x2]
    6830: 97fff3c7     	bl	0x374c <.text+0x274c>
    6834: 381f8f00     	strb	w0, [x24, #-0x8]!
    6838: aa1803f7     	mov	x23, x24
    683c: d360fc08     	lsr	x8, x0, #32
    6840: aa1803fa     	mov	x26, x24
    6844: d3507c09     	ubfx	x9, x0, #16, #16
    6848: d368fc0a     	lsr	x10, x0, #40
    684c: aa1603e1     	mov	x1, x22
    6850: 38004ee8     	strb	w8, [x23, #0x4]!
    6854: d3487c08     	ubfx	x8, x0, #8, #24
    6858: aa1703fc     	mov	x28, x23
    685c: 38002f49     	strb	w9, [x26, #0x2]!
    6860: 39000708     	strb	w8, [x24, #0x1]
    6864: d3587c08     	ubfx	x8, x0, #24, #8
    6868: d378fc09     	lsr	x9, x0, #56
    686c: 390006ea     	strb	w10, [x23, #0x1]
    6870: 39000748     	strb	w8, [x26, #0x1]
    6874: d370fc08     	lsr	x8, x0, #48
    6878: d1005300     	sub	x0, x24, #0x14
    687c: 38002f88     	strb	w8, [x28, #0x2]!
    6880: 39000789     	strb	w9, [x28, #0x1]
    6884: 97fff1ab     	bl	0x2f30 <.text+0x1f30>
    6888: 91004b16     	add	x22, x24, #0x12
    688c: 52911001     	mov	w1, #0x8880             // =34944
    6890: aa1603e0     	mov	x0, x22
    6894: aa1503e2     	mov	x2, x21
    6898: 97fff369     	bl	0x363c <.text+0x263c>
    689c: 39400788     	ldrb	w8, [x28, #0x1]
    68a0: aa1303e1     	mov	x1, x19
    68a4: 39400389     	ldrb	w9, [x28]
    68a8: aa1403e2     	mov	x2, x20
    68ac: 394006ea     	ldrb	w10, [x23, #0x1]
    68b0: 394002eb     	ldrb	w11, [x23]
    68b4: 3940074c     	ldrb	w12, [x26, #0x1]
    68b8: 3940034d     	ldrb	w13, [x26]
    68bc: 33181d09     	bfi	w9, w8, #8, #8
    68c0: 3940070e     	ldrb	w14, [x24, #0x1]
    68c4: 3940030f     	ldrb	w15, [x24]
    68c8: 33181d4b     	bfi	w11, w10, #8, #8
    68cc: 33103d2b     	bfi	w11, w9, #16, #16
    68d0: b3781d8d     	bfi	x13, x12, #8, #8
    68d4: b3781dcf     	bfi	x15, x14, #8, #8
    68d8: b3703daf     	bfi	x15, x13, #16, #16
    68dc: b3607d6f     	bfi	x15, x11, #32, #32
    68e0: 8b0f02c0     	add	x0, x22, x15
    68e4: 97fff199     	bl	0x2f48 <.text+0x1f48>
    68e8: 52800068     	mov	w8, #0x3                // =3
    68ec: 910003e2     	mov	x2, sp
    68f0: 381dcf08     	strb	w8, [x24, #-0x24]!
    68f4: aa1803f3     	mov	x19, x24
    68f8: 52801008     	mov	w8, #0x80               // =128
    68fc: aa1803f4     	mov	x20, x24
    6900: 3900071f     	strb	wzr, [x24, #0x1]
    6904: 38004e7f     	strb	wzr, [x19, #0x4]!
    6908: aa1303f5     	mov	x21, x19
    690c: 3900067f     	strb	wzr, [x19, #0x1]
    6910: 38002e9f     	strb	wzr, [x20, #0x2]!
    6914: 3900069f     	strb	wzr, [x20, #0x1]
    6918: 38002ebf     	strb	wzr, [x21, #0x2]!
    691c: 390006a8     	strb	w8, [x21, #0x1]
    6920: f9400fe0     	ldr	x0, [sp, #0x18]
    6924: f94007e1     	ldr	x1, [sp, #0x8]
    6928: f9400008     	ldr	x8, [x0]
    692c: d63f0100     	blr	x8
    6930: f9401368     	ldr	x8, [x27, #0x20]
    6934: aa1903e0     	mov	x0, x25
    6938: f9401108     	ldr	x8, [x8, #0x20]
    693c: d63f0100     	blr	x8
    6940: 394006a8     	ldrb	w8, [x21, #0x1]
    6944: 394002a9     	ldrb	w9, [x21]
    6948: 3940066a     	ldrb	w10, [x19, #0x1]
    694c: 3940026b     	ldrb	w11, [x19]
    6950: 3940068c     	ldrb	w12, [x20, #0x1]
    6954: 3940028d     	ldrb	w13, [x20]
    6958: 33181d09     	bfi	w9, w8, #8, #8
    695c: 3940070e     	ldrb	w14, [x24, #0x1]
    6960: 39400318     	ldrb	w24, [x24]
    6964: 33181d4b     	bfi	w11, w10, #8, #8
    6968: 33103d2b     	bfi	w11, w9, #16, #16
    696c: b3781d8d     	bfi	x13, x12, #8, #8
    6970: b3781dd8     	bfi	x24, x14, #8, #8
    6974: b3703db8     	bfi	x24, x13, #16, #16
    6978: b3607d78     	bfi	x24, x11, #32, #32
    697c: 1400000f     	b	0x69b8 <.text+0x59b8>
    6980: f0000028     	adrp	x8, 0xd000
    6984: 9100412a     	add	x10, x9, #0x10
    6988: f100013f     	cmp	x9, #0x0
    698c: f940bd08     	ldr	x8, [x8, #0x178]
    6990: 91016108     	add	x8, x8, #0x58
    6994: 9a8a0108     	csel	x8, x8, x10, eq
    6998: f9400108     	ldr	x8, [x8]
    699c: aa1503e0     	mov	x0, x21
    69a0: aa1603e1     	mov	x1, x22
    69a4: 2a1703e2     	mov	w2, w23
    69a8: aa1403e3     	mov	x3, x20
    69ac: aa1303e4     	mov	x4, x19
    69b0: d63f0100     	blr	x8
    69b4: aa0003f8     	mov	x24, x0
    69b8: aa1803e0     	mov	x0, x24
    69bc: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    69c0: a94757f6     	ldp	x22, x21, [sp, #0x70]
    69c4: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    69c8: a94567fa     	ldp	x26, x25, [sp, #0x50]
    69cc: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    69d0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    69d4: 910243ff     	add	sp, sp, #0x90
    69d8: d65f03c0     	ret
    69dc: f0000028     	adrp	x8, 0xd000
    69e0: f940ad08     	ldr	x8, [x8, #0x158]
    69e4: b4000049     	cbz	x9, 0x69ec <.text+0x59ec>
    69e8: b4ffe248     	cbz	x8, 0x6630 <.text+0x5630>
    69ec: f0000029     	adrp	x9, 0xd000
    69f0: 9100410a     	add	x10, x8, #0x10
    69f4: f100011f     	cmp	x8, #0x0
    69f8: f940bd29     	ldr	x9, [x9, #0x178]
    69fc: 91016129     	add	x9, x9, #0x58
    6a00: 9a8a0128     	csel	x8, x9, x10, eq
    6a04: 17ffffe5     	b	0x6998 <.text+0x5998>
    6a08: 90000028     	adrp	x8, 0xa000 <.text+0x9000>
    6a0c: 3962e108     	ldrb	w8, [x8, #0x8b8]
    6a10: 34000208     	cbz	w8, 0x6a50 <.text+0x5a50>
    6a14: f0000028     	adrp	x8, 0xd000
    6a18: f0000029     	adrp	x9, 0xd000
    6a1c: f940a90a     	ldr	x10, [x8, #0x150]
    6a20: f940ad28     	ldr	x8, [x9, #0x158]
    6a24: f100015f     	cmp	x10, #0x0
    6a28: fa401900     	ccmp	x8, #0x0, #0x0, ne
    6a2c: 54000140     	b.eq	0x6a54 <.text+0x5a54>
    6a30: f0000029     	adrp	x9, 0xd000
    6a34: 9100410a     	add	x10, x8, #0x10
    6a38: f100011f     	cmp	x8, #0x0
    6a3c: f940bd29     	ldr	x9, [x9, #0x178]
    6a40: 91016128     	add	x8, x9, #0x58
    6a44: 9a8a0108     	csel	x8, x8, x10, eq
    6a48: f9400105     	ldr	x5, [x8]
    6a4c: d61f00a0     	br	x5
    6a50: 17fffedf     	b	0x65cc <.text+0x55cc>
    6a54: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    6a58: d65f03c0     	ret
    6a5c: d10103ff     	sub	sp, sp, #0x40
    6a60: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6a64: f90013f5     	str	x21, [sp, #0x20]
    6a68: a9034ff4     	stp	x20, x19, [sp, #0x30]
    6a6c: 910043fd     	add	x29, sp, #0x10
    6a70: f0000028     	adrp	x8, 0xd000
    6a74: 39466108     	ldrb	w8, [x8, #0x198]
    6a78: 36000068     	tbz	w8, #0x0, 0x6a84 <.text+0x5a84>
    6a7c: b24113e0     	mov	x0, #-0x7ffffffffffffff1 // =-9223372036854775793
    6a80: 14000040     	b	0x6b80 <.text+0x5b80>
    6a84: f0000028     	adrp	x8, 0xd000
    6a88: aa0003f4     	mov	x20, x0
    6a8c: d0000020     	adrp	x0, 0xc000
    6a90: aa0103f3     	mov	x19, x1
    6a94: 910b2000     	add	x0, x0, #0x2c8
    6a98: 910063a2     	add	x2, x29, #0x18
    6a9c: f9401108     	ldr	x8, [x8, #0x20]
    6aa0: aa1f03e1     	mov	x1, xzr
    6aa4: f940a108     	ldr	x8, [x8, #0x140]
    6aa8: d63f0100     	blr	x8
    6aac: b7f80460     	tbnz	x0, #0x3f, 0x6b38 <.text+0x5b38>
    6ab0: 90000028     	adrp	x8, 0xa000 <.text+0x9000>
    6ab4: f9400fa0     	ldr	x0, [x29, #0x18]
    6ab8: 3962e108     	ldrb	w8, [x8, #0x8b8]
    6abc: 34000428     	cbz	w8, 0x6b40 <.text+0x5b40>
    6ac0: 90000035     	adrp	x21, 0xa000 <.text+0x9000>
    6ac4: d0000021     	adrp	x1, 0xc000
    6ac8: 913c42b5     	add	x21, x21, #0xf10
    6acc: 9104e021     	add	x1, x1, #0x138
    6ad0: 12800004     	mov	w4, #-0x1               // =-1
    6ad4: aa1503e2     	mov	x2, x21
    6ad8: 2a1f03e3     	mov	w3, wzr
    6adc: 2a1f03e5     	mov	w5, wzr
    6ae0: 2a1f03e6     	mov	w6, wzr
    6ae4: 52800047     	mov	w7, #0x2                // =2
    6ae8: 94000e8b     	bl	0xa514 <.text+0x9514>
    6aec: b40000a0     	cbz	x0, 0x6b00 <.text+0x5b00>
    6af0: d2800288     	mov	x8, #0x14               // =20
    6af4: f2f00008     	movk	x8, #0x8000, lsl #48
    6af8: eb08001f     	cmp	x0, x8
    6afc: 54000421     	b.ne	0x6b80 <.text+0x5b80>
    6b00: f9400fa0     	ldr	x0, [x29, #0x18]
    6b04: d0000027     	adrp	x7, 0xc000
    6b08: 2a1f03e3     	mov	w3, wzr
    6b0c: 2a1f03e5     	mov	w5, wzr
    6b10: 2a1f03e6     	mov	w6, wzr
    6b14: 12800004     	mov	w4, #-0x1               // =-1
    6b18: 9104e0e7     	add	x7, x7, #0x138
    6b1c: 52800028     	mov	w8, #0x1                // =1
    6b20: aa1303e1     	mov	x1, x19
    6b24: aa1403e2     	mov	x2, x20
    6b28: f90003f5     	str	x21, [sp]
    6b2c: 390023e8     	strb	w8, [sp, #0x8]
    6b30: 94000e9a     	bl	0xa598 <.text+0x9598>
    6b34: 1400000b     	b	0x6b60 <.text+0x5b60>
    6b38: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    6b3c: 14000011     	b	0x6b80 <.text+0x5b80>
    6b40: 12800004     	mov	w4, #-0x1               // =-1
    6b44: aa1303e1     	mov	x1, x19
    6b48: aa1403e2     	mov	x2, x20
    6b4c: 2a1f03e3     	mov	w3, wzr
    6b50: 2a1f03e5     	mov	w5, wzr
    6b54: 2a1f03e6     	mov	w6, wzr
    6b58: 52800027     	mov	w7, #0x1                // =1
    6b5c: 94000e6e     	bl	0xa514 <.text+0x9514>
    6b60: aa0003e8     	mov	x8, x0
    6b64: aa1f03e0     	mov	x0, xzr
    6b68: d2800289     	mov	x9, #0x14               // =20
    6b6c: f2f00009     	movk	x9, #0x8000, lsl #48
    6b70: eb09011f     	cmp	x8, x9
    6b74: 54000060     	b.eq	0x6b80 <.text+0x5b80>
    6b78: b4000048     	cbz	x8, 0x6b80 <.text+0x5b80>
    6b7c: aa0803e0     	mov	x0, x8
    6b80: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    6b84: f94013f5     	ldr	x21, [sp, #0x20]
    6b88: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6b8c: 910103ff     	add	sp, sp, #0x40
    6b90: d65f03c0     	ret
    6b94: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    6b98: f9000bf3     	str	x19, [sp, #0x10]
    6b9c: 910003fd     	mov	x29, sp
    6ba0: f0000033     	adrp	x19, 0xd000
    6ba4: d0000020     	adrp	x0, 0xc000
    6ba8: f0000022     	adrp	x2, 0xd000
    6bac: 910c2000     	add	x0, x0, #0x308
    6bb0: 9106a042     	add	x2, x2, #0x1a8
    6bb4: aa1f03e1     	mov	x1, xzr
    6bb8: f9401268     	ldr	x8, [x19, #0x20]
    6bbc: f940a108     	ldr	x8, [x8, #0x140]
    6bc0: d63f0100     	blr	x8
    6bc4: b6f800c0     	tbz	x0, #0x3f, 0x6bdc <.text+0x5bdc>
    6bc8: 90000021     	adrp	x1, 0xa000 <.text+0x9000>
    6bcc: aa0003e2     	mov	x2, x0
    6bd0: 911ed021     	add	x1, x1, #0x7b4
    6bd4: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    6bd8: 97fff1f2     	bl	0x33a0 <.text+0x23a0>
    6bdc: f9401268     	ldr	x8, [x19, #0x20]
    6be0: d0000020     	adrp	x0, 0xc000
    6be4: f0000022     	adrp	x2, 0xd000
    6be8: 910ca000     	add	x0, x0, #0x328
    6bec: 9106e042     	add	x2, x2, #0x1b8
    6bf0: aa1f03e1     	mov	x1, xzr
    6bf4: f940a108     	ldr	x8, [x8, #0x140]
    6bf8: d63f0100     	blr	x8
    6bfc: b6f800c0     	tbz	x0, #0x3f, 0x6c14 <.text+0x5c14>
    6c00: 90000021     	adrp	x1, 0xa000 <.text+0x9000>
    6c04: aa0003e2     	mov	x2, x0
    6c08: 911ed021     	add	x1, x1, #0x7b4
    6c0c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    6c10: 97fff1e4     	bl	0x33a0 <.text+0x23a0>
    6c14: f9401268     	ldr	x8, [x19, #0x20]
    6c18: d0000020     	adrp	x0, 0xc000
    6c1c: f0000022     	adrp	x2, 0xd000
    6c20: 910ce000     	add	x0, x0, #0x338
    6c24: 91070042     	add	x2, x2, #0x1c0
    6c28: aa1f03e1     	mov	x1, xzr
    6c2c: f940a108     	ldr	x8, [x8, #0x140]
    6c30: d63f0100     	blr	x8
    6c34: b6f800c0     	tbz	x0, #0x3f, 0x6c4c <.text+0x5c4c>
    6c38: 90000021     	adrp	x1, 0xa000 <.text+0x9000>
    6c3c: aa0003e2     	mov	x2, x0
    6c40: 911ed021     	add	x1, x1, #0x7b4
    6c44: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    6c48: 97fff1d6     	bl	0x33a0 <.text+0x23a0>
    6c4c: f9401268     	ldr	x8, [x19, #0x20]
    6c50: d0000020     	adrp	x0, 0xc000
    6c54: f0000022     	adrp	x2, 0xd000
    6c58: 910a6000     	add	x0, x0, #0x298
    6c5c: 91068042     	add	x2, x2, #0x1a0
    6c60: aa1f03e1     	mov	x1, xzr
    6c64: f940a108     	ldr	x8, [x8, #0x140]
    6c68: d63f0100     	blr	x8
    6c6c: f9401268     	ldr	x8, [x19, #0x20]
    6c70: d0000020     	adrp	x0, 0xc000
    6c74: f0000022     	adrp	x2, 0xd000
    6c78: 910c6000     	add	x0, x0, #0x318
    6c7c: 9106c042     	add	x2, x2, #0x1b0
    6c80: aa1f03e1     	mov	x1, xzr
    6c84: f940a108     	ldr	x8, [x8, #0x140]
    6c88: d63f0100     	blr	x8
    6c8c: f9400bf3     	ldr	x19, [sp, #0x10]
    6c90: aa1f03e0     	mov	x0, xzr
    6c94: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    6c98: d65f03c0     	ret
    6c9c: d10603ff     	sub	sp, sp, #0x180
    6ca0: a9157bfd     	stp	x29, x30, [sp, #0x150]
    6ca4: a91657fc     	stp	x28, x21, [sp, #0x160]
    6ca8: a9174ff4     	stp	x20, x19, [sp, #0x170]
    6cac: 910543fd     	add	x29, sp, #0x150
    6cb0: d0000028     	adrp	x8, 0xc000
    6cb4: 2a0003f5     	mov	w21, w0
    6cb8: 52900040     	mov	w0, #0x8002             // =32770
    6cbc: aa0203f3     	mov	x19, x2
    6cc0: 2a0103f4     	mov	w20, w1
    6cc4: f9400108     	ldr	x8, [x8]
    6cc8: f81f83a8     	stur	x8, [x29, #-0x8]
    6ccc: 97fff2f5     	bl	0x38a0 <.text+0x28a0>
    6cd0: 790153e0     	strh	w0, [sp, #0xa8]
    6cd4: 52802440     	mov	w0, #0x122              // =290
    6cd8: 97fff2e6     	bl	0x3870 <.text+0x2870>
    6cdc: 53107c08     	lsr	w8, w0, #16
    6ce0: 79015fe0     	strh	w0, [sp, #0xae]
    6ce4: 2a1503e0     	mov	w0, w21
    6ce8: 790163e8     	strh	w8, [sp, #0xb0]
    6cec: 97fff2e1     	bl	0x3870 <.text+0x2870>
    6cf0: 53107c08     	lsr	w8, w0, #16
    6cf4: 790167e0     	strh	w0, [sp, #0xb2]
    6cf8: 2a1403e0     	mov	w0, w20
    6cfc: 79016be8     	strh	w8, [sp, #0xb4]
    6d00: 97fff2dc     	bl	0x3870 <.text+0x2870>
    6d04: 9102a3f5     	add	x21, sp, #0xa8
    6d08: 53107c08     	lsr	w8, w0, #16
    6d0c: 91005ab4     	add	x20, x21, #0x16
    6d10: 79016fe0     	strh	w0, [sp, #0xb6]
    6d14: aa1303e0     	mov	x0, x19
    6d18: aa1403e1     	mov	x1, x20
    6d1c: 790173e8     	strh	w8, [sp, #0xb8]
    6d20: 94000111     	bl	0x7164 <.text+0x6164>
    6d24: 0b000293     	add	w19, w20, w0
    6d28: 97fff2d2     	bl	0x3870 <.text+0x2870>
    6d2c: 4b150273     	sub	w19, w19, w21
    6d30: 53107c08     	lsr	w8, w0, #16
    6d34: 790177e0     	strh	w0, [sp, #0xba]
    6d38: 2a1303e0     	mov	w0, w19
    6d3c: 79017be8     	strh	w8, [sp, #0xbc]
    6d40: 97fff2cc     	bl	0x3870 <.text+0x2870>
    6d44: 52801268     	mov	w8, #0x93               // =147
    6d48: 53107c09     	lsr	w9, w0, #16
    6d4c: 790157e0     	strh	w0, [sp, #0xaa]
    6d50: 9102a3e1     	add	x1, sp, #0xa8
    6d54: 910033e2     	add	x2, sp, #0xc
    6d58: 910043e3     	add	x3, sp, #0x10
    6d5c: 2a1303e0     	mov	w0, w19
    6d60: 79015be9     	strh	w9, [sp, #0xac]
    6d64: b9000fe8     	str	w8, [sp, #0xc]
    6d68: 94000e34     	bl	0xa638 <.text+0x9638>
    6d6c: aa0003f3     	mov	x19, x0
    6d70: b7f80700     	tbnz	x0, #0x3f, 0x6e50 <.text+0x5e50>
    6d74: b9400fe2     	ldr	w2, [sp, #0xc]
    6d78: 7100245f     	cmp	w2, #0x9
    6d7c: 540000e8     	b.hi	0x6d98 <.text+0x5d98>
    6d80: b0000021     	adrp	x1, 0xb000 <.text+0xa000>
    6d84: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    6d88: 9101dc21     	add	x1, x1, #0x77
    6d8c: 97fff185     	bl	0x33a0 <.text+0x23a0>
    6d90: b2410ff3     	mov	x19, #-0x7ffffffffffffff9 // =-9223372036854775801
    6d94: 1400002f     	b	0x6e50 <.text+0x5e50>
    6d98: 794033e8     	ldrh	w8, [sp, #0x18]
    6d9c: 79402fe0     	ldrh	w0, [sp, #0x16]
    6da0: 33103d00     	bfi	w0, w8, #16, #16
    6da4: 97fff2b3     	bl	0x3870 <.text+0x2870>
    6da8: 34000540     	cbz	w0, 0x6e50 <.text+0x5e50>
    6dac: 2a0003f4     	mov	w20, w0
    6db0: 794033e8     	ldrh	w8, [sp, #0x18]
    6db4: 79402fe0     	ldrh	w0, [sp, #0x16]
    6db8: 33103d00     	bfi	w0, w8, #16, #16
    6dbc: 97fff2ad     	bl	0x3870 <.text+0x2870>
    6dc0: b0000021     	adrp	x1, 0xb000 <.text+0xa000>
    6dc4: 2a0003e2     	mov	w2, w0
    6dc8: 9102a021     	add	x1, x1, #0xa8
    6dcc: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    6dd0: 97fff174     	bl	0x33a0 <.text+0x23a0>
    6dd4: b2410bf3     	mov	x19, #-0x7ffffffffffffffd // =-9223372036854775805
    6dd8: 71062a9f     	cmp	w20, #0x18a
    6ddc: 5400010d     	b.le	0x6dfc <.text+0x5dfc>
    6de0: 710a0e9f     	cmp	w20, #0x283
    6de4: 540001ac     	b.gt	0x6e18 <.text+0x5e18>
    6de8: 71062e9f     	cmp	w20, #0x18b
    6dec: 54000260     	b.eq	0x6e38 <.text+0x5e38>
    6df0: 710a0a9f     	cmp	w20, #0x282
    6df4: 540002e0     	b.eq	0x6e50 <.text+0x5e50>
    6df8: 17ffffe6     	b	0x6d90 <.text+0x5d90>
    6dfc: 71020a9f     	cmp	w20, #0x82
    6e00: 54000280     	b.eq	0x6e50 <.text+0x5e50>
    6e04: 7105269f     	cmp	w20, #0x149
    6e08: 540001e0     	b.eq	0x6e44 <.text+0x5e44>
    6e0c: 7106129f     	cmp	w20, #0x184
    6e10: 54000140     	b.eq	0x6e38 <.text+0x5e38>
    6e14: 17ffffdf     	b	0x6d90 <.text+0x5d90>
    6e18: 710a129f     	cmp	w20, #0x284
    6e1c: 540000e0     	b.eq	0x6e38 <.text+0x5e38>
    6e20: 710a2e9f     	cmp	w20, #0x28b
    6e24: 54fffb61     	b.ne	0x6d90 <.text+0x5d90>
    6e28: d2800048     	mov	x8, #0x2                // =2
    6e2c: f2f00008     	movk	x8, #0x8000, lsl #48
    6e30: b27e0513     	orr	x19, x8, #0xc
    6e34: 14000007     	b	0x6e50 <.text+0x5e50>
    6e38: d2800053     	mov	x19, #0x2               // =2
    6e3c: f2f00013     	movk	x19, #0x8000, lsl #48
    6e40: 14000004     	b	0x6e50 <.text+0x5e50>
    6e44: d2800048     	mov	x8, #0x2                // =2
    6e48: f2f00008     	movk	x8, #0x8000, lsl #48
    6e4c: b27d0513     	orr	x19, x8, #0x18
    6e50: 528013e1     	mov	w1, #0x9f               // =159
    6e54: 9102a3e0     	add	x0, sp, #0xa8
    6e58: 97fff039     	bl	0x2f3c <.text+0x1f3c>
    6e5c: 52801261     	mov	w1, #0x93               // =147
    6e60: 910043e0     	add	x0, sp, #0x10
    6e64: 97fff036     	bl	0x2f3c <.text+0x1f3c>
    6e68: d0000029     	adrp	x9, 0xc000
    6e6c: f85f83a8     	ldur	x8, [x29, #-0x8]
    6e70: f9400129     	ldr	x9, [x9]
    6e74: eb08013f     	cmp	x9, x8
    6e78: 540000e1     	b.ne	0x6e94 <.text+0x5e94>
    6e7c: aa1303e0     	mov	x0, x19
    6e80: a9574ff4     	ldp	x20, x19, [sp, #0x170]
    6e84: a95657fc     	ldp	x28, x21, [sp, #0x160]
    6e88: a9557bfd     	ldp	x29, x30, [sp, #0x150]
    6e8c: 910603ff     	add	sp, sp, #0x180
    6e90: d65f03c0     	ret
    6e94: 97ffe88f     	bl	0x10d0 <.text+0xd0>
    6e98: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    6e9c: f9000bfc     	str	x28, [sp, #0x10]
    6ea0: a9025ff8     	stp	x24, x23, [sp, #0x20]
    6ea4: a90357f6     	stp	x22, x21, [sp, #0x30]
    6ea8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    6eac: 910003fd     	mov	x29, sp
    6eb0: d11543ff     	sub	sp, sp, #0x550
    6eb4: d0000028     	adrp	x8, 0xc000
    6eb8: 2a0003f8     	mov	w24, w0
    6ebc: 52900040     	mov	w0, #0x8002             // =32770
    6ec0: aa0503f3     	mov	x19, x5
    6ec4: 2a0403f4     	mov	w20, w4
    6ec8: 2a0303f5     	mov	w21, w3
    6ecc: f9400108     	ldr	x8, [x8]
    6ed0: aa0203f6     	mov	x22, x2
    6ed4: 2a0103f7     	mov	w23, w1
    6ed8: f81f83a8     	stur	x8, [x29, #-0x8]
    6edc: 97fff271     	bl	0x38a0 <.text+0x28a0>
    6ee0: 781503a0     	sturh	w0, [x29, #-0xb0]
    6ee4: 528029c0     	mov	w0, #0x14e              // =334
    6ee8: 97fff262     	bl	0x3870 <.text+0x2870>
    6eec: 53107c08     	lsr	w8, w0, #16
    6ef0: 781563a0     	sturh	w0, [x29, #-0xaa]
    6ef4: 2a1803e0     	mov	w0, w24
    6ef8: 781583a8     	sturh	w8, [x29, #-0xa8]
    6efc: 97fff25d     	bl	0x3870 <.text+0x2870>
    6f00: 53107c08     	lsr	w8, w0, #16
    6f04: 7815a3a0     	sturh	w0, [x29, #-0xa6]
    6f08: 2a1703e0     	mov	w0, w23
    6f0c: 7815c3a8     	sturh	w8, [x29, #-0xa4]
    6f10: 97fff258     	bl	0x3870 <.text+0x2870>
    6f14: d102c3b8     	sub	x24, x29, #0xb0
    6f18: 53107c08     	lsr	w8, w0, #16
    6f1c: 91005b17     	add	x23, x24, #0x16
    6f20: 7815e3a0     	sturh	w0, [x29, #-0xa2]
    6f24: aa1603e0     	mov	x0, x22
    6f28: aa1703e1     	mov	x1, x23
    6f2c: 781603a8     	sturh	w8, [x29, #-0xa0]
    6f30: 9400008d     	bl	0x7164 <.text+0x6164>
    6f34: 8b2042f6     	add	x22, x23, w0, uxtw
    6f38: 97fff24e     	bl	0x3870 <.text+0x2870>
    6f3c: 53107c08     	lsr	w8, w0, #16
    6f40: 781623a0     	sturh	w0, [x29, #-0x9e]
    6f44: 2a1503e0     	mov	w0, w21
    6f48: 781643a8     	sturh	w8, [x29, #-0x9c]
    6f4c: 97fff255     	bl	0x38a0 <.text+0x28a0>
    6f50: 2a0003e1     	mov	w1, w0
    6f54: aa1603e0     	mov	x0, x22
    6f58: 94000c21     	bl	0x9fdc <.text+0x8fdc>
    6f5c: 2a1403e0     	mov	w0, w20
    6f60: 91000ad5     	add	x21, x22, #0x2
    6f64: 97fff24f     	bl	0x38a0 <.text+0x28a0>
    6f68: 2a0003e1     	mov	w1, w0
    6f6c: aa1503e0     	mov	x0, x21
    6f70: 94000c1b     	bl	0x9fdc <.text+0x8fdc>
    6f74: 4b1802a8     	sub	w8, w21, w24
    6f78: 11000914     	add	w20, w8, #0x2
    6f7c: 2a1403e0     	mov	w0, w20
    6f80: 97fff23c     	bl	0x3870 <.text+0x2870>
    6f84: 528092a8     	mov	w8, #0x495              // =1173
    6f88: 53107c09     	lsr	w9, w0, #16
    6f8c: 781523a0     	sturh	w0, [x29, #-0xae]
    6f90: d102c3a1     	sub	x1, x29, #0xb0
    6f94: 910013e2     	add	x2, sp, #0x4
    6f98: 910023e3     	add	x3, sp, #0x8
    6f9c: 2a1403e0     	mov	w0, w20
    6fa0: 781543a9     	sturh	w9, [x29, #-0xac]
    6fa4: b90007e8     	str	w8, [sp, #0x4]
    6fa8: 94000da4     	bl	0xa638 <.text+0x9638>
    6fac: aa0003f4     	mov	x20, x0
    6fb0: b7f80120     	tbnz	x0, #0x3f, 0x6fd4 <.text+0x5fd4>
    6fb4: b94007e2     	ldr	w2, [sp, #0x4]
    6fb8: 7100245f     	cmp	w2, #0x9
    6fbc: 54000328     	b.hi	0x7020 <.text+0x6020>
    6fc0: b0000021     	adrp	x1, 0xb000 <.text+0xa000>
    6fc4: 91034421     	add	x1, x1, #0xd1
    6fc8: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    6fcc: 97fff0f5     	bl	0x33a0 <.text+0x23a0>
    6fd0: b2410ff4     	mov	x20, #-0x7ffffffffffffff9 // =-9223372036854775801
    6fd4: 52801461     	mov	w1, #0xa3               // =163
    6fd8: d102c3a0     	sub	x0, x29, #0xb0
    6fdc: 97ffefd8     	bl	0x2f3c <.text+0x1f3c>
    6fe0: 528092a1     	mov	w1, #0x495              // =1173
    6fe4: 910023e0     	add	x0, sp, #0x8
    6fe8: 97ffefd5     	bl	0x2f3c <.text+0x1f3c>
    6fec: d0000029     	adrp	x9, 0xc000
    6ff0: f85f83a8     	ldur	x8, [x29, #-0x8]
    6ff4: f9400129     	ldr	x9, [x9]
    6ff8: eb08013f     	cmp	x9, x8
    6ffc: 54000b21     	b.ne	0x7160 <.text+0x6160>
    7000: aa1403e0     	mov	x0, x20
    7004: 911543ff     	add	sp, sp, #0x550
    7008: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    700c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    7010: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    7014: f9400bfc     	ldr	x28, [sp, #0x10]
    7018: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    701c: d65f03c0     	ret
    7020: 794023e8     	ldrh	w8, [sp, #0x10]
    7024: 79401fe0     	ldrh	w0, [sp, #0xe]
    7028: 33103d00     	bfi	w0, w8, #16, #16
    702c: 97fff211     	bl	0x3870 <.text+0x2870>
    7030: 340002e0     	cbz	w0, 0x708c <.text+0x608c>
    7034: 2a0003f5     	mov	w21, w0
    7038: 90000021     	adrp	x1, 0xb000 <.text+0xa000>
    703c: 9103e421     	add	x1, x1, #0xf9
    7040: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    7044: 2a1503e2     	mov	w2, w21
    7048: d2800053     	mov	x19, #0x2               // =2
    704c: f2f00013     	movk	x19, #0x8000, lsl #48
    7050: 97fff0d4     	bl	0x33a0 <.text+0x23a0>
    7054: 71062abf     	cmp	w21, #0x18a
    7058: 5400032c     	b.gt	0x70bc <.text+0x60bc>
    705c: 51051aa8     	sub	w8, w21, #0x146
    7060: 7100111f     	cmp	w8, #0x4
    7064: 54000528     	b.hi	0x7108 <.text+0x6108>
    7068: f0000009     	adrp	x9, 0xa000 <.text+0x9000>
    706c: b27d0674     	orr	x20, x19, #0x18
    7070: 913ce929     	add	x9, x9, #0xf3a
    7074: 10fffaea     	adr	x10, 0x6fd0 <.text+0x5fd0>
    7078: 3868692b     	ldrb	w11, [x9, x8]
    707c: 8b0b094a     	add	x10, x10, x11, lsl #2
    7080: d61f0140     	br	x10
    7084: 91000a74     	add	x20, x19, #0x2
    7088: 17ffffd3     	b	0x6fd4 <.text+0x5fd4>
    708c: b5fffa54     	cbnz	x20, 0x6fd4 <.text+0x5fd4>
    7090: 79402fe0     	ldrh	w0, [sp, #0x16]
    7094: 97fff203     	bl	0x38a0 <.text+0x28a0>
    7098: 12003c02     	and	w2, w0, #0xffff
    709c: 53087c08     	lsr	w8, w0, #8
    70a0: 7110045f     	cmp	w2, #0x401
    70a4: 39000260     	strb	w0, [x19]
    70a8: 39000668     	strb	w8, [x19, #0x1]
    70ac: 540003e3     	b.lo	0x7128 <.text+0x6128>
    70b0: 90000021     	adrp	x1, 0xb000 <.text+0xa000>
    70b4: 91046421     	add	x1, x1, #0x119
    70b8: 17ffffc4     	b	0x6fc8 <.text+0x5fc8>
    70bc: 712606bf     	cmp	w21, #0x981
    70c0: 5400014c     	b.gt	0x70e8 <.text+0x60e8>
    70c4: 71062ebf     	cmp	w21, #0x18b
    70c8: 540002c0     	b.eq	0x7120 <.text+0x6120>
    70cc: aa1303f4     	mov	x20, x19
    70d0: 710a12bf     	cmp	w21, #0x284
    70d4: 54fff800     	b.eq	0x6fd4 <.text+0x5fd4>
    70d8: 710a2ebf     	cmp	w21, #0x28b
    70dc: 54fff7a1     	b.ne	0x6fd0 <.text+0x5fd0>
    70e0: 91003274     	add	x20, x19, #0xc
    70e4: 17ffffbc     	b	0x6fd4 <.text+0x5fd4>
    70e8: 71260abf     	cmp	w21, #0x982
    70ec: 54000360     	b.eq	0x7158 <.text+0x6158>
    70f0: 71263abf     	cmp	w21, #0x98e
    70f4: 54000160     	b.eq	0x7120 <.text+0x6120>
    70f8: aa1303f4     	mov	x20, x19
    70fc: 71268abf     	cmp	w21, #0x9a2
    7100: 54fff6a0     	b.eq	0x6fd4 <.text+0x5fd4>
    7104: 17ffffb3     	b	0x6fd0 <.text+0x5fd0>
    7108: 7104bebf     	cmp	w21, #0x12f
    710c: 540000a0     	b.eq	0x7120 <.text+0x6120>
    7110: aa1303f4     	mov	x20, x19
    7114: 710612bf     	cmp	w21, #0x184
    7118: 54fff5e0     	b.eq	0x6fd4 <.text+0x5fd4>
    711c: 17ffffad     	b	0x6fd0 <.text+0x5fd0>
    7120: aa1303f4     	mov	x20, x19
    7124: 17ffffac     	b	0x6fd4 <.text+0x5fd4>
    7128: 91000a68     	add	x8, x19, #0x2
    712c: 910023e9     	add	x9, sp, #0x8
    7130: 91004121     	add	x1, x9, #0x10
    7134: 92403c02     	and	x2, x0, #0xffff
    7138: aa0803e0     	mov	x0, x8
    713c: 97ffef83     	bl	0x2f48 <.text+0x1f48>
    7140: aa1f03f4     	mov	x20, xzr
    7144: 17ffffa4     	b	0x6fd4 <.text+0x5fd4>
    7148: b24113f4     	mov	x20, #-0x7ffffffffffffff1 // =-9223372036854775793
    714c: 17ffffa2     	b	0x6fd4 <.text+0x5fd4>
    7150: 91001274     	add	x20, x19, #0x4
    7154: 17ffffa0     	b	0x6fd4 <.text+0x5fd4>
    7158: b2410bf4     	mov	x20, #-0x7ffffffffffffffd // =-9223372036854775805
    715c: 17ffff9e     	b	0x6fd4 <.text+0x5fd4>
    7160: 97ffe7dc     	bl	0x10d0 <.text+0xd0>
    7164: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    7168: a90157f6     	stp	x22, x21, [sp, #0x10]
    716c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7170: 910003fd     	mov	x29, sp
    7174: aa0103f3     	mov	x19, x1
    7178: b40006a0     	cbz	x0, 0x724c <.text+0x624c>
    717c: 39400c08     	ldrb	w8, [x0, #0x3]
    7180: aa0003f4     	mov	x20, x0
    7184: 39400809     	ldrb	w9, [x0, #0x2]
    7188: 3940040a     	ldrb	w10, [x0, #0x1]
    718c: 39400000     	ldrb	w0, [x0]
    7190: 33181d09     	bfi	w9, w8, #8, #8
    7194: 33181d40     	bfi	w0, w10, #8, #8
    7198: 33103d20     	bfi	w0, w9, #16, #16
    719c: 97fff1b5     	bl	0x3870 <.text+0x2870>
    71a0: 2a0003e1     	mov	w1, w0
    71a4: aa1303e0     	mov	x0, x19
    71a8: 94000ba6     	bl	0xa040 <.text+0x9040>
    71ac: 38404e80     	ldrb	w0, [x20, #0x4]!
    71b0: 39400688     	ldrb	w8, [x20, #0x1]
    71b4: 91001275     	add	x21, x19, #0x4
    71b8: 33185d00     	bfi	w0, w8, #8, #24
    71bc: 97fff1b9     	bl	0x38a0 <.text+0x28a0>
    71c0: 2a0003e1     	mov	w1, w0
    71c4: aa1503e0     	mov	x0, x21
    71c8: 94000b85     	bl	0x9fdc <.text+0x8fdc>
    71cc: 39400688     	ldrb	w8, [x20, #0x1]
    71d0: 91001a75     	add	x21, x19, #0x6
    71d4: 39400282     	ldrb	w2, [x20]
    71d8: 91000a81     	add	x1, x20, #0x2
    71dc: aa1503e0     	mov	x0, x21
    71e0: b3781d02     	bfi	x2, x8, #8, #8
    71e4: 97ffef59     	bl	0x2f48 <.text+0x1f48>
    71e8: 39400688     	ldrb	w8, [x20, #0x1]
    71ec: 39400289     	ldrb	w9, [x20]
    71f0: 39410a8a     	ldrb	w10, [x20, #0x42]
    71f4: b3781d09     	bfi	x9, x8, #8, #8
    71f8: 8b0902b5     	add	x21, x21, x9
    71fc: 910006b6     	add	x22, x21, #0x1
    7200: 380036aa     	strb	w10, [x21], #0x3
    7204: 38443e80     	ldrb	w0, [x20, #0x43]!
    7208: 39400688     	ldrb	w8, [x20, #0x1]
    720c: 33185d00     	bfi	w0, w8, #8, #24
    7210: 97fff1a4     	bl	0x38a0 <.text+0x28a0>
    7214: 2a0003e1     	mov	w1, w0
    7218: aa1603e0     	mov	x0, x22
    721c: 94000b70     	bl	0x9fdc <.text+0x8fdc>
    7220: 39400688     	ldrb	w8, [x20, #0x1]
    7224: 91000a81     	add	x1, x20, #0x2
    7228: 39400282     	ldrb	w2, [x20]
    722c: aa1503e0     	mov	x0, x21
    7230: b3781d02     	bfi	x2, x8, #8, #8
    7234: 97ffef45     	bl	0x2f48 <.text+0x1f48>
    7238: 39400688     	ldrb	w8, [x20, #0x1]
    723c: 39400289     	ldrb	w9, [x20]
    7240: b3781d09     	bfi	x9, x8, #8, #8
    7244: 8b0902a8     	add	x8, x21, x9
    7248: 14000015     	b	0x729c <.text+0x629c>
    724c: 52800120     	mov	w0, #0x9                // =9
    7250: 72a80000     	movk	w0, #0x4000, lsl #16
    7254: 97fff187     	bl	0x3870 <.text+0x2870>
    7258: 2a0003e1     	mov	w1, w0
    725c: aa1303e0     	mov	x0, x19
    7260: 94000b78     	bl	0xa040 <.text+0x9040>
    7264: 2a1f03e0     	mov	w0, wzr
    7268: 91001274     	add	x20, x19, #0x4
    726c: 97fff18d     	bl	0x38a0 <.text+0x28a0>
    7270: 2a0003e1     	mov	w1, w0
    7274: aa1403e0     	mov	x0, x20
    7278: 94000b59     	bl	0x9fdc <.text+0x8fdc>
    727c: 2a1f03e0     	mov	w0, wzr
    7280: 91001e74     	add	x20, x19, #0x7
    7284: 39001a7f     	strb	wzr, [x19, #0x6]
    7288: 97fff186     	bl	0x38a0 <.text+0x28a0>
    728c: 2a0003e1     	mov	w1, w0
    7290: aa1403e0     	mov	x0, x20
    7294: 94000b52     	bl	0x9fdc <.text+0x8fdc>
    7298: 91002668     	add	x8, x19, #0x9
    729c: 4b130100     	sub	w0, w8, w19
    72a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    72a4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    72a8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    72ac: d65f03c0     	ret
    72b0: d10483ff     	sub	sp, sp, #0x120
    72b4: a90e7bfd     	stp	x29, x30, [sp, #0xe0]
    72b8: a90f5ffc     	stp	x28, x23, [sp, #0xf0]
    72bc: a91057f6     	stp	x22, x21, [sp, #0x100]
    72c0: a9114ff4     	stp	x20, x19, [sp, #0x110]
    72c4: 910383fd     	add	x29, sp, #0xe0
    72c8: a93a93a3     	stp	x3, x4, [x29, #-0x58]
    72cc: f81a03a2     	stur	x2, [x29, #-0x60]
    72d0: a93b9ba5     	stp	x5, x6, [x29, #-0x48]
    72d4: f81c83a7     	stur	x7, [x29, #-0x38]
    72d8: ad0007e0     	stp	q0, q1, [sp]
    72dc: ad010fe2     	stp	q2, q3, [sp, #0x20]
    72e0: ad0217e4     	stp	q4, q5, [sp, #0x40]
    72e4: ad031fe6     	stp	q6, q7, [sp, #0x60]
    72e8: b4000ca0     	cbz	x0, 0x747c <.text+0x647c>
    72ec: aa0103f3     	mov	x19, x1
    72f0: aa0003f5     	mov	x21, x0
    72f4: d10083a0     	sub	x0, x29, #0x20
    72f8: 52800401     	mov	w1, #0x20               // =32
    72fc: 97ffef10     	bl	0x2f3c <.text+0x1f3c>
    7300: d10183a9     	sub	x9, x29, #0x60
    7304: 910003ea     	mov	x10, sp
    7308: 928005f7     	mov	x23, #-0x30             // =-48
    730c: 2a1f03f4     	mov	w20, wzr
    7310: 910103a8     	add	x8, x29, #0x40
    7314: 9100c129     	add	x9, x9, #0x30
    7318: 9102014a     	add	x10, x10, #0x80
    731c: f2dff017     	movk	x23, #0xff80, lsl #32
    7320: a93e27a8     	stp	x8, x9, [x29, #-0x20]
    7324: a93f5faa     	stp	x10, x23, [x29, #-0x10]
    7328: b89f83a8     	ldursw	x8, [x29, #-0x8]
    732c: 36f80108     	tbz	w8, #0x1f, 0x734c <.text+0x634c>
    7330: 11002109     	add	w9, w8, #0x8
    7334: 3100211f     	cmn	w8, #0x8
    7338: b81f83a9     	stur	w9, [x29, #-0x8]
    733c: 54000088     	b.hi	0x734c <.text+0x634c>
    7340: f85e83a9     	ldur	x9, [x29, #-0x18]
    7344: 8b080128     	add	x8, x9, x8
    7348: 14000004     	b	0x7358 <.text+0x6358>
    734c: f85e03a8     	ldur	x8, [x29, #-0x20]
    7350: 91002109     	add	x9, x8, #0x8
    7354: f81e03a9     	stur	x9, [x29, #-0x20]
    7358: f9400100     	ldr	x0, [x8]
    735c: b40000a0     	cbz	x0, 0x7370 <.text+0x6370>
    7360: 94000b25     	bl	0x9ff4 <.text+0x8ff4>
    7364: 0b000288     	add	w8, w20, w0
    7368: 51001114     	sub	w20, w8, #0x4
    736c: 17ffffef     	b	0x7328 <.text+0x6328>
    7370: 34000854     	cbz	w20, 0x7478 <.text+0x6478>
    7374: 11006296     	add	w22, w20, #0x18
    7378: aa1603e0     	mov	x0, x22
    737c: 97fff3f3     	bl	0x4348 <.text+0x3348>
    7380: f81d83a0     	stur	x0, [x29, #-0x28]
    7384: b40007c0     	cbz	x0, 0x747c <.text+0x647c>
    7388: aa1503e1     	mov	x1, x21
    738c: aa0003f4     	mov	x20, x0
    7390: 97ffeee8     	bl	0x2f30 <.text+0x1f30>
    7394: aa1403e8     	mov	x8, x20
    7398: 53187ec9     	lsr	w9, w22, #24
    739c: 53107eca     	lsr	w10, w22, #16
    73a0: d10183ab     	sub	x11, x29, #0x60
    73a4: 910003ec     	mov	x12, sp
    73a8: 9100c16b     	add	x11, x11, #0x30
    73ac: 38010d16     	strb	w22, [x8, #0x10]!
    73b0: 39000d09     	strb	w9, [x8, #0x3]
    73b4: 53087ec9     	lsr	w9, w22, #8
    73b8: 3900090a     	strb	w10, [x8, #0x2]
    73bc: 910103aa     	add	x10, x29, #0x40
    73c0: 39000509     	strb	w9, [x8, #0x1]
    73c4: 91020189     	add	x9, x12, #0x80
    73c8: 91001115     	add	x21, x8, #0x4
    73cc: a93e2faa     	stp	x10, x11, [x29, #-0x20]
    73d0: a93f5fa9     	stp	x9, x23, [x29, #-0x10]
    73d4: b89f83a8     	ldursw	x8, [x29, #-0x8]
    73d8: 36f80108     	tbz	w8, #0x1f, 0x73f8 <.text+0x63f8>
    73dc: 11002109     	add	w9, w8, #0x8
    73e0: 3100211f     	cmn	w8, #0x8
    73e4: b81f83a9     	stur	w9, [x29, #-0x8]
    73e8: 54000088     	b.hi	0x73f8 <.text+0x63f8>
    73ec: f85e83a9     	ldur	x9, [x29, #-0x18]
    73f0: 8b080128     	add	x8, x9, x8
    73f4: 14000004     	b	0x7404 <.text+0x6404>
    73f8: f85e03a8     	ldur	x8, [x29, #-0x20]
    73fc: 91002109     	add	x9, x8, #0x8
    7400: f81e03a9     	stur	x9, [x29, #-0x20]
    7404: f9400116     	ldr	x22, [x8]
    7408: b4000156     	cbz	x22, 0x7430 <.text+0x6430>
    740c: aa1603e0     	mov	x0, x22
    7410: 94000af9     	bl	0x9ff4 <.text+0x8ff4>
    7414: 910012c1     	add	x1, x22, #0x4
    7418: 51001016     	sub	w22, w0, #0x4
    741c: aa1503e0     	mov	x0, x21
    7420: aa1603e2     	mov	x2, x22
    7424: 97ffeec9     	bl	0x2f48 <.text+0x1f48>
    7428: 8b1602b5     	add	x21, x21, x22
    742c: 17ffffea     	b	0x73d4 <.text+0x63d4>
    7430: 90000021     	adrp	x1, 0xb000 <.text+0xa000>
    7434: aa1503e0     	mov	x0, x21
    7438: 910a2021     	add	x1, x1, #0x288
    743c: 52800082     	mov	w2, #0x4                // =4
    7440: 97ffeec2     	bl	0x2f48 <.text+0x1f48>
    7444: d0000028     	adrp	x8, 0xd000
    7448: d100c3a3     	sub	x3, x29, #0x30
    744c: aa1403e1     	mov	x1, x20
    7450: aa1303e2     	mov	x2, x19
    7454: f940dd00     	ldr	x0, [x8, #0x1b8]
    7458: f9400008     	ldr	x8, [x0]
    745c: d63f0100     	blr	x8
    7460: b6f80040     	tbz	x0, #0x3f, 0x7468 <.text+0x6468>
    7464: f81d03bf     	stur	xzr, [x29, #-0x30]
    7468: d100a3a0     	sub	x0, x29, #0x28
    746c: 97fff110     	bl	0x38ac <.text+0x28ac>
    7470: f85d03a0     	ldur	x0, [x29, #-0x30]
    7474: 14000002     	b	0x747c <.text+0x647c>
    7478: aa1f03e0     	mov	x0, xzr
    747c: a9514ff4     	ldp	x20, x19, [sp, #0x110]
    7480: a95057f6     	ldp	x22, x21, [sp, #0x100]
    7484: a94f5ffc     	ldp	x28, x23, [sp, #0xf0]
    7488: a94e7bfd     	ldp	x29, x30, [sp, #0xe0]
    748c: 910483ff     	add	sp, sp, #0x120
    7490: d65f03c0     	ret
    7494: d101c3ff     	sub	sp, sp, #0x70
    7498: a9037bfd     	stp	x29, x30, [sp, #0x30]
    749c: f90023f7     	str	x23, [sp, #0x40]
    74a0: a90557f6     	stp	x22, x21, [sp, #0x50]
    74a4: a9064ff4     	stp	x20, x19, [sp, #0x60]
    74a8: 9100c3fd     	add	x29, sp, #0x30
    74ac: aa0203f5     	mov	x21, x2
    74b0: 2a0103f3     	mov	w19, w1
    74b4: aa0003f4     	mov	x20, x0
    74b8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    74bc: f81f03bf     	stur	xzr, [x29, #-0x10]
    74c0: 94000047     	bl	0x75dc <.text+0x65dc>
    74c4: f9000fe0     	str	x0, [sp, #0x18]
    74c8: b4000700     	cbz	x0, 0x75a8 <.text+0x65a8>
    74cc: aa0003f6     	mov	x22, x0
    74d0: 90000020     	adrp	x0, 0xb000 <.text+0xa000>
    74d4: 910a5000     	add	x0, x0, #0x294
    74d8: 910043e1     	add	x1, sp, #0x10
    74dc: aa1f03e2     	mov	x2, xzr
    74e0: 97fff463     	bl	0x466c <.text+0x366c>
    74e4: f9400be8     	ldr	x8, [sp, #0x10]
    74e8: f0000009     	adrp	x9, 0xa000 <.text+0x9000>
    74ec: 91220d29     	add	x9, x9, #0x883
    74f0: f10002bf     	cmp	x21, #0x0
    74f4: 9a950122     	csel	x2, x9, x21, eq
    74f8: aa1603e0     	mov	x0, x22
    74fc: aa1f03e1     	mov	x1, xzr
    7500: aa1603e4     	mov	x4, x22
    7504: f100011f     	cmp	x8, #0x0
    7508: aa1f03e5     	mov	x5, xzr
    750c: 9a880123     	csel	x3, x9, x8, eq
    7510: 97fff45c     	bl	0x4680 <.text+0x3680>
    7514: f90007e0     	str	x0, [sp, #0x8]
    7518: b4000480     	cbz	x0, 0x75a8 <.text+0x65a8>
    751c: d0000037     	adrp	x23, 0xd000
    7520: aa0003f5     	mov	x21, x0
    7524: d10013a4     	sub	x4, x29, #0x4
    7528: 910063a5     	add	x5, x29, #0x18
    752c: aa1503e1     	mov	x1, x21
    7530: aa1403e2     	mov	x2, x20
    7534: f940d6e0     	ldr	x0, [x23, #0x1a8]
    7538: 2a1303e3     	mov	w3, w19
    753c: aa1f03e6     	mov	x6, xzr
    7540: d28000b6     	mov	x22, #0x5               // =5
    7544: f2f00016     	movk	x22, #0x8000, lsl #48
    7548: f9000fbf     	str	xzr, [x29, #0x18]
    754c: f9400408     	ldr	x8, [x0, #0x8]
    7550: d63f0100     	blr	x8
    7554: eb16001f     	cmp	x0, x22
    7558: 54000281     	b.ne	0x75a8 <.text+0x65a8>
    755c: f9400fa0     	ldr	x0, [x29, #0x18]
    7560: 97fff37a     	bl	0x4348 <.text+0x3348>
    7564: f81f03a0     	stur	x0, [x29, #-0x10]
    7568: b4000200     	cbz	x0, 0x75a8 <.text+0x65a8>
    756c: aa0003e4     	mov	x4, x0
    7570: f940d6e0     	ldr	x0, [x23, #0x1a8]
    7574: 910063a5     	add	x5, x29, #0x18
    7578: aa1503e1     	mov	x1, x21
    757c: aa1403e2     	mov	x2, x20
    7580: 2a1303e3     	mov	w3, w19
    7584: aa1f03e6     	mov	x6, xzr
    7588: f9400408     	ldr	x8, [x0, #0x8]
    758c: d63f0100     	blr	x8
    7590: b6f800c0     	tbz	x0, #0x3f, 0x75a8 <.text+0x65a8>
    7594: 91006ec8     	add	x8, x22, #0x1b
    7598: eb08001f     	cmp	x0, x8
    759c: 54000060     	b.eq	0x75a8 <.text+0x65a8>
    75a0: d10043a0     	sub	x0, x29, #0x10
    75a4: 97fff0c2     	bl	0x38ac <.text+0x28ac>
    75a8: 910063e0     	add	x0, sp, #0x18
    75ac: 97fff0c0     	bl	0x38ac <.text+0x28ac>
    75b0: 910043e0     	add	x0, sp, #0x10
    75b4: 97fff0be     	bl	0x38ac <.text+0x28ac>
    75b8: 910023e0     	add	x0, sp, #0x8
    75bc: 97fff0bc     	bl	0x38ac <.text+0x28ac>
    75c0: f85f03a0     	ldur	x0, [x29, #-0x10]
    75c4: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    75c8: a94557f6     	ldp	x22, x21, [sp, #0x50]
    75cc: f94023f7     	ldr	x23, [sp, #0x40]
    75d0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    75d4: 9101c3ff     	add	sp, sp, #0x70
    75d8: d65f03c0     	ret
    75dc: d10103ff     	sub	sp, sp, #0x40
    75e0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    75e4: f90013f5     	str	x21, [sp, #0x20]
    75e8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    75ec: 910043fd     	add	x29, sp, #0x10
    75f0: d0000035     	adrp	x21, 0xd000
    75f4: aa0003f3     	mov	x19, x0
    75f8: d10013a2     	sub	x2, x29, #0x4
    75fc: 910063a3     	add	x3, x29, #0x18
    7600: aa1303e1     	mov	x1, x19
    7604: f9000fbf     	str	xzr, [x29, #0x18]
    7608: f940d6a8     	ldr	x8, [x21, #0x1a8]
    760c: f9400d09     	ldr	x9, [x8, #0x18]
    7610: aa0803e0     	mov	x0, x8
    7614: d63f0120     	blr	x9
    7618: aa1f03f4     	mov	x20, xzr
    761c: d28000a8     	mov	x8, #0x5                // =5
    7620: f2f00008     	movk	x8, #0x8000, lsl #48
    7624: eb08001f     	cmp	x0, x8
    7628: 54000201     	b.ne	0x7668 <.text+0x6668>
    762c: f9400fa0     	ldr	x0, [x29, #0x18]
    7630: 97fff346     	bl	0x4348 <.text+0x3348>
    7634: aa0003f4     	mov	x20, x0
    7638: f90003e0     	str	x0, [sp]
    763c: b4000160     	cbz	x0, 0x7668 <.text+0x6668>
    7640: f940d6a0     	ldr	x0, [x21, #0x1a8]
    7644: 910063a3     	add	x3, x29, #0x18
    7648: aa1303e1     	mov	x1, x19
    764c: aa1403e2     	mov	x2, x20
    7650: f9400c08     	ldr	x8, [x0, #0x18]
    7654: d63f0100     	blr	x8
    7658: b6f80080     	tbz	x0, #0x3f, 0x7668 <.text+0x6668>
    765c: 910003e0     	mov	x0, sp
    7660: 97fff093     	bl	0x38ac <.text+0x28ac>
    7664: aa1f03f4     	mov	x20, xzr
    7668: aa1403e0     	mov	x0, x20
    766c: f94013f5     	ldr	x21, [sp, #0x20]
    7670: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    7674: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7678: 910103ff     	add	sp, sp, #0x40
    767c: d65f03c0     	ret
    7680: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7684: a9014ff4     	stp	x20, x19, [sp, #0x10]
    7688: 910003fd     	mov	x29, sp
    768c: aa0103f3     	mov	x19, x1
    7690: aa0003f4     	mov	x20, x0
    7694: 97fff264     	bl	0x4024 <.text+0x3024>
    7698: 72001c1f     	tst	w0, #0xff
    769c: 540000c0     	b.eq	0x76b4 <.text+0x66b4>
    76a0: aa1403e0     	mov	x0, x20
    76a4: aa1303e1     	mov	x1, x19
    76a8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    76ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    76b0: 14000066     	b	0x7848 <.text+0x6848>
    76b4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    76b8: aa1f03e0     	mov	x0, xzr
    76bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    76c0: d65f03c0     	ret
    76c4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    76c8: a9014ff4     	stp	x20, x19, [sp, #0x10]
    76cc: 910003fd     	mov	x29, sp
    76d0: aa0103f3     	mov	x19, x1
    76d4: aa0003f4     	mov	x20, x0
    76d8: 97fff253     	bl	0x4024 <.text+0x3024>
    76dc: 72001c1f     	tst	w0, #0xff
    76e0: 540000c0     	b.eq	0x76f8 <.text+0x66f8>
    76e4: aa1403e0     	mov	x0, x20
    76e8: aa1303e1     	mov	x1, x19
    76ec: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    76f0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    76f4: 140000a7     	b	0x7990 <.text+0x6990>
    76f8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    76fc: aa1f03e0     	mov	x0, xzr
    7700: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7704: d65f03c0     	ret
    7708: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    770c: a90157f6     	stp	x22, x21, [sp, #0x10]
    7710: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7714: 910003fd     	mov	x29, sp
    7718: d0000034     	adrp	x20, 0xd000
    771c: f9404288     	ldr	x8, [x20, #0x80]
    7720: f9404d09     	ldr	x9, [x8, #0x98]
    7724: b4000249     	cbz	x9, 0x776c <.text+0x676c>
    7728: b0000033     	adrp	x19, 0xc000
    772c: aa1f03f5     	mov	x21, xzr
    7730: 52800216     	mov	w22, #0x10              // =16
    7734: 9106a273     	add	x19, x19, #0x1a8
    7738: f9405108     	ldr	x8, [x8, #0xa0]
    773c: aa1303e1     	mov	x1, x19
    7740: 8b160108     	add	x8, x8, x22
    7744: d1004100     	sub	x0, x8, #0x10
    7748: 97ffedfc     	bl	0x2f38 <.text+0x1f38>
    774c: 72001c1f     	tst	w0, #0xff
    7750: 54000121     	b.ne	0x7774 <.text+0x6774>
    7754: f9404288     	ldr	x8, [x20, #0x80]
    7758: 910006b5     	add	x21, x21, #0x1
    775c: 910062d6     	add	x22, x22, #0x18
    7760: f9404d09     	ldr	x9, [x8, #0x98]
    7764: eb0902bf     	cmp	x21, x9
    7768: 54fffe83     	b.lo	0x7738 <.text+0x6738>
    776c: aa1f03e0     	mov	x0, xzr
    7770: 14000004     	b	0x7780 <.text+0x6780>
    7774: f9404288     	ldr	x8, [x20, #0x80]
    7778: f9405108     	ldr	x8, [x8, #0xa0]
    777c: f8766900     	ldr	x0, [x8, x22]
    7780: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    7784: a94157f6     	ldp	x22, x21, [sp, #0x10]
    7788: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    778c: d65f03c0     	ret
    7790: d0000028     	adrp	x8, 0xd000
    7794: 52800029     	mov	w9, #0x1                // =1
    7798: aa1f03e0     	mov	x0, xzr
    779c: 3907a109     	strb	w9, [x8, #0x1e8]
    77a0: d65f03c0     	ret
    77a4: d0000028     	adrp	x8, 0xd000
    77a8: 52800029     	mov	w9, #0x1                // =1
    77ac: aa1f03e0     	mov	x0, xzr
    77b0: 3907b109     	strb	w9, [x8, #0x1ec]
    77b4: d65f03c0     	ret
    77b8: d100c3ff     	sub	sp, sp, #0x30
    77bc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    77c0: 910083fd     	add	x29, sp, #0x20
    77c4: d0000028     	adrp	x8, 0xd000
    77c8: b0000020     	adrp	x0, 0xc000
    77cc: 910da000     	add	x0, x0, #0x368
    77d0: d10023a2     	sub	x2, x29, #0x8
    77d4: aa1f03e1     	mov	x1, xzr
    77d8: f9404108     	ldr	x8, [x8, #0x80]
    77dc: f9406908     	ldr	x8, [x8, #0xd0]
    77e0: d63f0100     	blr	x8
    77e4: b7f80220     	tbnz	x0, #0x3f, 0x7828 <.text+0x6828>
    77e8: f85f83a0     	ldur	x0, [x29, #-0x8]
    77ec: b40001e0     	cbz	x0, 0x7828 <.text+0x6828>
    77f0: 52800068     	mov	w8, #0x3                // =3
    77f4: 90000001     	adrp	x1, 0x7000 <.text+0x6000>
    77f8: 911e9021     	add	x1, x1, #0x7a4
    77fc: 910043e2     	add	x2, sp, #0x10
    7800: 910023e3     	add	x3, sp, #0x8
    7804: f9000be8     	str	x8, [sp, #0x10]
    7808: f9400008     	ldr	x8, [x0]
    780c: d63f0100     	blr	x8
    7810: b6f800c0     	tbz	x0, #0x3f, 0x7828 <.text+0x6828>
    7814: f0000001     	adrp	x1, 0xa000 <.text+0x9000>
    7818: aa0003e2     	mov	x2, x0
    781c: 911ed021     	add	x1, x1, #0x7b4
    7820: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    7824: 97ffeedf     	bl	0x33a0 <.text+0x23a0>
    7828: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    782c: aa1f03e0     	mov	x0, xzr
    7830: 9100c3ff     	add	sp, sp, #0x30
    7834: d65f03c0     	ret
    7838: d0000028     	adrp	x8, 0xd000
    783c: aa1f03e0     	mov	x0, xzr
    7840: 3907b11f     	strb	wzr, [x8, #0x1ec]
    7844: d65f03c0     	ret
    7848: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    784c: f9000bf3     	str	x19, [sp, #0x10]
    7850: 910003fd     	mov	x29, sp
    7854: d0000033     	adrp	x19, 0xd000
    7858: b0000020     	adrp	x0, 0xc000
    785c: 90000001     	adrp	x1, 0x7000 <.text+0x6000>
    7860: d0000022     	adrp	x2, 0xd000
    7864: 910d2000     	add	x0, x0, #0x348
    7868: 911e4021     	add	x1, x1, #0x790
    786c: f9404268     	ldr	x8, [x19, #0x80]
    7870: 91076042     	add	x2, x2, #0x1d8
    7874: f9406108     	ldr	x8, [x8, #0xc0]
    7878: d63f0100     	blr	x8
    787c: b6f800c0     	tbz	x0, #0x3f, 0x7894 <.text+0x6894>
    7880: f0000001     	adrp	x1, 0xa000 <.text+0x9000>
    7884: aa0003e2     	mov	x2, x0
    7888: 911ed021     	add	x1, x1, #0x7b4
    788c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    7890: 97ffeec4     	bl	0x33a0 <.text+0x23a0>
    7894: f9404268     	ldr	x8, [x19, #0x80]
    7898: b0000020     	adrp	x0, 0xc000
    789c: 90000001     	adrp	x1, 0x7000 <.text+0x6000>
    78a0: d0000022     	adrp	x2, 0xd000
    78a4: 910d6000     	add	x0, x0, #0x358
    78a8: 911ee021     	add	x1, x1, #0x7b8
    78ac: 91074042     	add	x2, x2, #0x1d0
    78b0: f9406108     	ldr	x8, [x8, #0xc0]
    78b4: d63f0100     	blr	x8
    78b8: b6f800c0     	tbz	x0, #0x3f, 0x78d0 <.text+0x68d0>
    78bc: f0000001     	adrp	x1, 0xa000 <.text+0x9000>
    78c0: aa0003e2     	mov	x2, x0
    78c4: 911ed021     	add	x1, x1, #0x7b4
    78c8: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    78cc: 97ffeeb5     	bl	0x33a0 <.text+0x23a0>
    78d0: f9404268     	ldr	x8, [x19, #0x80]
    78d4: b0000020     	adrp	x0, 0xc000
    78d8: 90000001     	adrp	x1, 0x7000 <.text+0x6000>
    78dc: d0000022     	adrp	x2, 0xd000
    78e0: 9106e000     	add	x0, x0, #0x1b8
    78e4: 9120e021     	add	x1, x1, #0x838
    78e8: 91078042     	add	x2, x2, #0x1e0
    78ec: f9406108     	ldr	x8, [x8, #0xc0]
    78f0: d63f0100     	blr	x8
    78f4: b6f800c0     	tbz	x0, #0x3f, 0x790c <.text+0x690c>
    78f8: f0000001     	adrp	x1, 0xa000 <.text+0x9000>
    78fc: aa0003e2     	mov	x2, x0
    7900: 911ed021     	add	x1, x1, #0x7b4
    7904: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    7908: 97ffeea6     	bl	0x33a0 <.text+0x23a0>
    790c: 97ffff7f     	bl	0x7708 <.text+0x6708>
    7910: b4000060     	cbz	x0, 0x791c <.text+0x691c>
    7914: aa1f03f3     	mov	x19, xzr
    7918: 1400001a     	b	0x7980 <.text+0x6980>
    791c: f9404260     	ldr	x0, [x19, #0x80]
    7920: d289e988     	mov	x8, #0x4f4c             // =20300
    7924: f2a96868     	movk	x8, #0x4b43, lsl #16
    7928: d0000022     	adrp	x2, 0xd000
    792c: f2cbe848     	movk	x8, #0x5f42, lsl #32
    7930: b000002a     	adrp	x10, 0xc000
    7934: b0000021     	adrp	x1, 0xc000
    7938: 9107c042     	add	x2, x2, #0x1f0
    793c: f9401409     	ldr	x9, [x0, #0x28]
    7940: f2e686c8     	movk	x8, #0x3436, lsl #48
    7944: 911c814a     	add	x10, x10, #0x720
    7948: 9106a021     	add	x1, x1, #0x1a8
    794c: 52800203     	mov	w3, #0x10               // =16
    7950: a9002848     	stp	x8, x10, [x2]
    7954: d63f0120     	blr	x9
    7958: aa0003f3     	mov	x19, x0
    795c: b6f800c0     	tbz	x0, #0x3f, 0x7974 <.text+0x6974>
    7960: f0000001     	adrp	x1, 0xa000 <.text+0x9000>
    7964: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    7968: 911ed021     	add	x1, x1, #0x7b4
    796c: aa1303e2     	mov	x2, x19
    7970: 97ffee8c     	bl	0x33a0 <.text+0x23a0>
    7974: d0000028     	adrp	x8, 0xd000
    7978: 52800029     	mov	w9, #0x1                // =1
    797c: 39072109     	strb	w9, [x8, #0x1c8]
    7980: aa1303e0     	mov	x0, x19
    7984: f9400bf3     	ldr	x19, [sp, #0x10]
    7988: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    798c: d65f03c0     	ret
    7990: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7994: f9000bf3     	str	x19, [sp, #0x10]
    7998: 910003fd     	mov	x29, sp
    799c: d0000028     	adrp	x8, 0xd000
    79a0: d0000033     	adrp	x19, 0xd000
    79a4: 39472108     	ldrb	w8, [x8, #0x1c8]
    79a8: 340001c8     	cbz	w8, 0x79e0 <.text+0x69e0>
    79ac: f9404260     	ldr	x0, [x19, #0x80]
    79b0: b0000021     	adrp	x1, 0xc000
    79b4: 9106a021     	add	x1, x1, #0x1a8
    79b8: aa1f03e2     	mov	x2, xzr
    79bc: aa1f03e3     	mov	x3, xzr
    79c0: f9401408     	ldr	x8, [x0, #0x28]
    79c4: d63f0100     	blr	x8
    79c8: b6f800c0     	tbz	x0, #0x3f, 0x79e0 <.text+0x69e0>
    79cc: f0000001     	adrp	x1, 0xa000 <.text+0x9000>
    79d0: aa0003e2     	mov	x2, x0
    79d4: 911ed021     	add	x1, x1, #0x7b4
    79d8: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    79dc: 97ffee71     	bl	0x33a0 <.text+0x23a0>
    79e0: d0000028     	adrp	x8, 0xd000
    79e4: f940ed08     	ldr	x8, [x8, #0x1d8]
    79e8: b40001e8     	cbz	x8, 0x7a24 <.text+0x6a24>
    79ec: f9404268     	ldr	x8, [x19, #0x80]
    79f0: b0000020     	adrp	x0, 0xc000
    79f4: d0000022     	adrp	x2, 0xd000
    79f8: 910d2000     	add	x0, x0, #0x348
    79fc: 91076042     	add	x2, x2, #0x1d8
    7a00: aa1f03e1     	mov	x1, xzr
    7a04: f9406108     	ldr	x8, [x8, #0xc0]
    7a08: d63f0100     	blr	x8
    7a0c: b6f800c0     	tbz	x0, #0x3f, 0x7a24 <.text+0x6a24>
    7a10: f0000001     	adrp	x1, 0xa000 <.text+0x9000>
    7a14: aa0003e2     	mov	x2, x0
    7a18: 911ed021     	add	x1, x1, #0x7b4
    7a1c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    7a20: 97ffee60     	bl	0x33a0 <.text+0x23a0>
    7a24: d0000028     	adrp	x8, 0xd000
    7a28: f940e908     	ldr	x8, [x8, #0x1d0]
    7a2c: b40001e8     	cbz	x8, 0x7a68 <.text+0x6a68>
    7a30: f9404268     	ldr	x8, [x19, #0x80]
    7a34: b0000020     	adrp	x0, 0xc000
    7a38: d0000022     	adrp	x2, 0xd000
    7a3c: 910d6000     	add	x0, x0, #0x358
    7a40: 91074042     	add	x2, x2, #0x1d0
    7a44: aa1f03e1     	mov	x1, xzr
    7a48: f9406108     	ldr	x8, [x8, #0xc0]
    7a4c: d63f0100     	blr	x8
    7a50: b6f800c0     	tbz	x0, #0x3f, 0x7a68 <.text+0x6a68>
    7a54: f0000001     	adrp	x1, 0xa000 <.text+0x9000>
    7a58: aa0003e2     	mov	x2, x0
    7a5c: 911ed021     	add	x1, x1, #0x7b4
    7a60: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    7a64: 97ffee4f     	bl	0x33a0 <.text+0x23a0>
    7a68: d0000028     	adrp	x8, 0xd000
    7a6c: f940f108     	ldr	x8, [x8, #0x1e0]
    7a70: b40001e8     	cbz	x8, 0x7aac <.text+0x6aac>
    7a74: f9404268     	ldr	x8, [x19, #0x80]
    7a78: b0000020     	adrp	x0, 0xc000
    7a7c: d0000022     	adrp	x2, 0xd000
    7a80: 9106e000     	add	x0, x0, #0x1b8
    7a84: 91078042     	add	x2, x2, #0x1e0
    7a88: aa1f03e1     	mov	x1, xzr
    7a8c: f9406108     	ldr	x8, [x8, #0xc0]
    7a90: d63f0100     	blr	x8
    7a94: b6f800c0     	tbz	x0, #0x3f, 0x7aac <.text+0x6aac>
    7a98: f0000001     	adrp	x1, 0xa000 <.text+0x9000>
    7a9c: aa0003e2     	mov	x2, x0
    7aa0: 911ed021     	add	x1, x1, #0x7b4
    7aa4: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    7aa8: 97ffee3e     	bl	0x33a0 <.text+0x23a0>
    7aac: f9400bf3     	ldr	x19, [sp, #0x10]
    7ab0: aa1f03e0     	mov	x0, xzr
    7ab4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7ab8: d65f03c0     	ret
    7abc: d100c3ff     	sub	sp, sp, #0x30
    7ac0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    7ac4: 910083fd     	add	x29, sp, #0x20
    7ac8: b0000028     	adrp	x8, 0xc000
    7acc: d0000029     	adrp	x9, 0xd000
    7ad0: d28207ca     	mov	x10, #0x103e            // =4158
    7ad4: 910023e0     	add	x0, sp, #0x8
    7ad8: f2bd756a     	movk	x10, #0xebab, lsl #16
    7adc: 910003e2     	mov	x2, sp
    7ae0: f9400108     	ldr	x8, [x8]
    7ae4: f2d120ca     	movk	x10, #0x8906, lsl #32
    7ae8: f2e9b90a     	movk	x10, #0x4dc8, lsl #48
    7aec: aa1f03e1     	mov	x1, xzr
    7af0: f81f83a8     	stur	x8, [x29, #-0x8]
    7af4: f9401128     	ldr	x8, [x9, #0x20]
    7af8: d29a37a9     	mov	x9, #0xd1bd             // =53693
    7afc: f2b79409     	movk	x9, #0xbca0, lsl #16
    7b00: f2d624c9     	movk	x9, #0xb126, lsl #32
    7b04: f2f0d749     	movk	x9, #0x86ba, lsl #48
    7b08: f940a108     	ldr	x8, [x8, #0x140]
    7b0c: a900a7ea     	stp	x10, x9, [sp, #0x8]
    7b10: d63f0100     	blr	x8
    7b14: b000002a     	adrp	x10, 0xc000
    7b18: f94003e8     	ldr	x8, [sp]
    7b1c: f85f83a9     	ldur	x9, [x29, #-0x8]
    7b20: f100001f     	cmp	x0, #0x0
    7b24: f940014a     	ldr	x10, [x10]
    7b28: 9a88b3e0     	csel	x0, xzr, x8, lt
    7b2c: eb09015f     	cmp	x10, x9
    7b30: 54000081     	b.ne	0x7b40 <.text+0x6b40>
    7b34: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    7b38: 9100c3ff     	add	sp, sp, #0x30
    7b3c: d65f03c0     	ret
    7b40: 97ffe564     	bl	0x10d0 <.text+0xd0>
    7b44: d0000028     	adrp	x8, 0xd000
    7b48: f9410108     	ldr	x8, [x8, #0x200]
    7b4c: b4000088     	cbz	x8, 0x7b5c <.text+0x6b5c>
    7b50: f9400100     	ldr	x0, [x8]
    7b54: 52800c01     	mov	w1, #0x60               // =96
    7b58: 17ffecf9     	b	0x2f3c <.text+0x1f3c>
    7b5c: d65f03c0     	ret
    7b60: d100c3ff     	sub	sp, sp, #0x30
    7b64: a9017bfd     	stp	x29, x30, [sp, #0x10]
    7b68: f90013f3     	str	x19, [sp, #0x20]
    7b6c: 910043fd     	add	x29, sp, #0x10
    7b70: d0000033     	adrp	x19, 0xd000
    7b74: f9410268     	ldr	x8, [x19, #0x200]
    7b78: b4000828     	cbz	x8, 0x7c7c <.text+0x6c7c>
    7b7c: f9400101     	ldr	x1, [x8]
    7b80: f0000008     	adrp	x8, 0xa000 <.text+0x9000>
    7b84: b9489502     	ldr	w2, [x8, #0x894]
    7b88: 91008020     	add	x0, x1, #0x20
    7b8c: 94000044     	bl	0x7c9c <.text+0x6c9c>
    7b90: b6f800a0     	tbz	x0, #0x3f, 0x7ba4 <.text+0x6ba4>
    7b94: f9410268     	ldr	x8, [x19, #0x200]
    7b98: 52800601     	mov	w1, #0x30               // =48
    7b9c: f9400100     	ldr	x0, [x8]
    7ba0: 97ffece7     	bl	0x2f3c <.text+0x1f3c>
    7ba4: f9410268     	ldr	x8, [x19, #0x200]
    7ba8: f0000009     	adrp	x9, 0xa000 <.text+0x9000>
    7bac: b9489922     	ldr	w2, [x9, #0x898]
    7bb0: f9400108     	ldr	x8, [x8]
    7bb4: 9100c101     	add	x1, x8, #0x30
    7bb8: 91014100     	add	x0, x8, #0x50
    7bbc: 94000038     	bl	0x7c9c <.text+0x6c9c>
    7bc0: b6f800c0     	tbz	x0, #0x3f, 0x7bd8 <.text+0x6bd8>
    7bc4: f9410268     	ldr	x8, [x19, #0x200]
    7bc8: 52800601     	mov	w1, #0x30               // =48
    7bcc: f9400108     	ldr	x8, [x8]
    7bd0: 9100c100     	add	x0, x8, #0x30
    7bd4: 97ffecda     	bl	0x2f3c <.text+0x1f3c>
    7bd8: d0000028     	adrp	x8, 0xd000
    7bdc: b0000020     	adrp	x0, 0xc000
    7be0: 910ba000     	add	x0, x0, #0x2e8
    7be4: 910063a2     	add	x2, x29, #0x18
    7be8: aa1f03e1     	mov	x1, xzr
    7bec: f9401108     	ldr	x8, [x8, #0x20]
    7bf0: f940a108     	ldr	x8, [x8, #0x140]
    7bf4: d63f0100     	blr	x8
    7bf8: b7f804a0     	tbnz	x0, #0x3f, 0x7c8c <.text+0x6c8c>
    7bfc: f9410268     	ldr	x8, [x19, #0x200]
    7c00: 52800040     	mov	w0, #0x2                // =2
    7c04: 52800c02     	mov	w2, #0x60               // =96
    7c08: f9400101     	ldr	x1, [x8]
    7c0c: 94000073     	bl	0x7dd8 <.text+0x6dd8>
    7c10: b40003a0     	cbz	x0, 0x7c84 <.text+0x6c84>
    7c14: aa0003e8     	mov	x8, x0
    7c18: 3940540e     	ldrb	w14, [x0, #0x15]
    7c1c: aa0003f3     	mov	x19, x0
    7c20: 910023e2     	add	x2, sp, #0x8
    7c24: aa1303e1     	mov	x1, x19
    7c28: 38410d09     	ldrb	w9, [x8, #0x10]!
    7c2c: 39400d0a     	ldrb	w10, [x8, #0x3]
    7c30: 3940090b     	ldrb	w11, [x8, #0x2]
    7c34: 38404d0c     	ldrb	w12, [x8, #0x4]!
    7c38: 39400d0d     	ldrb	w13, [x8, #0x3]
    7c3c: 39400908     	ldrb	w8, [x8, #0x2]
    7c40: b3781d4b     	bfi	x11, x10, #8, #8
    7c44: 33181dcc     	bfi	w12, w14, #8, #8
    7c48: 33181da8     	bfi	w8, w13, #8, #8
    7c4c: 3940440d     	ldrb	w13, [x0, #0x11]
    7c50: f9400fa0     	ldr	x0, [x29, #0x18]
    7c54: 33103d0c     	bfi	w12, w8, #16, #16
    7c58: b3781da9     	bfi	x9, x13, #8, #8
    7c5c: b3703d69     	bfi	x9, x11, #16, #16
    7c60: b3607d89     	bfi	x9, x12, #32, #32
    7c64: 91006128     	add	x8, x9, #0x18
    7c68: f90007e8     	str	x8, [sp, #0x8]
    7c6c: f9400008     	ldr	x8, [x0]
    7c70: d63f0100     	blr	x8
    7c74: f9401260     	ldr	x0, [x19, #0x20]
    7c78: 14000005     	b	0x7c8c <.text+0x6c8c>
    7c7c: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    7c80: 14000003     	b	0x7c8c <.text+0x6c8c>
    7c84: d28000a0     	mov	x0, #0x5                // =5
    7c88: f2f00000     	movk	x0, #0x8000, lsl #48
    7c8c: f94013f3     	ldr	x19, [sp, #0x20]
    7c90: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7c94: 9100c3ff     	add	sp, sp, #0x30
    7c98: d65f03c0     	ret
    7c9c: d103c3ff     	sub	sp, sp, #0xf0
    7ca0: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
    7ca4: f9005bf9     	str	x25, [sp, #0xb0]
    7ca8: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
    7cac: a90d57f6     	stp	x22, x21, [sp, #0xd0]
    7cb0: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
    7cb4: 910283fd     	add	x29, sp, #0xa0
    7cb8: b0000028     	adrp	x8, 0xc000
    7cbc: d2800137     	mov	x23, #0x9               // =9
    7cc0: f2f00017     	movk	x23, #0x8000, lsl #48
    7cc4: f9400108     	ldr	x8, [x8]
    7cc8: f81f83a8     	stur	x8, [x29, #-0x8]
    7ccc: b40006a0     	cbz	x0, 0x7da0 <.text+0x6da0>
    7cd0: aa0103f4     	mov	x20, x1
    7cd4: b4000661     	cbz	x1, 0x7da0 <.text+0x6da0>
    7cd8: aa0003f3     	mov	x19, x0
    7cdc: 52808040     	mov	w0, #0x402              // =1026
    7ce0: 2a0203f6     	mov	w22, w2
    7ce4: 97fff199     	bl	0x4348 <.text+0x3348>
    7ce8: f90003e0     	str	x0, [sp]
    7cec: b40005a0     	cbz	x0, 0x7da0 <.text+0x6da0>
    7cf0: 52800139     	mov	w25, #0x9               // =9
    7cf4: aa0003f5     	mov	x21, x0
    7cf8: 72a80019     	movk	w25, #0x4000, lsl #16
    7cfc: 97ffff70     	bl	0x7abc <.text+0x6abc>
    7d00: b4000240     	cbz	x0, 0x7d48 <.text+0x6d48>
    7d04: aa0003f8     	mov	x24, x0
    7d08: 52801121     	mov	w1, #0x89               // =137
    7d0c: 910023e0     	add	x0, sp, #0x8
    7d10: 910023f7     	add	x23, sp, #0x8
    7d14: 97ffec8a     	bl	0x2f3c <.text+0x1f3c>
    7d18: b9000bf9     	str	w25, [sp, #0x8]
    7d1c: 910126e0     	add	x0, x23, #0x49
    7d20: 39400708     	ldrb	w8, [x24, #0x1]
    7d24: 91000b01     	add	x1, x24, #0x2
    7d28: 39400309     	ldrb	w9, [x24]
    7d2c: 390143e8     	strb	w8, [sp, #0x50]
    7d30: 39013fe9     	strb	w9, [sp, #0x4f]
    7d34: 39400708     	ldrb	w8, [x24, #0x1]
    7d38: 39400302     	ldrb	w2, [x24]
    7d3c: b3781d02     	bfi	x2, x8, #8, #8
    7d40: 97ffec82     	bl	0x2f48 <.text+0x1f48>
    7d44: 14000002     	b	0x7d4c <.text+0x6d4c>
    7d48: aa1f03f7     	mov	x23, xzr
    7d4c: 11000f20     	add	w0, w25, #0x3
    7d50: 2a1603e1     	mov	w1, w22
    7d54: aa1703e2     	mov	x2, x23
    7d58: 52800603     	mov	w3, #0x30               // =48
    7d5c: 2a1f03e4     	mov	w4, wzr
    7d60: aa1503e5     	mov	x5, x21
    7d64: 97fffc4d     	bl	0x6e98 <.text+0x5e98>
    7d68: b7f80160     	tbnz	x0, #0x3f, 0x7d94 <.text+0x6d94>
    7d6c: 91000aa1     	add	x1, x21, #0x2
    7d70: aa1403e0     	mov	x0, x20
    7d74: 52800402     	mov	w2, #0x20               // =32
    7d78: 97ffec74     	bl	0x2f48 <.text+0x1f48>
    7d7c: 91008aa1     	add	x1, x21, #0x22
    7d80: aa1303e0     	mov	x0, x19
    7d84: 52800202     	mov	w2, #0x10               // =16
    7d88: 97ffec70     	bl	0x2f48 <.text+0x1f48>
    7d8c: aa1f03f7     	mov	x23, xzr
    7d90: 14000002     	b	0x7d98 <.text+0x6d98>
    7d94: b2410bf7     	mov	x23, #-0x7ffffffffffffffd // =-9223372036854775805
    7d98: 910003e0     	mov	x0, sp
    7d9c: 97ffeec4     	bl	0x38ac <.text+0x28ac>
    7da0: b0000029     	adrp	x9, 0xc000
    7da4: f85f83a8     	ldur	x8, [x29, #-0x8]
    7da8: f9400129     	ldr	x9, [x9]
    7dac: eb08013f     	cmp	x9, x8
    7db0: 54000121     	b.ne	0x7dd4 <.text+0x6dd4>
    7db4: aa1703e0     	mov	x0, x23
    7db8: f9405bf9     	ldr	x25, [sp, #0xb0]
    7dbc: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
    7dc0: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
    7dc4: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
    7dc8: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
    7dcc: 9103c3ff     	add	sp, sp, #0xf0
    7dd0: d65f03c0     	ret
    7dd4: 97ffe4bf     	bl	0x10d0 <.text+0xd0>
    7dd8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    7ddc: a9015ff8     	stp	x24, x23, [sp, #0x10]
    7de0: a90257f6     	stp	x22, x21, [sp, #0x20]
    7de4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    7de8: 910003fd     	mov	x29, sp
    7dec: d0000037     	adrp	x23, 0xd000
    7df0: d0000038     	adrp	x24, 0xd000
    7df4: f94102e8     	ldr	x8, [x23, #0x200]
    7df8: f9410b09     	ldr	x9, [x24, #0x210]
    7dfc: f100011f     	cmp	x8, #0x0
    7e00: fa421120     	ccmp	x9, x2, #0x0, ne
    7e04: 54000062     	b.hs	0x7e10 <.text+0x6e10>
    7e08: aa1f03e0     	mov	x0, xzr
    7e0c: 14000027     	b	0x7ea8 <.text+0x6ea8>
    7e10: f9400515     	ldr	x21, [x8, #0x8]
    7e14: aa0103f4     	mov	x20, x1
    7e18: b0000021     	adrp	x1, 0xc000
    7e1c: aa0003f6     	mov	x22, x0
    7e20: 911d0021     	add	x1, x1, #0x740
    7e24: aa0203f3     	mov	x19, x2
    7e28: aa1503e0     	mov	x0, x21
    7e2c: 97ffec41     	bl	0x2f30 <.text+0x1f30>
    7e30: f9410b08     	ldr	x8, [x24, #0x210]
    7e34: aa1503e9     	mov	x9, x21
    7e38: 910062a0     	add	x0, x21, #0x18
    7e3c: 91004101     	add	x1, x8, #0x10
    7e40: d3587c28     	ubfx	x8, x1, #24, #8
    7e44: d3507c2a     	ubfx	x10, x1, #16, #16
    7e48: 38010d21     	strb	w1, [x9, #0x10]!
    7e4c: 39000d28     	strb	w8, [x9, #0x3]
    7e50: d360fc28     	lsr	x8, x1, #32
    7e54: 3900092a     	strb	w10, [x9, #0x2]
    7e58: d378fc2a     	lsr	x10, x1, #56
    7e5c: 38004d28     	strb	w8, [x9, #0x4]!
    7e60: d370fc28     	lsr	x8, x1, #48
    7e64: 39000d2a     	strb	w10, [x9, #0x3]
    7e68: d368fc2a     	lsr	x10, x1, #40
    7e6c: 39000928     	strb	w8, [x9, #0x2]
    7e70: d3487c28     	ubfx	x8, x1, #8, #24
    7e74: 390056aa     	strb	w10, [x21, #0x15]
    7e78: 390046a8     	strb	w8, [x21, #0x11]
    7e7c: 97ffec30     	bl	0x2f3c <.text+0x1f3c>
    7e80: b2410be8     	mov	x8, #-0x7ffffffffffffffd // =-9223372036854775805
    7e84: a901a2b6     	stp	x22, x8, [x21, #0x18]
    7e88: b40000d4     	cbz	x20, 0x7ea0 <.text+0x6ea0>
    7e8c: b40000b3     	cbz	x19, 0x7ea0 <.text+0x6ea0>
    7e90: 9100a2a0     	add	x0, x21, #0x28
    7e94: aa1403e1     	mov	x1, x20
    7e98: aa1303e2     	mov	x2, x19
    7e9c: 97ffec2b     	bl	0x2f48 <.text+0x1f48>
    7ea0: f94102e8     	ldr	x8, [x23, #0x200]
    7ea4: f9400500     	ldr	x0, [x8, #0x8]
    7ea8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    7eac: a94257f6     	ldp	x22, x21, [sp, #0x20]
    7eb0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    7eb4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    7eb8: d65f03c0     	ret
    7ebc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    7ec0: 910003fd     	mov	x29, sp
    7ec4: 97ffff27     	bl	0x7b60 <.text+0x6b60>
    7ec8: d0000028     	adrp	x8, 0xd000
    7ecc: 52800029     	mov	w9, #0x1                // =1
    7ed0: 39082109     	strb	w9, [x8, #0x208]
    7ed4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    7ed8: d65f03c0     	ret
    7edc: 17ffff1a     	b	0x7b44 <.text+0x6b44>
    7ee0: d10183ff     	sub	sp, sp, #0x60
    7ee4: a9027bfd     	stp	x29, x30, [sp, #0x20]
    7ee8: f9001bf7     	str	x23, [sp, #0x30]
    7eec: a90457f6     	stp	x22, x21, [sp, #0x40]
    7ef0: a9054ff4     	stp	x20, x19, [sp, #0x50]
    7ef4: 910083fd     	add	x29, sp, #0x20
    7ef8: b4000a02     	cbz	x2, 0x8038 <.text+0x7038>
    7efc: aa0303f4     	mov	x20, x3
    7f00: b40009c3     	cbz	x3, 0x8038 <.text+0x7038>
    7f04: d0000037     	adrp	x23, 0xd000
    7f08: f94102e8     	ldr	x8, [x23, #0x200]
    7f0c: b4000968     	cbz	x8, 0x8038 <.text+0x7038>
    7f10: f9400508     	ldr	x8, [x8, #0x8]
    7f14: aa0203f3     	mov	x19, x2
    7f18: 91006108     	add	x8, x8, #0x18
    7f1c: eb02011f     	cmp	x8, x2
    7f20: 540008c1     	b.ne	0x8038 <.text+0x7038>
    7f24: d0000028     	adrp	x8, 0xd000
    7f28: f9400281     	ldr	x1, [x20]
    7f2c: f9410908     	ldr	x8, [x8, #0x210]
    7f30: 91004108     	add	x8, x8, #0x10
    7f34: eb08003f     	cmp	x1, x8
    7f38: 54000801     	b.ne	0x8038 <.text+0x7038>
    7f3c: d0000036     	adrp	x22, 0xd000
    7f40: 910003e2     	mov	x2, sp
    7f44: 528000c0     	mov	w0, #0x6                // =6
    7f48: f94042c8     	ldr	x8, [x22, #0x80]
    7f4c: f9402908     	ldr	x8, [x8, #0x50]
    7f50: d63f0100     	blr	x8
    7f54: f94003e0     	ldr	x0, [sp]
    7f58: b4000700     	cbz	x0, 0x8038 <.text+0x7038>
    7f5c: f9400282     	ldr	x2, [x20]
    7f60: aa1303e1     	mov	x1, x19
    7f64: 97ffebf9     	bl	0x2f48 <.text+0x1f48>
    7f68: f94003f5     	ldr	x21, [sp]
    7f6c: f94002a8     	ldr	x8, [x21]
    7f70: f100091f     	cmp	x8, #0x2
    7f74: 54000440     	b.eq	0x7ffc <.text+0x6ffc>
    7f78: f100051f     	cmp	x8, #0x1
    7f7c: 540003c1     	b.ne	0x7ff4 <.text+0x6ff4>
    7f80: f94042c8     	ldr	x8, [x22, #0x80]
    7f84: b0000020     	adrp	x0, 0xc000
    7f88: 91082000     	add	x0, x0, #0x208
    7f8c: 910063a2     	add	x2, x29, #0x18
    7f90: aa1f03e1     	mov	x1, xzr
    7f94: f9406908     	ldr	x8, [x8, #0xd0]
    7f98: d63f0100     	blr	x8
    7f9c: b7f802c0     	tbnz	x0, #0x3f, 0x7ff4 <.text+0x6ff4>
    7fa0: f9400fa0     	ldr	x0, [x29, #0x18]
    7fa4: 910023e1     	add	x1, sp, #0x8
    7fa8: f9401808     	ldr	x8, [x0, #0x30]
    7fac: d63f0100     	blr	x8
    7fb0: b7f80320     	tbnz	x0, #0x3f, 0x8014 <.text+0x7014>
    7fb4: f9400fa0     	ldr	x0, [x29, #0x18]
    7fb8: 2a1f03e1     	mov	w1, wzr
    7fbc: f9400008     	ldr	x8, [x0]
    7fc0: d63f0100     	blr	x8
    7fc4: b7f80260     	tbnz	x0, #0x3f, 0x8010 <.text+0x7010>
    7fc8: f9400fa0     	ldr	x0, [x29, #0x18]
    7fcc: 910042b5     	add	x21, x21, #0x10
    7fd0: f9400be8     	ldr	x8, [sp, #0x10]
    7fd4: aa1503e1     	mov	x1, x21
    7fd8: 2a1f03e3     	mov	w3, wzr
    7fdc: f9400809     	ldr	x9, [x0, #0x10]
    7fe0: 91000502     	add	x2, x8, #0x1
    7fe4: d63f0120     	blr	x9
    7fe8: b7f80360     	tbnz	x0, #0x3f, 0x8054 <.text+0x7054>
    7fec: 52800028     	mov	w8, #0x1                // =1
    7ff0: 1400002b     	b	0x809c <.text+0x709c>
    7ff4: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    7ff8: 14000007     	b	0x8014 <.text+0x7014>
    7ffc: f94102e8     	ldr	x8, [x23, #0x200]
    8000: 910042a1     	add	x1, x21, #0x10
    8004: 52800c02     	mov	w2, #0x60               // =96
    8008: f9400100     	ldr	x0, [x8]
    800c: 97ffebcf     	bl	0x2f48 <.text+0x1f48>
    8010: aa1f03e0     	mov	x0, xzr
    8014: f94003e1     	ldr	x1, [sp]
    8018: f9000420     	str	x0, [x1, #0x8]
    801c: aa1303e0     	mov	x0, x19
    8020: f9400282     	ldr	x2, [x20]
    8024: 97ffebc9     	bl	0x2f48 <.text+0x1f48>
    8028: f94042c8     	ldr	x8, [x22, #0x80]
    802c: f94003e0     	ldr	x0, [sp]
    8030: f9402d08     	ldr	x8, [x8, #0x58]
    8034: d63f0100     	blr	x8
    8038: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    803c: aa1f03e0     	mov	x0, xzr
    8040: a94457f6     	ldp	x22, x21, [sp, #0x40]
    8044: f9401bf7     	ldr	x23, [sp, #0x30]
    8048: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    804c: 910183ff     	add	sp, sp, #0x60
    8050: d65f03c0     	ret
    8054: d0000008     	adrp	x8, 0xa000 <.text+0x9000>
    8058: 39622908     	ldrb	w8, [x8, #0x88a]
    805c: 34000208     	cbz	w8, 0x809c <.text+0x709c>
    8060: f9400fa0     	ldr	x0, [x29, #0x18]
    8064: 52800021     	mov	w1, #0x1                // =1
    8068: f9400008     	ldr	x8, [x0]
    806c: d63f0100     	blr	x8
    8070: b7fffd00     	tbnz	x0, #0x3f, 0x8010 <.text+0x7010>
    8074: f9400fa0     	ldr	x0, [x29, #0x18]
    8078: aa1503e1     	mov	x1, x21
    807c: f9400be8     	ldr	x8, [sp, #0x10]
    8080: 52800023     	mov	w3, #0x1                // =1
    8084: f9400809     	ldr	x9, [x0, #0x10]
    8088: 91000502     	add	x2, x8, #0x1
    808c: d63f0120     	blr	x9
    8090: d37efc08     	lsr	x8, x0, #62
    8094: 2a2803e8     	mvn	w8, w8
    8098: 121f0108     	and	w8, w8, #0x2
    809c: aa1f03e0     	mov	x0, xzr
    80a0: 390002a8     	strb	w8, [x21]
    80a4: 17ffffdc     	b	0x8014 <.text+0x7014>
    80a8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    80ac: f9000bf7     	str	x23, [sp, #0x10]
    80b0: a90257f6     	stp	x22, x21, [sp, #0x20]
    80b4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    80b8: 910003fd     	mov	x29, sp
    80bc: d0000008     	adrp	x8, 0xa000 <.text+0x9000>
    80c0: 52800c09     	mov	w9, #0x60               // =96
    80c4: b0000035     	adrp	x21, 0xd000
    80c8: aa0003f3     	mov	x19, x0
    80cc: b9488d08     	ldr	w8, [x8, #0x88c]
    80d0: 11000508     	add	w8, w8, #0x1
    80d4: d37ff908     	lsl	x8, x8, #1
    80d8: f101811f     	cmp	x8, #0x60
    80dc: 9a898108     	csel	x8, x8, x9, hi
    80e0: f9010aa8     	str	x8, [x21, #0x210]
    80e4: 97ffefd0     	bl	0x4024 <.text+0x3024>
    80e8: b0000034     	adrp	x20, 0xd000
    80ec: 72001c1f     	tst	w0, #0xff
    80f0: 54000340     	b.eq	0x8158 <.text+0x7158>
    80f4: f9404288     	ldr	x8, [x20, #0x80]
    80f8: 90000020     	adrp	x0, 0xc000
    80fc: b0000022     	adrp	x2, 0xd000
    8100: 910de000     	add	x0, x0, #0x378
    8104: 91090042     	add	x2, x2, #0x240
    8108: aa1f03e1     	mov	x1, xzr
    810c: f9406908     	ldr	x8, [x8, #0xd0]
    8110: d63f0100     	blr	x8
    8114: b6f804c0     	tbz	x0, #0x3f, 0x81ac <.text+0x71ac>
    8118: f9404288     	ldr	x8, [x20, #0x80]
    811c: 90000020     	adrp	x0, 0xc000
    8120: 90000001     	adrp	x1, 0x8000 <.text+0x7000>
    8124: b0000022     	adrp	x2, 0xd000
    8128: 910de000     	add	x0, x0, #0x378
    812c: 91326021     	add	x1, x1, #0xc98
    8130: 91092042     	add	x2, x2, #0x248
    8134: f9406108     	ldr	x8, [x8, #0xc0]
    8138: d63f0100     	blr	x8
    813c: b6f80380     	tbz	x0, #0x3f, 0x81ac <.text+0x71ac>
    8140: d0000001     	adrp	x1, 0xa000 <.text+0x9000>
    8144: aa0003e2     	mov	x2, x0
    8148: 911ed021     	add	x1, x1, #0x7b4
    814c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    8150: 97ffec94     	bl	0x33a0 <.text+0x23a0>
    8154: 14000016     	b	0x81ac <.text+0x71ac>
    8158: b0000028     	adrp	x8, 0xd000
    815c: 90000020     	adrp	x0, 0xc000
    8160: b0000022     	adrp	x2, 0xd000
    8164: 910de000     	add	x0, x0, #0x378
    8168: 91090042     	add	x2, x2, #0x240
    816c: aa1f03e1     	mov	x1, xzr
    8170: f9401108     	ldr	x8, [x8, #0x20]
    8174: f940a108     	ldr	x8, [x8, #0x140]
    8178: d63f0100     	blr	x8
    817c: b6f80180     	tbz	x0, #0x3f, 0x81ac <.text+0x71ac>
    8180: 90000020     	adrp	x0, 0xc000
    8184: 90000002     	adrp	x2, 0x8000 <.text+0x7000>
    8188: b0000024     	adrp	x4, 0xd000
    818c: 910de000     	add	x0, x0, #0x378
    8190: 9132f042     	add	x2, x2, #0xcbc
    8194: 91094084     	add	x4, x4, #0x250
    8198: 52800101     	mov	w1, #0x8                // =8
    819c: aa1f03e3     	mov	x3, xzr
    81a0: 97fff0d1     	bl	0x44e4 <.text+0x34e4>
    81a4: b0000028     	adrp	x8, 0xd000
    81a8: f9012d00     	str	x0, [x8, #0x258]
    81ac: 97ffef9e     	bl	0x4024 <.text+0x3024>
    81b0: 72001c1f     	tst	w0, #0xff
    81b4: 540001a0     	b.eq	0x81e8 <.text+0x71e8>
    81b8: f9404288     	ldr	x8, [x20, #0x80]
    81bc: 90000020     	adrp	x0, 0xc000
    81c0: 90000001     	adrp	x1, 0x8000 <.text+0x7000>
    81c4: b0000022     	adrp	x2, 0xd000
    81c8: 910d6000     	add	x0, x0, #0x358
    81cc: 910e0021     	add	x1, x1, #0x380
    81d0: 91086042     	add	x2, x2, #0x218
    81d4: f9406108     	ldr	x8, [x8, #0xc0]
    81d8: d63f0100     	blr	x8
    81dc: b6f80c00     	tbz	x0, #0x3f, 0x835c <.text+0x735c>
    81e0: aa0003f4     	mov	x20, x0
    81e4: 1400005f     	b	0x8360 <.text+0x7360>
    81e8: b0000036     	adrp	x22, 0xd000
    81ec: f0ffffe2     	adrp	x2, 0x7000 <.text+0x6000>
    81f0: 90000024     	adrp	x4, 0xc000
    81f4: b0000025     	adrp	x5, 0xd000
    81f8: 913af042     	add	x2, x2, #0xebc
    81fc: 91072084     	add	x4, x4, #0x1c8
    8200: f94012c8     	ldr	x8, [x22, #0x20]
    8204: 910880a5     	add	x5, x5, #0x220
    8208: 52804000     	mov	w0, #0x200              // =512
    820c: 528000e1     	mov	w1, #0x7                // =7
    8210: aa1f03e3     	mov	x3, xzr
    8214: f940b908     	ldr	x8, [x8, #0x170]
    8218: d63f0100     	blr	x8
    821c: b6f800c0     	tbz	x0, #0x3f, 0x8234 <.text+0x7234>
    8220: d0000001     	adrp	x1, 0xa000 <.text+0x9000>
    8224: aa0003e2     	mov	x2, x0
    8228: 911ed021     	add	x1, x1, #0x7b4
    822c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    8230: 97ffec5c     	bl	0x33a0 <.text+0x23a0>
    8234: f94012c8     	ldr	x8, [x22, #0x20]
    8238: f0ffffe2     	adrp	x2, 0x7000 <.text+0x6000>
    823c: 90000024     	adrp	x4, 0xc000
    8240: b0000025     	adrp	x5, 0xd000
    8244: 913b7042     	add	x2, x2, #0xedc
    8248: 91056084     	add	x4, x4, #0x158
    824c: 9108a0a5     	add	x5, x5, #0x228
    8250: 52804000     	mov	w0, #0x200              // =512
    8254: f940b908     	ldr	x8, [x8, #0x170]
    8258: 52800201     	mov	w1, #0x10               // =16
    825c: aa1f03e3     	mov	x3, xzr
    8260: d63f0100     	blr	x8
    8264: b6f800c0     	tbz	x0, #0x3f, 0x827c <.text+0x727c>
    8268: d0000001     	adrp	x1, 0xa000 <.text+0x9000>
    826c: aa0003e2     	mov	x2, x0
    8270: 911ed021     	add	x1, x1, #0x7b4
    8274: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    8278: 97ffec4a     	bl	0x33a0 <.text+0x23a0>
    827c: b0000037     	adrp	x23, 0xd000
    8280: d2800134     	mov	x20, #0x9               // =9
    8284: f2f00014     	movk	x20, #0x8000, lsl #48
    8288: f9411ae8     	ldr	x8, [x23, #0x230]
    828c: b5000148     	cbnz	x8, 0x82b4 <.text+0x72b4>
    8290: 90000020     	adrp	x0, 0xc000
    8294: 90000022     	adrp	x2, 0xc000
    8298: 911cc000     	add	x0, x0, #0x730
    829c: 911d8042     	add	x2, x2, #0x760
    82a0: aa1303e1     	mov	x1, x19
    82a4: aa1f03e3     	mov	x3, xzr
    82a8: 97fffc02     	bl	0x72b0 <.text+0x62b0>
    82ac: f9011ae0     	str	x0, [x23, #0x230]
    82b0: b4000640     	cbz	x0, 0x8378 <.text+0x7378>
    82b4: f94012c8     	ldr	x8, [x22, #0x20]
    82b8: 90000020     	adrp	x0, 0xc000
    82bc: b0000022     	adrp	x2, 0xd000
    82c0: 911d4000     	add	x0, x0, #0x750
    82c4: 91080042     	add	x2, x2, #0x200
    82c8: aa1f03e1     	mov	x1, xzr
    82cc: f940a108     	ldr	x8, [x8, #0x140]
    82d0: d63f0100     	blr	x8
    82d4: 91001688     	add	x8, x20, #0x5
    82d8: eb08001f     	cmp	x0, x8
    82dc: 54000401     	b.ne	0x835c <.text+0x735c>
    82e0: 52800200     	mov	w0, #0x10               // =16
    82e4: 97fff019     	bl	0x4348 <.text+0x3348>
    82e8: b0000033     	adrp	x19, 0xd000
    82ec: f9010260     	str	x0, [x19, #0x200]
    82f0: b4000380     	cbz	x0, 0x8360 <.text+0x7360>
    82f4: 52800c00     	mov	w0, #0x60               // =96
    82f8: 97fff014     	bl	0x4348 <.text+0x3348>
    82fc: b0000037     	adrp	x23, 0xd000
    8300: f90132e0     	str	x0, [x23, #0x260]
    8304: b40002e0     	cbz	x0, 0x8360 <.text+0x7360>
    8308: f9410aa8     	ldr	x8, [x21, #0x210]
    830c: 9100a100     	add	x0, x8, #0x28
    8310: 97ffefda     	bl	0x4278 <.text+0x3278>
    8314: b0000028     	adrp	x8, 0xd000
    8318: f9013900     	str	x0, [x8, #0x270]
    831c: b4000220     	cbz	x0, 0x8360 <.text+0x7360>
    8320: f94132e9     	ldr	x9, [x23, #0x260]
    8324: b0000020     	adrp	x0, 0xd000
    8328: f941026a     	ldr	x10, [x19, #0x200]
    832c: 90000021     	adrp	x1, 0xc000
    8330: 9109a000     	add	x0, x0, #0x268
    8334: 911d4021     	add	x1, x1, #0x750
    8338: 2a1f03e2     	mov	w2, wzr
    833c: f9000149     	str	x9, [x10]
    8340: f9413908     	ldr	x8, [x8, #0x270]
    8344: f9410263     	ldr	x3, [x19, #0x200]
    8348: f94012c9     	ldr	x9, [x22, #0x20]
    834c: f9000468     	str	x8, [x3, #0x8]
    8350: f9404128     	ldr	x8, [x9, #0x80]
    8354: d63f0100     	blr	x8
    8358: b7fff440     	tbnz	x0, #0x3f, 0x81e0 <.text+0x71e0>
    835c: aa1f03f4     	mov	x20, xzr
    8360: aa1403e0     	mov	x0, x20
    8364: f9400bf7     	ldr	x23, [sp, #0x10]
    8368: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    836c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    8370: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    8374: d65f03c0     	ret
    8378: 91003294     	add	x20, x20, #0xc
    837c: 17fffff9     	b	0x8360 <.text+0x7360>
    8380: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    8384: f9000bf5     	str	x21, [sp, #0x10]
    8388: a9024ff4     	stp	x20, x19, [sp, #0x20]
    838c: 910003fd     	mov	x29, sp
    8390: b0000034     	adrp	x20, 0xd000
    8394: 90000020     	adrp	x0, 0xc000
    8398: b0000022     	adrp	x2, 0xd000
    839c: 911d4000     	add	x0, x0, #0x750
    83a0: 91080042     	add	x2, x2, #0x200
    83a4: aa1f03e1     	mov	x1, xzr
    83a8: f9404288     	ldr	x8, [x20, #0x80]
    83ac: d2800055     	mov	x21, #0x2               // =2
    83b0: f2f00015     	movk	x21, #0x8000, lsl #48
    83b4: f9406908     	ldr	x8, [x8, #0xd0]
    83b8: d63f0100     	blr	x8
    83bc: aa1f03f3     	mov	x19, xzr
    83c0: b27e06a8     	orr	x8, x21, #0xc
    83c4: eb08001f     	cmp	x0, x8
    83c8: 54000a21     	b.ne	0x850c <.text+0x750c>
    83cc: b0000028     	adrp	x8, 0xd000
    83d0: 90000020     	adrp	x0, 0xc000
    83d4: 911d4000     	add	x0, x0, #0x750
    83d8: 910063a2     	add	x2, x29, #0x18
    83dc: aa1f03e1     	mov	x1, xzr
    83e0: f9401108     	ldr	x8, [x8, #0x20]
    83e4: f940a108     	ldr	x8, [x8, #0x140]
    83e8: d63f0100     	blr	x8
    83ec: b7f80720     	tbnz	x0, #0x3f, 0x84d0 <.text+0x74d0>
    83f0: f9400fa8     	ldr	x8, [x29, #0x18]
    83f4: f9400508     	ldr	x8, [x8, #0x8]
    83f8: b4000708     	cbz	x8, 0x84d8 <.text+0x74d8>
    83fc: f9404288     	ldr	x8, [x20, #0x80]
    8400: b0000022     	adrp	x2, 0xd000
    8404: 91080042     	add	x2, x2, #0x200
    8408: 528000c0     	mov	w0, #0x6                // =6
    840c: 52800201     	mov	w1, #0x10               // =16
    8410: f9402908     	ldr	x8, [x8, #0x50]
    8414: d63f0100     	blr	x8
    8418: b7f805c0     	tbnz	x0, #0x3f, 0x84d0 <.text+0x74d0>
    841c: f9404288     	ldr	x8, [x20, #0x80]
    8420: b0000022     	adrp	x2, 0xd000
    8424: 91098042     	add	x2, x2, #0x260
    8428: 528000c0     	mov	w0, #0x6                // =6
    842c: 52800c01     	mov	w1, #0x60               // =96
    8430: f9402908     	ldr	x8, [x8, #0x50]
    8434: d63f0100     	blr	x8
    8438: b7f80540     	tbnz	x0, #0x3f, 0x84e0 <.text+0x74e0>
    843c: b0000033     	adrp	x19, 0xd000
    8440: 52800201     	mov	w1, #0x10               // =16
    8444: f9410260     	ldr	x0, [x19, #0x200]
    8448: 97ffeabd     	bl	0x2f3c <.text+0x1f3c>
    844c: b0000035     	adrp	x21, 0xd000
    8450: 52800c01     	mov	w1, #0x60               // =96
    8454: f94132a0     	ldr	x0, [x21, #0x260]
    8458: 97ffeab9     	bl	0x2f3c <.text+0x1f3c>
    845c: f94132a8     	ldr	x8, [x21, #0x260]
    8460: b0000020     	adrp	x0, 0xd000
    8464: f9410269     	ldr	x9, [x19, #0x200]
    8468: 90000021     	adrp	x1, 0xc000
    846c: 9109a000     	add	x0, x0, #0x268
    8470: 911d4021     	add	x1, x1, #0x750
    8474: 2a1f03e2     	mov	w2, wzr
    8478: f9000128     	str	x8, [x9]
    847c: f9400fa8     	ldr	x8, [x29, #0x18]
    8480: f9410263     	ldr	x3, [x19, #0x200]
    8484: f9404289     	ldr	x9, [x20, #0x80]
    8488: f900001f     	str	xzr, [x0]
    848c: f9400508     	ldr	x8, [x8, #0x8]
    8490: f9000468     	str	x8, [x3, #0x8]
    8494: f9405528     	ldr	x8, [x9, #0xa8]
    8498: d63f0100     	blr	x8
    849c: b7f802a0     	tbnz	x0, #0x3f, 0x84f0 <.text+0x74f0>
    84a0: f9404288     	ldr	x8, [x20, #0x80]
    84a4: f0ffffe0     	adrp	x0, 0x7000 <.text+0x6000>
    84a8: 90000021     	adrp	x1, 0xc000
    84ac: b0000022     	adrp	x2, 0xd000
    84b0: 913b8000     	add	x0, x0, #0xee0
    84b4: 911d0021     	add	x1, x1, #0x740
    84b8: 9108e042     	add	x2, x2, #0x238
    84bc: f9407108     	ldr	x8, [x8, #0xe0]
    84c0: d63f0100     	blr	x8
    84c4: b7f80160     	tbnz	x0, #0x3f, 0x84f0 <.text+0x74f0>
    84c8: aa1f03f3     	mov	x19, xzr
    84cc: 14000010     	b	0x850c <.text+0x750c>
    84d0: aa0003f3     	mov	x19, x0
    84d4: 1400000e     	b	0x850c <.text+0x750c>
    84d8: aa1503f3     	mov	x19, x21
    84dc: 1400000c     	b	0x850c <.text+0x750c>
    84e0: aa0003f3     	mov	x19, x0
    84e4: b0000020     	adrp	x0, 0xd000
    84e8: 91080000     	add	x0, x0, #0x200
    84ec: 14000007     	b	0x8508 <.text+0x7508>
    84f0: aa0003f3     	mov	x19, x0
    84f4: b0000020     	adrp	x0, 0xd000
    84f8: 91080000     	add	x0, x0, #0x200
    84fc: 97ffecec     	bl	0x38ac <.text+0x28ac>
    8500: b0000020     	adrp	x0, 0xd000
    8504: 91098000     	add	x0, x0, #0x260
    8508: 97ffece9     	bl	0x38ac <.text+0x28ac>
    850c: aa1303e0     	mov	x0, x19
    8510: f9400bf5     	ldr	x21, [sp, #0x10]
    8514: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8518: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    851c: d65f03c0     	ret
    8520: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    8524: a9014ff4     	stp	x20, x19, [sp, #0x10]
    8528: 910003fd     	mov	x29, sp
    852c: 97ffeebe     	bl	0x4024 <.text+0x3024>
    8530: 72001c1f     	tst	w0, #0xff
    8534: 540001e0     	b.eq	0x8570 <.text+0x7570>
    8538: b0000028     	adrp	x8, 0xd000
    853c: f9412508     	ldr	x8, [x8, #0x248]
    8540: b4000328     	cbz	x8, 0x85a4 <.text+0x75a4>
    8544: b0000028     	adrp	x8, 0xd000
    8548: 90000020     	adrp	x0, 0xc000
    854c: b0000022     	adrp	x2, 0xd000
    8550: 910de000     	add	x0, x0, #0x378
    8554: 91092042     	add	x2, x2, #0x248
    8558: aa1f03e1     	mov	x1, xzr
    855c: f9404108     	ldr	x8, [x8, #0x80]
    8560: f9406108     	ldr	x8, [x8, #0xc0]
    8564: d63f0100     	blr	x8
    8568: b6f801e0     	tbz	x0, #0x3f, 0x85a4 <.text+0x75a4>
    856c: 14000009     	b	0x8590 <.text+0x7590>
    8570: b0000028     	adrp	x8, 0xd000
    8574: f9412d00     	ldr	x0, [x8, #0x258]
    8578: b4000160     	cbz	x0, 0x85a4 <.text+0x75a4>
    857c: b0000028     	adrp	x8, 0xd000
    8580: f9401108     	ldr	x8, [x8, #0x20]
    8584: f9403908     	ldr	x8, [x8, #0x70]
    8588: d63f0100     	blr	x8
    858c: b6f800c0     	tbz	x0, #0x3f, 0x85a4 <.text+0x75a4>
    8590: d0000001     	adrp	x1, 0xa000 <.text+0x9000>
    8594: aa0003e2     	mov	x2, x0
    8598: 911ed021     	add	x1, x1, #0x7b4
    859c: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    85a0: 97ffeb80     	bl	0x33a0 <.text+0x23a0>
    85a4: 97ffeea0     	bl	0x4024 <.text+0x3024>
    85a8: 72001c1f     	tst	w0, #0xff
    85ac: 54000360     	b.eq	0x8618 <.text+0x7618>
    85b0: b0000028     	adrp	x8, 0xd000
    85b4: f9410d08     	ldr	x8, [x8, #0x218]
    85b8: b4000208     	cbz	x8, 0x85f8 <.text+0x75f8>
    85bc: b0000028     	adrp	x8, 0xd000
    85c0: 90000020     	adrp	x0, 0xc000
    85c4: b0000022     	adrp	x2, 0xd000
    85c8: 910d6000     	add	x0, x0, #0x358
    85cc: 91086042     	add	x2, x2, #0x218
    85d0: aa1f03e1     	mov	x1, xzr
    85d4: f9404108     	ldr	x8, [x8, #0x80]
    85d8: f9406108     	ldr	x8, [x8, #0xc0]
    85dc: d63f0100     	blr	x8
    85e0: b6f800c0     	tbz	x0, #0x3f, 0x85f8 <.text+0x75f8>
    85e4: d0000001     	adrp	x1, 0xa000 <.text+0x9000>
    85e8: aa0003e2     	mov	x2, x0
    85ec: 911ed021     	add	x1, x1, #0x7b4
    85f0: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    85f4: 97ffeb6b     	bl	0x33a0 <.text+0x23a0>
    85f8: b0000028     	adrp	x8, 0xd000
    85fc: f9411d00     	ldr	x0, [x8, #0x238]
    8600: b4000720     	cbz	x0, 0x86e4 <.text+0x76e4>
    8604: b0000028     	adrp	x8, 0xd000
    8608: f9404108     	ldr	x8, [x8, #0x80]
    860c: f9407508     	ldr	x8, [x8, #0xe8]
    8610: d63f0100     	blr	x8
    8614: 14000034     	b	0x86e4 <.text+0x76e4>
    8618: 97fffd4b     	bl	0x7b44 <.text+0x6b44>
    861c: b0000033     	adrp	x19, 0xd000
    8620: b0000029     	adrp	x9, 0xd000
    8624: f9401268     	ldr	x8, [x19, #0x20]
    8628: f9411120     	ldr	x0, [x9, #0x220]
    862c: f9403908     	ldr	x8, [x8, #0x70]
    8630: d63f0100     	blr	x8
    8634: b6f800c0     	tbz	x0, #0x3f, 0x864c <.text+0x764c>
    8638: d0000001     	adrp	x1, 0xa000 <.text+0x9000>
    863c: aa0003e2     	mov	x2, x0
    8640: 911ed021     	add	x1, x1, #0x7b4
    8644: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    8648: 97ffeb56     	bl	0x33a0 <.text+0x23a0>
    864c: f9401268     	ldr	x8, [x19, #0x20]
    8650: b0000029     	adrp	x9, 0xd000
    8654: f9411520     	ldr	x0, [x9, #0x228]
    8658: f9403908     	ldr	x8, [x8, #0x70]
    865c: d63f0100     	blr	x8
    8660: b6f800c0     	tbz	x0, #0x3f, 0x8678 <.text+0x7678>
    8664: d0000001     	adrp	x1, 0xa000 <.text+0x9000>
    8668: aa0003e2     	mov	x2, x0
    866c: 911ed021     	add	x1, x1, #0x7b4
    8670: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    8674: 97ffeb4b     	bl	0x33a0 <.text+0x23a0>
    8678: b0000034     	adrp	x20, 0xd000
    867c: f9410288     	ldr	x8, [x20, #0x200]
    8680: b4000088     	cbz	x8, 0x8690 <.text+0x7690>
    8684: b0000020     	adrp	x0, 0xd000
    8688: 91080000     	add	x0, x0, #0x200
    868c: 97ffec88     	bl	0x38ac <.text+0x28ac>
    8690: b0000028     	adrp	x8, 0xd000
    8694: f9413108     	ldr	x8, [x8, #0x260]
    8698: b4000088     	cbz	x8, 0x86a8 <.text+0x76a8>
    869c: b0000020     	adrp	x0, 0xd000
    86a0: 91098000     	add	x0, x0, #0x260
    86a4: 97ffec82     	bl	0x38ac <.text+0x28ac>
    86a8: b0000028     	adrp	x8, 0xd000
    86ac: f9413908     	ldr	x8, [x8, #0x270]
    86b0: b4000088     	cbz	x8, 0x86c0 <.text+0x76c0>
    86b4: b0000020     	adrp	x0, 0xd000
    86b8: 9109c000     	add	x0, x0, #0x270
    86bc: 97ffec7c     	bl	0x38ac <.text+0x28ac>
    86c0: b0000028     	adrp	x8, 0xd000
    86c4: f9413500     	ldr	x0, [x8, #0x268]
    86c8: b40000e0     	cbz	x0, 0x86e4 <.text+0x76e4>
    86cc: f9401268     	ldr	x8, [x19, #0x20]
    86d0: 90000021     	adrp	x1, 0xc000
    86d4: f9410282     	ldr	x2, [x20, #0x200]
    86d8: 911d4021     	add	x1, x1, #0x750
    86dc: f9404908     	ldr	x8, [x8, #0x90]
    86e0: d63f0100     	blr	x8
    86e4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    86e8: aa1f03e0     	mov	x0, xzr
    86ec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    86f0: d65f03c0     	ret
    86f4: d10283ff     	sub	sp, sp, #0xa0
    86f8: a9067bfd     	stp	x29, x30, [sp, #0x60]
    86fc: a9075ff8     	stp	x24, x23, [sp, #0x70]
    8700: a90857f6     	stp	x22, x21, [sp, #0x80]
    8704: a9094ff4     	stp	x20, x19, [sp, #0x90]
    8708: 910183fd     	add	x29, sp, #0x60
    870c: 71000c5f     	cmp	w2, #0x3
    8710: f90003ff     	str	xzr, [sp]
    8714: 54000069     	b.ls	0x8720 <.text+0x7720>
    8718: b2410bf4     	mov	x20, #-0x7ffffffffffffffd // =-9223372036854775805
    871c: 140000d4     	b	0x8a6c <.text+0x7a6c>
    8720: 2a0203f3     	mov	w19, w2
    8724: 121e7848     	and	w8, w2, #0xfffffffd
    8728: 7100051f     	cmp	w8, #0x1
    872c: 54000121     	b.ne	0x8750 <.text+0x7750>
    8730: d0000008     	adrp	x8, 0xa000 <.text+0x9000>
    8734: 39624108     	ldrb	w8, [x8, #0x890]
    8738: 34000108     	cbz	w8, 0x8758 <.text+0x7758>
    873c: 910003e2     	mov	x2, sp
    8740: 940000d2     	bl	0x8a88 <.text+0x7a88>
    8744: f94003f5     	ldr	x21, [sp]
    8748: 52800034     	mov	w20, #0x1               // =1
    874c: 14000007     	b	0x8768 <.text+0x7768>
    8750: 2a1f03f4     	mov	w20, wzr
    8754: 14000002     	b	0x875c <.text+0x775c>
    8758: 52800034     	mov	w20, #0x1               // =1
    875c: 94000103     	bl	0x8b68 <.text+0x7b68>
    8760: aa0003f5     	mov	x21, x0
    8764: f90003e0     	str	x0, [sp]
    8768: d28001d7     	mov	x23, #0xe               // =14
    876c: f2f00017     	movk	x23, #0x8000, lsl #48
    8770: b4000475     	cbz	x21, 0x87fc <.text+0x77fc>
    8774: d10083a0     	sub	x0, x29, #0x20
    8778: 528003c1     	mov	w1, #0x1e               // =30
    877c: f90007ff     	str	xzr, [sp, #0x8]
    8780: 97ffe9ef     	bl	0x2f3c <.text+0x1f3c>
    8784: f0000008     	adrp	x8, 0xb000 <.text+0xa000>
    8788: f0000009     	adrp	x9, 0xb000 <.text+0xa000>
    878c: 910b4908     	add	x8, x8, #0x2d2
    8790: 910ba929     	add	x9, x9, #0x2ea
    8794: 7100029f     	cmp	w20, #0x0
    8798: d10083a0     	sub	x0, x29, #0x20
    879c: 9a880136     	csel	x22, x9, x8, eq
    87a0: 528003c1     	mov	w1, #0x1e               // =30
    87a4: aa1603e2     	mov	x2, x22
    87a8: 97ffed2f     	bl	0x3c64 <.text+0x2c64>
    87ac: 90000021     	adrp	x1, 0xc000
    87b0: d10083a0     	sub	x0, x29, #0x20
    87b4: 91036021     	add	x1, x1, #0xd8
    87b8: d100a3a2     	sub	x2, x29, #0x28
    87bc: 910023e3     	add	x3, sp, #0x8
    87c0: 97fff707     	bl	0x63dc <.text+0x53dc>
    87c4: b7f80200     	tbnz	x0, #0x3f, 0x8804 <.text+0x7804>
    87c8: f85d83a8     	ldur	x8, [x29, #-0x28]
    87cc: 52801101     	mov	w1, #0x88               // =136
    87d0: 90000020     	adrp	x0, 0xc000
    87d4: 72a40001     	movk	w1, #0x2000, lsl #16
    87d8: 91042000     	add	x0, x0, #0x108
    87dc: d341fd18     	lsr	x24, x8, #1
    87e0: 94000644     	bl	0xa0f0 <.text+0x90f0>
    87e4: f94007e8     	ldr	x8, [sp, #0x8]
    87e8: eb20231f     	cmp	x24, w0, uxth
    87ec: 54000102     	b.hs	0x880c <.text+0x780c>
    87f0: 79400108     	ldrh	w8, [x8]
    87f4: 11000518     	add	w24, w8, #0x1
    87f8: 14000007     	b	0x8814 <.text+0x7814>
    87fc: d10016f4     	sub	x20, x23, #0x5
    8800: 1400009b     	b	0x8a6c <.text+0x7a6c>
    8804: 2a1f03f8     	mov	w24, wzr
    8808: 14000003     	b	0x8814 <.text+0x7814>
    880c: 8b180508     	add	x8, x8, x24, lsl #1
    8810: 785fe118     	ldurh	w24, [x8, #-0x2]
    8814: 910023e0     	add	x0, sp, #0x8
    8818: 97ffec25     	bl	0x38ac <.text+0x28ac>
    881c: 910023e0     	add	x0, sp, #0x8
    8820: 528003c1     	mov	w1, #0x1e               // =30
    8824: 97ffe9c6     	bl	0x2f3c <.text+0x1f3c>
    8828: f0000008     	adrp	x8, 0xb000 <.text+0xa000>
    882c: f0000009     	adrp	x9, 0xb000 <.text+0xa000>
    8830: 910ab908     	add	x8, x8, #0x2ae
    8834: 910b0129     	add	x9, x9, #0x2c0
    8838: 7100029f     	cmp	w20, #0x0
    883c: 12003f03     	and	w3, w24, #0xffff
    8840: 9a880122     	csel	x2, x9, x8, eq
    8844: 910023e0     	add	x0, sp, #0x8
    8848: 528003c1     	mov	w1, #0x1e               // =30
    884c: 97ffed06     	bl	0x3c64 <.text+0x2c64>
    8850: 90000021     	adrp	x1, 0xc000
    8854: 910023e0     	add	x0, sp, #0x8
    8858: 91036021     	add	x1, x1, #0xd8
    885c: 528000e2     	mov	w2, #0x7                // =7
    8860: aa1f03e3     	mov	x3, xzr
    8864: aa1f03e4     	mov	x4, xzr
    8868: 97fff748     	bl	0x6588 <.text+0x5588>
    886c: b6f80080     	tbz	x0, #0x3f, 0x887c <.text+0x787c>
    8870: aa0003f4     	mov	x20, x0
    8874: eb17001f     	cmp	x0, x23
    8878: 54000fa1     	b.ne	0x8a6c <.text+0x7a6c>
    887c: 90000021     	adrp	x1, 0xc000
    8880: 910023e0     	add	x0, sp, #0x8
    8884: 91036021     	add	x1, x1, #0xd8
    8888: 528000e2     	mov	w2, #0x7                // =7
    888c: 52800403     	mov	w3, #0x20               // =32
    8890: aa1503e4     	mov	x4, x21
    8894: 97fff73d     	bl	0x6588 <.text+0x5588>
    8898: aa0003f4     	mov	x20, x0
    889c: b7f80e40     	tbnz	x0, #0x3f, 0x8a64 <.text+0x7a64>
    88a0: d10083a0     	sub	x0, x29, #0x20
    88a4: 528003c1     	mov	w1, #0x1e               // =30
    88a8: f81d83bf     	stur	xzr, [x29, #-0x28]
    88ac: 97ffe9a4     	bl	0x2f3c <.text+0x1f3c>
    88b0: d10083a0     	sub	x0, x29, #0x20
    88b4: 528003c1     	mov	w1, #0x1e               // =30
    88b8: aa1603e2     	mov	x2, x22
    88bc: 97ffecea     	bl	0x3c64 <.text+0x2c64>
    88c0: 90000021     	adrp	x1, 0xc000
    88c4: d10083a0     	sub	x0, x29, #0x20
    88c8: 91036021     	add	x1, x1, #0xd8
    88cc: 9100c3e2     	add	x2, sp, #0x30
    88d0: d100a3a3     	sub	x3, x29, #0x28
    88d4: 97fff6c2     	bl	0x63dc <.text+0x53dc>
    88d8: b7f80300     	tbnz	x0, #0x3f, 0x8938 <.text+0x7938>
    88dc: f9401be8     	ldr	x8, [sp, #0x30]
    88e0: 52801101     	mov	w1, #0x88               // =136
    88e4: 90000020     	adrp	x0, 0xc000
    88e8: 72a40001     	movk	w1, #0x2000, lsl #16
    88ec: 91042000     	add	x0, x0, #0x108
    88f0: d341fd15     	lsr	x21, x8, #1
    88f4: 940005ff     	bl	0xa0f0 <.text+0x90f0>
    88f8: 2a0003e8     	mov	w8, w0
    88fc: f9401be0     	ldr	x0, [sp, #0x30]
    8900: eb2822bf     	cmp	x21, w8, uxth
    8904: 540002a2     	b.hs	0x8958 <.text+0x7958>
    8908: 91000800     	add	x0, x0, #0x2
    890c: 97ffee8f     	bl	0x4348 <.text+0x3348>
    8910: b4000620     	cbz	x0, 0x89d4 <.text+0x79d4>
    8914: aa0003f5     	mov	x21, x0
    8918: 78002418     	strh	w24, [x0], #0x2
    891c: f85d83a1     	ldur	x1, [x29, #-0x28]
    8920: f9401be2     	ldr	x2, [sp, #0x30]
    8924: 97ffe989     	bl	0x2f48 <.text+0x1f48>
    8928: f9401be8     	ldr	x8, [sp, #0x30]
    892c: 91000908     	add	x8, x8, #0x2
    8930: f9001be8     	str	x8, [sp, #0x30]
    8934: 14000011     	b	0x8978 <.text+0x7978>
    8938: 52800040     	mov	w0, #0x2                // =2
    893c: 97ffee83     	bl	0x4348 <.text+0x3348>
    8940: f81d83a0     	stur	x0, [x29, #-0x28]
    8944: b4000480     	cbz	x0, 0x89d4 <.text+0x79d4>
    8948: 79000018     	strh	w24, [x0]
    894c: 52800056     	mov	w22, #0x2               // =2
    8950: f85d83b5     	ldur	x21, [x29, #-0x28]
    8954: 1400000c     	b	0x8984 <.text+0x7984>
    8958: 97ffee7c     	bl	0x4348 <.text+0x3348>
    895c: b40003c0     	cbz	x0, 0x89d4 <.text+0x79d4>
    8960: aa0003f5     	mov	x21, x0
    8964: 78002418     	strh	w24, [x0], #0x2
    8968: f9401be8     	ldr	x8, [sp, #0x30]
    896c: f85d83a1     	ldur	x1, [x29, #-0x28]
    8970: d1000902     	sub	x2, x8, #0x2
    8974: 97ffe975     	bl	0x2f48 <.text+0x1f48>
    8978: d100a3a0     	sub	x0, x29, #0x28
    897c: 97ffebcc     	bl	0x38ac <.text+0x28ac>
    8980: f9401bf6     	ldr	x22, [sp, #0x30]
    8984: 90000021     	adrp	x1, 0xc000
    8988: d10083a0     	sub	x0, x29, #0x20
    898c: 91036021     	add	x1, x1, #0xd8
    8990: 528000e2     	mov	w2, #0x7                // =7
    8994: aa1f03e3     	mov	x3, xzr
    8998: aa1f03e4     	mov	x4, xzr
    899c: f90017f5     	str	x21, [sp, #0x28]
    89a0: 97fff6fa     	bl	0x6588 <.text+0x5588>
    89a4: b6f80060     	tbz	x0, #0x3f, 0x89b0 <.text+0x79b0>
    89a8: eb17001f     	cmp	x0, x23
    89ac: 54000141     	b.ne	0x89d4 <.text+0x79d4>
    89b0: 90000021     	adrp	x1, 0xc000
    89b4: d10083a0     	sub	x0, x29, #0x20
    89b8: 91036021     	add	x1, x1, #0xd8
    89bc: 528000e2     	mov	w2, #0x7                // =7
    89c0: aa1603e3     	mov	x3, x22
    89c4: aa1503e4     	mov	x4, x21
    89c8: 97fff6f0     	bl	0x6588 <.text+0x5588>
    89cc: 9100a3e0     	add	x0, sp, #0x28
    89d0: 97ffebb7     	bl	0x38ac <.text+0x28ac>
    89d4: d0000008     	adrp	x8, 0xa000 <.text+0x9000>
    89d8: d0000009     	adrp	x9, 0xa000 <.text+0x9000>
    89dc: 529fffea     	mov	w10, #0xffff            // =65535
    89e0: 79518108     	ldrh	w8, [x8, #0x8c0]
    89e4: b948bd29     	ldr	w9, [x9, #0x8bc]
    89e8: 6b0a011f     	cmp	w8, w10
    89ec: 7a400920     	ccmp	w9, #0x0, #0x0, eq
    89f0: 540003a0     	b.eq	0x8a64 <.text+0x7a64>
    89f4: 71000e7f     	cmp	w19, #0x3
    89f8: 54000368     	b.hi	0x8a64 <.text+0x7a64>
    89fc: b0000028     	adrp	x8, 0xd000
    8a00: f0000009     	adrp	x9, 0xb000 <.text+0xa000>
    8a04: 910d8129     	add	x9, x9, #0x360
    8a08: d10083a0     	sub	x0, x29, #0x20
    8a0c: aa1f03e1     	mov	x1, xzr
    8a10: f9400508     	ldr	x8, [x8, #0x8]
    8a14: f873d933     	ldr	x19, [x9, w19, sxtw #3]
    8a18: f9400d08     	ldr	x8, [x8, #0x18]
    8a1c: d63f0100     	blr	x8
    8a20: 90000021     	adrp	x1, 0xc000
    8a24: aa1303e0     	mov	x0, x19
    8a28: 91036021     	add	x1, x1, #0xd8
    8a2c: 528000e2     	mov	w2, #0x7                // =7
    8a30: aa1f03e3     	mov	x3, xzr
    8a34: aa1f03e4     	mov	x4, xzr
    8a38: 97fff6d4     	bl	0x6588 <.text+0x5588>
    8a3c: b6f80060     	tbz	x0, #0x3f, 0x8a48 <.text+0x7a48>
    8a40: eb17001f     	cmp	x0, x23
    8a44: 54000101     	b.ne	0x8a64 <.text+0x7a64>
    8a48: 90000021     	adrp	x1, 0xc000
    8a4c: d10083a4     	sub	x4, x29, #0x20
    8a50: 91036021     	add	x1, x1, #0xd8
    8a54: aa1303e0     	mov	x0, x19
    8a58: 528000e2     	mov	w2, #0x7                // =7
    8a5c: 52800203     	mov	w3, #0x10               // =16
    8a60: 97fff6ca     	bl	0x6588 <.text+0x5588>
    8a64: 910003e0     	mov	x0, sp
    8a68: 97ffeb91     	bl	0x38ac <.text+0x28ac>
    8a6c: aa1403e0     	mov	x0, x20
    8a70: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    8a74: a94857f6     	ldp	x22, x21, [sp, #0x80]
    8a78: a9475ff8     	ldp	x24, x23, [sp, #0x70]
    8a7c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    8a80: 910283ff     	add	sp, sp, #0xa0
    8a84: d65f03c0     	ret
    8a88: d10183ff     	sub	sp, sp, #0x60
    8a8c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8a90: f90013f9     	str	x25, [sp, #0x20]
    8a94: a9035ff8     	stp	x24, x23, [sp, #0x30]
    8a98: a90457f6     	stp	x22, x21, [sp, #0x40]
    8a9c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    8aa0: 910043fd     	add	x29, sp, #0x10
    8aa4: b4000540     	cbz	x0, 0x8b4c <.text+0x7b4c>
    8aa8: f2400c3f     	tst	x1, #0xf
    8aac: d344fc28     	lsr	x8, x1, #4
    8ab0: 9a880519     	cinc	x25, x8, ne
    8ab4: aa0003f8     	mov	x24, x0
    8ab8: d37cef34     	lsl	x20, x25, #4
    8abc: aa1403e0     	mov	x0, x20
    8ac0: aa0203f3     	mov	x19, x2
    8ac4: aa0103f7     	mov	x23, x1
    8ac8: 97ffee20     	bl	0x4348 <.text+0x3348>
    8acc: f9000fa0     	str	x0, [x29, #0x18]
    8ad0: b40003e0     	cbz	x0, 0x8b4c <.text+0x7b4c>
    8ad4: aa0003f5     	mov	x21, x0
    8ad8: aa1403e0     	mov	x0, x20
    8adc: 97ffee1b     	bl	0x4348 <.text+0x3348>
    8ae0: f90007e0     	str	x0, [sp, #0x8]
    8ae4: b4000300     	cbz	x0, 0x8b44 <.text+0x7b44>
    8ae8: aa0003f6     	mov	x22, x0
    8aec: aa1503e0     	mov	x0, x21
    8af0: aa1803e1     	mov	x1, x24
    8af4: aa1703e2     	mov	x2, x23
    8af8: 97ffe914     	bl	0x2f48 <.text+0x1f48>
    8afc: b4000159     	cbz	x25, 0x8b24 <.text+0x7b24>
    8b00: aa1603f7     	mov	x23, x22
    8b04: aa1503e0     	mov	x0, x21
    8b08: 52800201     	mov	w1, #0x10               // =16
    8b0c: aa1703e2     	mov	x2, x23
    8b10: 97fff51a     	bl	0x5f78 <.text+0x4f78>
    8b14: 910042b5     	add	x21, x21, #0x10
    8b18: 910042f7     	add	x23, x23, #0x10
    8b1c: f1000739     	subs	x25, x25, #0x1
    8b20: 54ffff21     	b.ne	0x8b04 <.text+0x7b04>
    8b24: aa1603e0     	mov	x0, x22
    8b28: aa1403e1     	mov	x1, x20
    8b2c: 9400000f     	bl	0x8b68 <.text+0x7b68>
    8b30: f9000260     	str	x0, [x19]
    8b34: 910063a0     	add	x0, x29, #0x18
    8b38: 97ffeb5d     	bl	0x38ac <.text+0x28ac>
    8b3c: 910023e0     	add	x0, sp, #0x8
    8b40: 14000002     	b	0x8b48 <.text+0x7b48>
    8b44: 910063a0     	add	x0, x29, #0x18
    8b48: 97ffeb59     	bl	0x38ac <.text+0x28ac>
    8b4c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    8b50: a94457f6     	ldp	x22, x21, [sp, #0x40]
    8b54: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    8b58: f94013f9     	ldr	x25, [sp, #0x20]
    8b5c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    8b60: 910183ff     	add	sp, sp, #0x60
    8b64: d65f03c0     	ret
    8b68: d10143ff     	sub	sp, sp, #0x50
    8b6c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    8b70: a90357f6     	stp	x22, x21, [sp, #0x30]
    8b74: a9044ff4     	stp	x20, x19, [sp, #0x40]
    8b78: 910083fd     	add	x29, sp, #0x20
    8b7c: aa1f03f3     	mov	x19, xzr
    8b80: f9000bff     	str	xzr, [sp, #0x10]
    8b84: f81f83a0     	stur	x0, [x29, #-0x8]
    8b88: b40006e0     	cbz	x0, 0x8c64 <.text+0x7c64>
    8b8c: aa0103f4     	mov	x20, x1
    8b90: b40006a1     	cbz	x1, 0x8c64 <.text+0x7c64>
    8b94: aa0003f5     	mov	x21, x0
    8b98: 97ffed23     	bl	0x4024 <.text+0x3024>
    8b9c: b0000028     	adrp	x8, 0xd000
    8ba0: b0000029     	adrp	x9, 0xd000
    8ba4: 72001c1f     	tst	w0, #0xff
    8ba8: 90000020     	adrp	x0, 0xc000
    8bac: 91086000     	add	x0, x0, #0x218
    8bb0: 910043e2     	add	x2, sp, #0x10
    8bb4: f9404108     	ldr	x8, [x8, #0x80]
    8bb8: aa1f03e1     	mov	x1, xzr
    8bbc: f9401129     	ldr	x9, [x9, #0x20]
    8bc0: 91034108     	add	x8, x8, #0xd0
    8bc4: 91050129     	add	x9, x9, #0x140
    8bc8: 9a880128     	csel	x8, x9, x8, eq
    8bcc: f9400108     	ldr	x8, [x8]
    8bd0: d63f0100     	blr	x8
    8bd4: b7f80340     	tbnz	x0, #0x3f, 0x8c3c <.text+0x7c3c>
    8bd8: 52800400     	mov	w0, #0x20               // =32
    8bdc: 97ffeddb     	bl	0x4348 <.text+0x3348>
    8be0: f90007e0     	str	x0, [sp, #0x8]
    8be4: b4000300     	cbz	x0, 0x8c44 <.text+0x7c44>
    8be8: 52800400     	mov	w0, #0x20               // =32
    8bec: 97ffedd7     	bl	0x4348 <.text+0x3348>
    8bf0: aa0003f3     	mov	x19, x0
    8bf4: b40002e0     	cbz	x0, 0x8c50 <.text+0x7c50>
    8bf8: f9400be0     	ldr	x0, [sp, #0x10]
    8bfc: 90000021     	adrp	x1, 0xc000
    8c00: 91022021     	add	x1, x1, #0x88
    8c04: 910023e5     	add	x5, sp, #0x8
    8c08: 2a1f03e2     	mov	w2, wzr
    8c0c: aa1503e3     	mov	x3, x21
    8c10: aa1403e4     	mov	x4, x20
    8c14: 910023f6     	add	x22, sp, #0x8
    8c18: f9400408     	ldr	x8, [x0, #0x8]
    8c1c: d63f0100     	blr	x8
    8c20: b7f801e0     	tbnz	x0, #0x3f, 0x8c5c <.text+0x7c5c>
    8c24: f94007e1     	ldr	x1, [sp, #0x8]
    8c28: aa1303e0     	mov	x0, x19
    8c2c: 52800402     	mov	w2, #0x20               // =32
    8c30: 910023f6     	add	x22, sp, #0x8
    8c34: 97ffe8c5     	bl	0x2f48 <.text+0x1f48>
    8c38: 14000009     	b	0x8c5c <.text+0x7c5c>
    8c3c: aa1f03f3     	mov	x19, xzr
    8c40: 14000009     	b	0x8c64 <.text+0x7c64>
    8c44: aa1f03f3     	mov	x19, xzr
    8c48: d10023b6     	sub	x22, x29, #0x8
    8c4c: 14000004     	b	0x8c5c <.text+0x7c5c>
    8c50: d10023a0     	sub	x0, x29, #0x8
    8c54: 910023f6     	add	x22, sp, #0x8
    8c58: 97ffeb15     	bl	0x38ac <.text+0x28ac>
    8c5c: aa1603e0     	mov	x0, x22
    8c60: 97ffeb13     	bl	0x38ac <.text+0x28ac>
    8c64: aa1303e0     	mov	x0, x19
    8c68: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    8c6c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    8c70: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    8c74: 910143ff     	add	sp, sp, #0x50
    8c78: d65f03c0     	ret
    8c7c: 72001c5f     	tst	w2, #0xff
    8c80: 52800049     	mov	w9, #0x2                // =2
    8c84: 1a9f17e8     	cset	w8, eq
    8c88: 1a891529     	cinc	w9, w9, eq
    8c8c: 72001c7f     	tst	w3, #0xff
    8c90: 1a880122     	csel	w2, w9, w8, eq
    8c94: 17fffe98     	b	0x86f4 <.text+0x76f4>
    8c98: b0000028     	adrp	x8, 0xd000
    8c9c: 90000020     	adrp	x0, 0xc000
    8ca0: b0000022     	adrp	x2, 0xd000
    8ca4: 910de000     	add	x0, x0, #0x378
    8ca8: 91090042     	add	x2, x2, #0x240
    8cac: aa1f03e1     	mov	x1, xzr
    8cb0: f9404108     	ldr	x8, [x8, #0x80]
    8cb4: f9406903     	ldr	x3, [x8, #0xd0]
    8cb8: d61f0060     	br	x3
    8cbc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    8cc0: f9000bf3     	str	x19, [sp, #0x10]
    8cc4: 910003fd     	mov	x29, sp
    8cc8: b0000033     	adrp	x19, 0xd000
    8ccc: 90000020     	adrp	x0, 0xc000
    8cd0: b0000022     	adrp	x2, 0xd000
    8cd4: 910de000     	add	x0, x0, #0x378
    8cd8: 91090042     	add	x2, x2, #0x240
    8cdc: aa1f03e1     	mov	x1, xzr
    8ce0: f9401268     	ldr	x8, [x19, #0x20]
    8ce4: f940a108     	ldr	x8, [x8, #0x140]
    8ce8: d63f0100     	blr	x8
    8cec: b7f80100     	tbnz	x0, #0x3f, 0x8d0c <.text+0x7d0c>
    8cf0: f9401269     	ldr	x9, [x19, #0x20]
    8cf4: b0000028     	adrp	x8, 0xd000
    8cf8: f9400bf3     	ldr	x19, [sp, #0x10]
    8cfc: f9412d00     	ldr	x0, [x8, #0x258]
    8d00: f9403921     	ldr	x1, [x9, #0x70]
    8d04: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    8d08: d61f0020     	br	x1
    8d0c: f9400bf3     	ldr	x19, [sp, #0x10]
    8d10: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    8d14: d65f03c0     	ret
    8d18: 58000900     	ldr	x0, 0x8e38 <.text+0x7e38>
    8d1c: f900001f     	str	xzr, [x0]
    8d20: 94000395     	bl	0x9b74 <.text+0x8b74>
    8d24: d5033f9f     	dsb	sy
    8d28: d5033fdf     	isb
    8d2c: 580008a0     	ldr	x0, 0x8e40 <.text+0x7e40>
    8d30: 58000842     	ldr	x2, 0x8e38 <.text+0x7e38>
    8d34: d2800103     	mov	x3, #0x8                // =8
    8d38: d4000003     	smc	#0
    8d3c: 7100001f     	cmp	w0, #0x0
    8d40: 54ffffcc     	b.gt	0x8d38 <.text+0x7d38>
    8d44: 7100001f     	cmp	w0, #0x0
    8d48: 540000e1     	b.ne	0x8d64 <.text+0x7d64>
    8d4c: 58000760     	ldr	x0, 0x8e38 <.text+0x7e38>
    8d50: 94000387     	bl	0x9b6c <.text+0x8b6c>
    8d54: d5033f9f     	dsb	sy
    8d58: d5033fdf     	isb
    8d5c: 580006e1     	ldr	x1, 0x8e38 <.text+0x7e38>
    8d60: f9400020     	ldr	x0, [x1]
    8d64: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    8d68: d65f03c0     	ret
    8d6c: 58000660     	ldr	x0, 0x8e38 <.text+0x7e38>
    8d70: f900001f     	str	xzr, [x0]
    8d74: 94000380     	bl	0x9b74 <.text+0x8b74>
    8d78: d5033f9f     	dsb	sy
    8d7c: d5033fdf     	isb
    8d80: 58000640     	ldr	x0, 0x8e48 <.text+0x7e48>
    8d84: d2800441     	mov	x1, #0x22               // =34
    8d88: 58000582     	ldr	x2, 0x8e38 <.text+0x7e38>
    8d8c: d2800103     	mov	x3, #0x8                // =8
    8d90: d4000003     	smc	#0
    8d94: 7100001f     	cmp	w0, #0x0
    8d98: 54ffffcc     	b.gt	0x8d90 <.text+0x7d90>
    8d9c: 7100001f     	cmp	w0, #0x0
    8da0: 540000e1     	b.ne	0x8dbc <.text+0x7dbc>
    8da4: 580004a0     	ldr	x0, 0x8e38 <.text+0x7e38>
    8da8: 94000371     	bl	0x9b6c <.text+0x8b6c>
    8dac: d5033f9f     	dsb	sy
    8db0: d5033fdf     	isb
    8db4: 58000421     	ldr	x1, 0x8e38 <.text+0x7e38>
    8db8: f9400020     	ldr	x0, [x1]
    8dbc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    8dc0: d65f03c0     	ret
    8dc4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    8dc8: 910003fd     	mov	x29, sp
    8dcc: 58000420     	ldr	x0, 0x8e50 <.text+0x7e50>
    8dd0: f9400000     	ldr	x0, [x0]
    8dd4: 10000061     	adr	x1, 0x8de0 <.text+0x7de0>
    8dd8: f8606822     	ldr	x2, [x1, x0]
    8ddc: d61f0040     	br	x2
    8de0: 00008df8     	udf	#0x8df8
    8de4: 00000000     	udf	#0x0
    8de8: 00008d18     	udf	#0x8d18
    8dec: 00000000     	udf	#0x0
    8df0: 00008d6c     	udf	#0x8d6c
    8df4: 00000000     	udf	#0x0
    8df8: 58000300     	ldr	x0, 0x8e58 <.text+0x7e58>
    8dfc: d2800021     	mov	x1, #0x1                // =1
    8e00: 58000302     	ldr	x2, 0x8e60 <.text+0x7e60>
    8e04: d4000003     	smc	#0
    8e08: 7100001f     	cmp	w0, #0x0
    8e0c: 54ffffcc     	b.gt	0x8e04 <.text+0x7e04>
    8e10: 7100001f     	cmp	w0, #0x0
    8e14: 580001e1     	ldr	x1, 0x8e50 <.text+0x7e50>
    8e18: 54000081     	b.ne	0x8e28 <.text+0x7e28>
    8e1c: d2800200     	mov	x0, #0x10               // =16
    8e20: f9000020     	str	x0, [x1]
    8e24: 17ffffd2     	b	0x8d6c <.text+0x7d6c>
    8e28: d2800100     	mov	x0, #0x8                // =8
    8e2c: f9000020     	str	x0, [x1]
    8e30: 17ffffba     	b	0x8d18 <.text+0x7d18>
    8e34: 00000000     	udf	#0x0
    8e38: 0000cf80     	udf	#0xcf80
    8e3c: 00000000     	udf	#0x0
    8e40: 02801202     	<unknown>
    8e44: 00000000     	udf	#0x0
    8e48: 02000a01     	<unknown>
    8e4c: 00000000     	udf	#0x0
    8e50: 0000cf88     	udf	#0xcf88
    8e54: 00000000     	udf	#0x0
    8e58: 02000601     	<unknown>
    8e5c: 00000000     	udf	#0x0
    8e60: 02000602     	<unknown>
    8e64: 00000000     	udf	#0x0
    8e68: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    8e6c: 910003fd     	mov	x29, sp
    8e70: aa0203e8     	mov	x8, x2
    8e74: f9400022     	ldr	x2, [x1]
    8e78: aa0003e1     	mov	x1, x0
    8e7c: aa0803e0     	mov	x0, x8
    8e80: 97ffe832     	bl	0x2f48 <.text+0x1f48>
    8e84: aa1f03e0     	mov	x0, xzr
    8e88: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    8e8c: d65f03c0     	ret
    8e90: aa1f03e0     	mov	x0, xzr
    8e94: d65f03c0     	ret
    8e98: 2a1f03e0     	mov	w0, wzr
    8e9c: d65f03c0     	ret
    8ea0: d65f03c0     	ret
    8ea4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    8ea8: f9000bf3     	str	x19, [sp, #0x10]
    8eac: 910003fd     	mov	x29, sp
    8eb0: 90000020     	adrp	x0, 0xc000
    8eb4: b0000021     	adrp	x1, 0xd000
    8eb8: 91076000     	add	x0, x0, #0x1d8
    8ebc: 9109e021     	add	x1, x1, #0x278
    8ec0: 97ffed62     	bl	0x4448 <.text+0x3448>
    8ec4: aa0003f3     	mov	x19, x0
    8ec8: b6f800c0     	tbz	x0, #0x3f, 0x8ee0 <.text+0x7ee0>
    8ecc: d0000001     	adrp	x1, 0xa000 <.text+0x9000>
    8ed0: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    8ed4: 911ed021     	add	x1, x1, #0x7b4
    8ed8: aa1303e2     	mov	x2, x19
    8edc: 97ffe931     	bl	0x33a0 <.text+0x23a0>
    8ee0: aa1303e0     	mov	x0, x19
    8ee4: f9400bf3     	ldr	x19, [sp, #0x10]
    8ee8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    8eec: d65f03c0     	ret
    8ef0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    8ef4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    8ef8: a90257f6     	stp	x22, x21, [sp, #0x20]
    8efc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    8f00: 910003fd     	mov	x29, sp
    8f04: d2800053     	mov	x19, #0x2               // =2
    8f08: f2f00013     	movk	x19, #0x8000, lsl #48
    8f0c: b4000480     	cbz	x0, 0x8f9c <.text+0x7f9c>
    8f10: aa0103f7     	mov	x23, x1
    8f14: b4000441     	cbz	x1, 0x8f9c <.text+0x7f9c>
    8f18: aa0203f5     	mov	x21, x2
    8f1c: b4000402     	cbz	x2, 0x8f9c <.text+0x7f9c>
    8f20: aa0303f4     	mov	x20, x3
    8f24: f100807f     	cmp	x3, #0x20
    8f28: 540003a3     	b.lo	0x8f9c <.text+0x7f9c>
    8f2c: aa0003f8     	mov	x24, x0
    8f30: 52800400     	mov	w0, #0x20               // =32
    8f34: 97ffed05     	bl	0x4348 <.text+0x3348>
    8f38: b40002c0     	cbz	x0, 0x8f90 <.text+0x7f90>
    8f3c: aa0003f6     	mov	x22, x0
    8f40: 94000175     	bl	0x9514 <.text+0x8514>
    8f44: b7f802a0     	tbnz	x0, #0x3f, 0x8f98 <.text+0x7f98>
    8f48: aa1803e0     	mov	x0, x24
    8f4c: aa1703e1     	mov	x1, x23
    8f50: aa1503e2     	mov	x2, x21
    8f54: aa1403e3     	mov	x3, x20
    8f58: 940001f9     	bl	0x973c <.text+0x873c>
    8f5c: b7f801e0     	tbnz	x0, #0x3f, 0x8f98 <.text+0x7f98>
    8f60: aa1503e0     	mov	x0, x21
    8f64: aa1403e1     	mov	x1, x20
    8f68: aa1603e2     	mov	x2, x22
    8f6c: 52800403     	mov	w3, #0x20               // =32
    8f70: aa1503e4     	mov	x4, x21
    8f74: aa1403e5     	mov	x5, x20
    8f78: 94000218     	bl	0x97d8 <.text+0x87d8>
    8f7c: aa0003f3     	mov	x19, x0
    8f80: b7f800e0     	tbnz	x0, #0x3f, 0x8f9c <.text+0x7f9c>
    8f84: aa1603e0     	mov	x0, x22
    8f88: 97ffec6e     	bl	0x4140 <.text+0x3140>
    8f8c: 14000004     	b	0x8f9c <.text+0x7f9c>
    8f90: 91001e73     	add	x19, x19, #0x7
    8f94: 14000002     	b	0x8f9c <.text+0x7f9c>
    8f98: aa0003f3     	mov	x19, x0
    8f9c: aa1303e0     	mov	x0, x19
    8fa0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    8fa4: a94257f6     	ldp	x22, x21, [sp, #0x20]
    8fa8: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    8fac: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    8fb0: d65f03c0     	ret
    8fb4: b0000028     	adrp	x8, 0xd000
    8fb8: f9414108     	ldr	x8, [x8, #0x280]
    8fbc: f100011f     	cmp	x8, #0x0
    8fc0: 1a9f07e0     	cset	w0, ne
    8fc4: d65f03c0     	ret
    8fc8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    8fcc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    8fd0: 910003fd     	mov	x29, sp
    8fd4: aa0003f4     	mov	x20, x0
    8fd8: 52801000     	mov	w0, #0x80               // =128
    8fdc: aa0103f3     	mov	x19, x1
    8fe0: 97ffecda     	bl	0x4348 <.text+0x3348>
    8fe4: b40000e0     	cbz	x0, 0x9000 <.text+0x8000>
    8fe8: b40000d3     	cbz	x19, 0x9000 <.text+0x8000>
    8fec: aa0003e8     	mov	x8, x0
    8ff0: 38401689     	ldrb	w9, [x20], #0x1
    8ff4: f1000673     	subs	x19, x19, #0x1
    8ff8: 38001509     	strb	w9, [x8], #0x1
    8ffc: 54ffffa1     	b.ne	0x8ff0 <.text+0x7ff0>
    9000: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    9004: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9008: d65f03c0     	ret
    900c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9010: a9014ff4     	stp	x20, x19, [sp, #0x10]
    9014: 910003fd     	mov	x29, sp
    9018: aa0003f3     	mov	x19, x0
    901c: 52800400     	mov	w0, #0x20               // =32
    9020: 97ffecca     	bl	0x4348 <.text+0x3348>
    9024: aa0003f4     	mov	x20, x0
    9028: b4000100     	cbz	x0, 0x9048 <.text+0x8048>
    902c: aa1303e0     	mov	x0, x19
    9030: 52801001     	mov	w1, #0x80               // =128
    9034: aa1403e2     	mov	x2, x20
    9038: 52800403     	mov	w3, #0x20               // =32
    903c: 97ffffad     	bl	0x8ef0 <.text+0x7ef0>
    9040: aa1303e0     	mov	x0, x19
    9044: 97ffec3f     	bl	0x4140 <.text+0x3140>
    9048: aa1403e0     	mov	x0, x20
    904c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    9050: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9054: d65f03c0     	ret
    9058: 39400008     	ldrb	w8, [x0]
    905c: 39400029     	ldrb	w9, [x1]
    9060: 6b09011f     	cmp	w8, w9
    9064: 54000161     	b.ne	0x9090 <.text+0x8090>
    9068: aa1f03e8     	mov	x8, xzr
    906c: 38686809     	ldrb	w9, [x0, x8]
    9070: 3868682a     	ldrb	w10, [x1, x8]
    9074: 6b0a013f     	cmp	w9, w10
    9078: 540000c1     	b.ne	0x9090 <.text+0x8090>
    907c: 91000508     	add	x8, x8, #0x1
    9080: f100811f     	cmp	x8, #0x20
    9084: 54ffff41     	b.ne	0x906c <.text+0x806c>
    9088: 52800020     	mov	w0, #0x1                // =1
    908c: d65f03c0     	ret
    9090: 2a1f03e0     	mov	w0, wzr
    9094: d65f03c0     	ret
    9098: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    909c: f9000bf7     	str	x23, [sp, #0x10]
    90a0: a90257f6     	stp	x22, x21, [sp, #0x20]
    90a4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    90a8: 910003fd     	mov	x29, sp
    90ac: aa0003f6     	mov	x22, x0
    90b0: d2800040     	mov	x0, #0x2                // =2
    90b4: f2f00000     	movk	x0, #0x8000, lsl #48
    90b8: b40004f6     	cbz	x22, 0x9154 <.text+0x8154>
    90bc: aa0103f4     	mov	x20, x1
    90c0: b40004a1     	cbz	x1, 0x9154 <.text+0x8154>
    90c4: aa0203f3     	mov	x19, x2
    90c8: b4000462     	cbz	x2, 0x9154 <.text+0x8154>
    90cc: aa0303f5     	mov	x21, x3
    90d0: b4000423     	cbz	x3, 0x9154 <.text+0x8154>
    90d4: f0000017     	adrp	x23, 0xc000
    90d8: 52800021     	mov	w1, #0x1                // =1
    90dc: 9107a2f7     	add	x23, x23, #0x1e8
    90e0: aa1703e0     	mov	x0, x23
    90e4: 97fff1d0     	bl	0x5824 <.text+0x4824>
    90e8: f90002c0     	str	x0, [x22]
    90ec: aa1703e0     	mov	x0, x23
    90f0: 52800021     	mov	w1, #0x1                // =1
    90f4: 97fff1d8     	bl	0x5854 <.text+0x4854>
    90f8: f0000017     	adrp	x23, 0xc000
    90fc: f9000280     	str	x0, [x20]
    9100: 9107e2f7     	add	x23, x23, #0x1f8
    9104: 52800021     	mov	w1, #0x1                // =1
    9108: aa1703e0     	mov	x0, x23
    910c: 97fff1c6     	bl	0x5824 <.text+0x4824>
    9110: f9000260     	str	x0, [x19]
    9114: aa1703e0     	mov	x0, x23
    9118: 52800021     	mov	w1, #0x1                // =1
    911c: 97fff1ce     	bl	0x5854 <.text+0x4854>
    9120: f90002a0     	str	x0, [x21]
    9124: f94002c9     	ldr	x9, [x22]
    9128: b4000149     	cbz	x9, 0x9150 <.text+0x8150>
    912c: f9400289     	ldr	x9, [x20]
    9130: aa0003e8     	mov	x8, x0
    9134: b2410fe0     	mov	x0, #-0x7ffffffffffffff9 // =-9223372036854775801
    9138: b40000e9     	cbz	x9, 0x9154 <.text+0x8154>
    913c: f9400269     	ldr	x9, [x19]
    9140: f100011f     	cmp	x8, #0x0
    9144: fa401924     	ccmp	x9, #0x0, #0x4, ne
    9148: 9a9f0000     	csel	x0, x0, xzr, eq
    914c: 14000002     	b	0x9154 <.text+0x8154>
    9150: b2410fe0     	mov	x0, #-0x7ffffffffffffff9 // =-9223372036854775801
    9154: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9158: a94257f6     	ldp	x22, x21, [sp, #0x20]
    915c: f9400bf7     	ldr	x23, [sp, #0x10]
    9160: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    9164: d65f03c0     	ret
    9168: d10143ff     	sub	sp, sp, #0x50
    916c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    9170: f9001bf5     	str	x21, [sp, #0x30]
    9174: a9044ff4     	stp	x20, x19, [sp, #0x40]
    9178: 910083fd     	add	x29, sp, #0x20
    917c: d2800053     	mov	x19, #0x2               // =2
    9180: f2f00013     	movk	x19, #0x8000, lsl #48
    9184: b4000340     	cbz	x0, 0x91ec <.text+0x81ec>
    9188: aa0103f4     	mov	x20, x1
    918c: b4000301     	cbz	x1, 0x91ec <.text+0x81ec>
    9190: aa0003f5     	mov	x21, x0
    9194: 910063a0     	add	x0, x29, #0x18
    9198: d10023a1     	sub	x1, x29, #0x8
    919c: 910043e2     	add	x2, sp, #0x10
    91a0: 910023e3     	add	x3, sp, #0x8
    91a4: 97ffffbd     	bl	0x9098 <.text+0x8098>
    91a8: b7f801c0     	tbnz	x0, #0x3f, 0x91e0 <.text+0x81e0>
    91ac: f85f83a8     	ldur	x8, [x29, #-0x8]
    91b0: f94007e9     	ldr	x9, [sp, #0x8]
    91b4: 8b080120     	add	x0, x9, x8
    91b8: f9000280     	str	x0, [x20]
    91bc: 97ffec63     	bl	0x4348 <.text+0x3348>
    91c0: f90002a0     	str	x0, [x21]
    91c4: b4000120     	cbz	x0, 0x91e8 <.text+0x81e8>
    91c8: aa0003e2     	mov	x2, x0
    91cc: f9400fa0     	ldr	x0, [x29, #0x18]
    91d0: aa1403e1     	mov	x1, x20
    91d4: 97ffff25     	bl	0x8e68 <.text+0x7e68>
    91d8: aa1f03f3     	mov	x19, xzr
    91dc: 14000004     	b	0x91ec <.text+0x81ec>
    91e0: aa0003f3     	mov	x19, x0
    91e4: 14000002     	b	0x91ec <.text+0x81ec>
    91e8: 91001e73     	add	x19, x19, #0x7
    91ec: aa1303e0     	mov	x0, x19
    91f0: f9401bf5     	ldr	x21, [sp, #0x30]
    91f4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    91f8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    91fc: 910143ff     	add	sp, sp, #0x50
    9200: d65f03c0     	ret
    9204: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9208: f9000bf5     	str	x21, [sp, #0x10]
    920c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9210: 910003fd     	mov	x29, sp
    9214: f9400c08     	ldr	x8, [x0, #0x18]
    9218: aa0303f3     	mov	x19, x3
    921c: f9000fa2     	str	x2, [x29, #0x18]
    9220: 910063a2     	add	x2, x29, #0x18
    9224: aa0003f4     	mov	x20, x0
    9228: aa0103f5     	mov	x21, x1
    922c: d63f0100     	blr	x8
    9230: b7f800e0     	tbnz	x0, #0x3f, 0x924c <.text+0x824c>
    9234: f9400a88     	ldr	x8, [x20, #0x10]
    9238: 910063a2     	add	x2, x29, #0x18
    923c: aa1403e0     	mov	x0, x20
    9240: aa1503e1     	mov	x1, x21
    9244: aa1303e3     	mov	x3, x19
    9248: d63f0100     	blr	x8
    924c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9250: f9400bf5     	ldr	x21, [sp, #0x10]
    9254: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9258: d65f03c0     	ret
    925c: d100c3ff     	sub	sp, sp, #0x30
    9260: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9264: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9268: 910043fd     	add	x29, sp, #0x10
    926c: 90000034     	adrp	x20, 0xd000
    9270: aa0003f3     	mov	x19, x0
    9274: f0000000     	adrp	x0, 0xc000
    9278: 910023e2     	add	x2, sp, #0x8
    927c: 910aa000     	add	x0, x0, #0x2a8
    9280: aa1f03e1     	mov	x1, xzr
    9284: f9401288     	ldr	x8, [x20, #0x20]
    9288: f90007ff     	str	xzr, [sp, #0x8]
    928c: f940a108     	ldr	x8, [x8, #0x140]
    9290: d63f0100     	blr	x8
    9294: b7f800e0     	tbnz	x0, #0x3f, 0x92b0 <.text+0x82b0>
    9298: f9401288     	ldr	x8, [x20, #0x20]
    929c: aa1303e0     	mov	x0, x19
    92a0: f9403908     	ldr	x8, [x8, #0x70]
    92a4: d63f0100     	blr	x8
    92a8: f94007e0     	ldr	x0, [sp, #0x8]
    92ac: 9400010e     	bl	0x96e4 <.text+0x86e4>
    92b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    92b4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    92b8: 9100c3ff     	add	sp, sp, #0x30
    92bc: d65f03c0     	ret
    92c0: d100c3ff     	sub	sp, sp, #0x30
    92c4: a9027bfd     	stp	x29, x30, [sp, #0x20]
    92c8: 910083fd     	add	x29, sp, #0x20
    92cc: 90000028     	adrp	x8, 0xd000
    92d0: f0000000     	adrp	x0, 0xc000
    92d4: 90000029     	adrp	x9, 0xd000
    92d8: 9109e000     	add	x0, x0, #0x278
    92dc: d10023a2     	sub	x2, x29, #0x8
    92e0: aa1f03e1     	mov	x1, xzr
    92e4: f9401108     	ldr	x8, [x8, #0x20]
    92e8: f901413f     	str	xzr, [x9, #0x280]
    92ec: 381f43bf     	sturb	wzr, [x29, #-0xc]
    92f0: f90007ff     	str	xzr, [sp, #0x8]
    92f4: f940a108     	ldr	x8, [x8, #0x140]
    92f8: d63f0100     	blr	x8
    92fc: b7f801a0     	tbnz	x0, #0x3f, 0x9330 <.text+0x8330>
    9300: f85f83a0     	ldur	x0, [x29, #-0x8]
    9304: d10033a1     	sub	x1, x29, #0xc
    9308: f9400008     	ldr	x8, [x0]
    930c: d63f0100     	blr	x8
    9310: 385f43a8     	ldurb	w8, [x29, #-0xc]
    9314: 340000e8     	cbz	w8, 0x9330 <.text+0x8330>
    9318: f85f83a0     	ldur	x0, [x29, #-0x8]
    931c: 90000021     	adrp	x1, 0xd000
    9320: 910a0021     	add	x1, x1, #0x280
    9324: f9400408     	ldr	x8, [x0, #0x8]
    9328: d63f0100     	blr	x8
    932c: 1400000a     	b	0x9354 <.text+0x8354>
    9330: f0000000     	adrp	x0, 0xc000
    9334: 90000002     	adrp	x2, 0x9000 <.text+0x8000>
    9338: 910aa000     	add	x0, x0, #0x2a8
    933c: 91097042     	add	x2, x2, #0x25c
    9340: 910023e4     	add	x4, sp, #0x8
    9344: 52800201     	mov	w1, #0x10               // =16
    9348: aa1f03e3     	mov	x3, xzr
    934c: 97ffec66     	bl	0x44e4 <.text+0x34e4>
    9350: aa1f03e0     	mov	x0, xzr
    9354: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    9358: 9100c3ff     	add	sp, sp, #0x30
    935c: d65f03c0     	ret
    9360: d10103ff     	sub	sp, sp, #0x40
    9364: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9368: a90257f6     	stp	x22, x21, [sp, #0x20]
    936c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9370: 910043fd     	add	x29, sp, #0x10
    9374: d2800053     	mov	x19, #0x2               // =2
    9378: f90007ff     	str	xzr, [sp, #0x8]
    937c: f2f00013     	movk	x19, #0x8000, lsl #48
    9380: b4000580     	cbz	x0, 0x9430 <.text+0x8430>
    9384: aa0103f5     	mov	x21, x1
    9388: b4000541     	cbz	x1, 0x9430 <.text+0x8430>
    938c: aa0203f4     	mov	x20, x2
    9390: b4000502     	cbz	x2, 0x9430 <.text+0x8430>
    9394: aa0003f6     	mov	x22, x0
    9398: 97ffff07     	bl	0x8fb4 <.text+0x7fb4>
    939c: 90000028     	adrp	x8, 0xd000
    93a0: 90000029     	adrp	x9, 0xd000
    93a4: 72001c1f     	tst	w0, #0xff
    93a8: f0000000     	adrp	x0, 0xc000
    93ac: 91086000     	add	x0, x0, #0x218
    93b0: 910023e2     	add	x2, sp, #0x8
    93b4: f9414108     	ldr	x8, [x8, #0x280]
    93b8: aa1f03e1     	mov	x1, xzr
    93bc: f9401129     	ldr	x9, [x9, #0x20]
    93c0: 91034108     	add	x8, x8, #0xd0
    93c4: 91050129     	add	x9, x9, #0x140
    93c8: 9a880128     	csel	x8, x9, x8, eq
    93cc: f9400108     	ldr	x8, [x8]
    93d0: d63f0100     	blr	x8
    93d4: 52800400     	mov	w0, #0x20               // =32
    93d8: 97ffebdc     	bl	0x4348 <.text+0x3348>
    93dc: f90003e0     	str	x0, [sp]
    93e0: b4000260     	cbz	x0, 0x942c <.text+0x842c>
    93e4: f94007e0     	ldr	x0, [sp, #0x8]
    93e8: f0000001     	adrp	x1, 0xc000
    93ec: 91022021     	add	x1, x1, #0x88
    93f0: 910003e5     	mov	x5, sp
    93f4: 2a1f03e2     	mov	w2, wzr
    93f8: aa1603e3     	mov	x3, x22
    93fc: aa1503e4     	mov	x4, x21
    9400: f9400408     	ldr	x8, [x0, #0x8]
    9404: d63f0100     	blr	x8
    9408: aa0003f3     	mov	x19, x0
    940c: b7f800a0     	tbnz	x0, #0x3f, 0x9420 <.text+0x8420>
    9410: f94003e1     	ldr	x1, [sp]
    9414: aa1403e0     	mov	x0, x20
    9418: 52800402     	mov	w2, #0x20               // =32
    941c: 97ffe6cb     	bl	0x2f48 <.text+0x1f48>
    9420: f94003e0     	ldr	x0, [sp]
    9424: 97ffeb47     	bl	0x4140 <.text+0x3140>
    9428: 14000002     	b	0x9430 <.text+0x8430>
    942c: 91001e73     	add	x19, x19, #0x7
    9430: aa1303e0     	mov	x0, x19
    9434: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9438: a94257f6     	ldp	x22, x21, [sp, #0x20]
    943c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9440: 910103ff     	add	sp, sp, #0x40
    9444: d65f03c0     	ret
    9448: d10103ff     	sub	sp, sp, #0x40
    944c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    9450: a9034ff4     	stp	x20, x19, [sp, #0x30]
    9454: 910083fd     	add	x29, sp, #0x20
    9458: aa0003f3     	mov	x19, x0
    945c: 97fffed6     	bl	0x8fb4 <.text+0x7fb4>
    9460: 90000028     	adrp	x8, 0xd000
    9464: 90000029     	adrp	x9, 0xd000
    9468: 72001c1f     	tst	w0, #0xff
    946c: f0000000     	adrp	x0, 0xc000
    9470: 910de000     	add	x0, x0, #0x378
    9474: d10023a2     	sub	x2, x29, #0x8
    9478: f9414108     	ldr	x8, [x8, #0x280]
    947c: aa1f03e1     	mov	x1, xzr
    9480: f9401129     	ldr	x9, [x9, #0x20]
    9484: 91034108     	add	x8, x8, #0xd0
    9488: 91050129     	add	x9, x9, #0x140
    948c: 9a880128     	csel	x8, x9, x8, eq
    9490: f9400108     	ldr	x8, [x8]
    9494: d63f0100     	blr	x8
    9498: b7f80320     	tbnz	x0, #0x3f, 0x94fc <.text+0x84fc>
    949c: 910023e0     	add	x0, sp, #0x8
    94a0: 52800201     	mov	w1, #0x10               // =16
    94a4: 97ffe6a6     	bl	0x2f3c <.text+0x1f3c>
    94a8: aa1303e0     	mov	x0, x19
    94ac: 97ffeba7     	bl	0x4348 <.text+0x3348>
    94b0: aa0003f4     	mov	x20, x0
    94b4: b4000260     	cbz	x0, 0x9500 <.text+0x8500>
    94b8: 90000028     	adrp	x8, 0xd000
    94bc: 910023e0     	add	x0, sp, #0x8
    94c0: aa1f03e1     	mov	x1, xzr
    94c4: f9400508     	ldr	x8, [x8, #0x8]
    94c8: f9400d08     	ldr	x8, [x8, #0x18]
    94cc: d63f0100     	blr	x8
    94d0: f85f83a8     	ldur	x8, [x29, #-0x8]
    94d4: 910023e0     	add	x0, sp, #0x8
    94d8: 52800201     	mov	w1, #0x10               // =16
    94dc: f940a508     	ldr	x8, [x8, #0x148]
    94e0: d63f0100     	blr	x8
    94e4: f85f83a8     	ldur	x8, [x29, #-0x8]
    94e8: aa1403e0     	mov	x0, x20
    94ec: aa1303e1     	mov	x1, x19
    94f0: f940a908     	ldr	x8, [x8, #0x150]
    94f4: d63f0100     	blr	x8
    94f8: 14000002     	b	0x9500 <.text+0x8500>
    94fc: aa1f03f4     	mov	x20, xzr
    9500: aa1403e0     	mov	x0, x20
    9504: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    9508: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    950c: 910103ff     	add	sp, sp, #0x40
    9510: d65f03c0     	ret
    9514: d10143ff     	sub	sp, sp, #0x50
    9518: a9037bfd     	stp	x29, x30, [sp, #0x30]
    951c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    9520: 9100c3fd     	add	x29, sp, #0x30
    9524: b4000280     	cbz	x0, 0x9574 <.text+0x8574>
    9528: aa0003f3     	mov	x19, x0
    952c: d10023a0     	sub	x0, x29, #0x8
    9530: d10043a1     	sub	x1, x29, #0x10
    9534: 910063e2     	add	x2, sp, #0x18
    9538: 910043e3     	add	x3, sp, #0x10
    953c: 97fffed7     	bl	0x9098 <.text+0x8098>
    9540: aa0003f4     	mov	x20, x0
    9544: b7f801c0     	tbnz	x0, #0x3f, 0x957c <.text+0x857c>
    9548: a97f23a9     	ldp	x9, x8, [x29, #-0x10]
    954c: 910023e1     	add	x1, sp, #0x8
    9550: aa1303e2     	mov	x2, x19
    9554: f9400bea     	ldr	x10, [sp, #0x10]
    9558: 8b090108     	add	x8, x8, x9
    955c: 52800409     	mov	w9, #0x20               // =32
    9560: 8b0a0108     	add	x8, x8, x10
    9564: d1008100     	sub	x0, x8, #0x20
    9568: f90007e9     	str	x9, [sp, #0x8]
    956c: 97fffe3f     	bl	0x8e68 <.text+0x7e68>
    9570: 14000003     	b	0x957c <.text+0x857c>
    9574: d2800054     	mov	x20, #0x2               // =2
    9578: f2f00014     	movk	x20, #0x8000, lsl #48
    957c: aa1403e0     	mov	x0, x20
    9580: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    9584: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    9588: 910143ff     	add	sp, sp, #0x50
    958c: d65f03c0     	ret
    9590: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9594: f9000bf5     	str	x21, [sp, #0x10]
    9598: a9024ff4     	stp	x20, x19, [sp, #0x20]
    959c: 910003fd     	mov	x29, sp
    95a0: 52800400     	mov	w0, #0x20               // =32
    95a4: 97ffeb69     	bl	0x4348 <.text+0x3348>
    95a8: b40003a0     	cbz	x0, 0x961c <.text+0x861c>
    95ac: aa0003f3     	mov	x19, x0
    95b0: 97ffffd9     	bl	0x9514 <.text+0x8514>
    95b4: b7f80340     	tbnz	x0, #0x3f, 0x961c <.text+0x861c>
    95b8: 52800400     	mov	w0, #0x20               // =32
    95bc: 97ffeb63     	bl	0x4348 <.text+0x3348>
    95c0: b40002e0     	cbz	x0, 0x961c <.text+0x861c>
    95c4: aa0003f4     	mov	x20, x0
    95c8: aa1303e0     	mov	x0, x19
    95cc: aa1403e1     	mov	x1, x20
    95d0: 52800402     	mov	w2, #0x20               // =32
    95d4: 940001e7     	bl	0x9d70 <.text+0x8d70>
    95d8: aa0003f5     	mov	x21, x0
    95dc: aa1403e0     	mov	x0, x20
    95e0: 52800401     	mov	w1, #0x20               // =32
    95e4: 52801fe2     	mov	w2, #0xff               // =255
    95e8: 940001e8     	bl	0x9d88 <.text+0x8d88>
    95ec: aa1303e0     	mov	x0, x19
    95f0: aa1403e1     	mov	x1, x20
    95f4: 52800402     	mov	w2, #0x20               // =32
    95f8: 940001de     	bl	0x9d70 <.text+0x8d70>
    95fc: f100001f     	cmp	x0, #0x0
    9600: aa1303e0     	mov	x0, x19
    9604: fa401aa4     	ccmp	x21, #0x0, #0x4, ne
    9608: 1a9f07f5     	cset	w21, ne
    960c: 97ffeacd     	bl	0x4140 <.text+0x3140>
    9610: aa1403e0     	mov	x0, x20
    9614: 97ffeacb     	bl	0x4140 <.text+0x3140>
    9618: 14000002     	b	0x9620 <.text+0x8620>
    961c: 2a1f03f5     	mov	w21, wzr
    9620: 2a1503e0     	mov	w0, w21
    9624: f9400bf5     	ldr	x21, [sp, #0x10]
    9628: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    962c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9630: d65f03c0     	ret
    9634: d10183ff     	sub	sp, sp, #0x60
    9638: a9037bfd     	stp	x29, x30, [sp, #0x30]
    963c: f90023f5     	str	x21, [sp, #0x40]
    9640: a9054ff4     	stp	x20, x19, [sp, #0x50]
    9644: 9100c3fd     	add	x29, sp, #0x30
    9648: aa0103f4     	mov	x20, x1
    964c: aa0003f3     	mov	x19, x0
    9650: 910063a0     	add	x0, x29, #0x18
    9654: d10023a1     	sub	x1, x29, #0x8
    9658: d10043a2     	sub	x2, x29, #0x10
    965c: 910063e3     	add	x3, sp, #0x18
    9660: 97fffe8e     	bl	0x9098 <.text+0x8098>
    9664: b7f80320     	tbnz	x0, #0x3f, 0x96c8 <.text+0x86c8>
    9668: 910043e0     	add	x0, sp, #0x10
    966c: 910023e1     	add	x1, sp, #0x8
    9670: 97fffebe     	bl	0x9168 <.text+0x8168>
    9674: b7f802a0     	tbnz	x0, #0x3f, 0x96c8 <.text+0x86c8>
    9678: a94083e8     	ldp	x8, x0, [sp, #0x8]
    967c: 52801fe2     	mov	w2, #0xff               // =255
    9680: d1010101     	sub	x1, x8, #0x40
    9684: 940001c1     	bl	0x9d88 <.text+0x8d88>
    9688: a940a3e9     	ldp	x9, x8, [sp, #0x8]
    968c: aa1403e1     	mov	x1, x20
    9690: 52800402     	mov	w2, #0x20               // =32
    9694: 8b090108     	add	x8, x8, x9
    9698: d1008100     	sub	x0, x8, #0x20
    969c: 97ffe62b     	bl	0x2f48 <.text+0x1f48>
    96a0: f9400fa1     	ldr	x1, [x29, #0x18]
    96a4: aa1303e0     	mov	x0, x19
    96a8: a9408fe2     	ldp	x2, x3, [sp, #0x8]
    96ac: 97fffed6     	bl	0x9204 <.text+0x8204>
    96b0: f9400be8     	ldr	x8, [sp, #0x10]
    96b4: aa0003f5     	mov	x21, x0
    96b8: b40000a8     	cbz	x8, 0x96cc <.text+0x86cc>
    96bc: aa0803e0     	mov	x0, x8
    96c0: 97ffeaa0     	bl	0x4140 <.text+0x3140>
    96c4: 14000002     	b	0x96cc <.text+0x86cc>
    96c8: aa0003f5     	mov	x21, x0
    96cc: aa1503e0     	mov	x0, x21
    96d0: f94023f5     	ldr	x21, [sp, #0x40]
    96d4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    96d8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    96dc: 910183ff     	add	sp, sp, #0x60
    96e0: d65f03c0     	ret
    96e4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    96e8: f9000bf3     	str	x19, [sp, #0x10]
    96ec: 910003fd     	mov	x29, sp
    96f0: aa0003f3     	mov	x19, x0
    96f4: 97ffffa7     	bl	0x9590 <.text+0x8590>
    96f8: 72001c1f     	tst	w0, #0xff
    96fc: 540000a0     	b.eq	0x9710 <.text+0x8710>
    9700: aa1f03e0     	mov	x0, xzr
    9704: f9400bf3     	ldr	x19, [sp, #0x10]
    9708: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    970c: d65f03c0     	ret
    9710: 52800400     	mov	w0, #0x20               // =32
    9714: 97ffff4d     	bl	0x9448 <.text+0x8448>
    9718: b40000c0     	cbz	x0, 0x9730 <.text+0x8730>
    971c: aa0003e1     	mov	x1, x0
    9720: aa1303e0     	mov	x0, x19
    9724: f9400bf3     	ldr	x19, [sp, #0x10]
    9728: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    972c: 17ffffc2     	b	0x9634 <.text+0x8634>
    9730: d2800120     	mov	x0, #0x9                // =9
    9734: f2f00000     	movk	x0, #0x8000, lsl #48
    9738: 17fffff3     	b	0x9704 <.text+0x8704>
    973c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    9740: f9000bf7     	str	x23, [sp, #0x10]
    9744: a90257f6     	stp	x22, x21, [sp, #0x20]
    9748: a9034ff4     	stp	x20, x19, [sp, #0x30]
    974c: 910003fd     	mov	x29, sp
    9750: d2800053     	mov	x19, #0x2               // =2
    9754: f2f00013     	movk	x19, #0x8000, lsl #48
    9758: b4000340     	cbz	x0, 0x97c0 <.text+0x87c0>
    975c: aa0103f5     	mov	x21, x1
    9760: b4000301     	cbz	x1, 0x97c0 <.text+0x87c0>
    9764: aa0203f4     	mov	x20, x2
    9768: b40002c2     	cbz	x2, 0x97c0 <.text+0x87c0>
    976c: f100807f     	cmp	x3, #0x20
    9770: 54000283     	b.lo	0x97c0 <.text+0x87c0>
    9774: aa0003f6     	mov	x22, x0
    9778: 52800400     	mov	w0, #0x20               // =32
    977c: 97ffeaf3     	bl	0x4348 <.text+0x3348>
    9780: b40001e0     	cbz	x0, 0x97bc <.text+0x87bc>
    9784: aa0003f7     	mov	x23, x0
    9788: aa1603e0     	mov	x0, x22
    978c: aa1503e1     	mov	x1, x21
    9790: aa1703e2     	mov	x2, x23
    9794: 97fffef3     	bl	0x9360 <.text+0x8360>
    9798: aa0003f3     	mov	x19, x0
    979c: b7f80120     	tbnz	x0, #0x3f, 0x97c0 <.text+0x87c0>
    97a0: aa1403e0     	mov	x0, x20
    97a4: aa1703e1     	mov	x1, x23
    97a8: 52800402     	mov	w2, #0x20               // =32
    97ac: 97ffe5e7     	bl	0x2f48 <.text+0x1f48>
    97b0: aa1703e0     	mov	x0, x23
    97b4: 97ffea63     	bl	0x4140 <.text+0x3140>
    97b8: 14000002     	b	0x97c0 <.text+0x87c0>
    97bc: 91001e73     	add	x19, x19, #0x7
    97c0: aa1303e0     	mov	x0, x19
    97c4: f9400bf7     	ldr	x23, [sp, #0x10]
    97c8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    97cc: a94257f6     	ldp	x22, x21, [sp, #0x20]
    97d0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    97d4: d65f03c0     	ret
    97d8: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    97dc: a9016ffc     	stp	x28, x27, [sp, #0x10]
    97e0: a90267fa     	stp	x26, x25, [sp, #0x20]
    97e4: a9035ff8     	stp	x24, x23, [sp, #0x30]
    97e8: a90457f6     	stp	x22, x21, [sp, #0x40]
    97ec: a9054ff4     	stp	x20, x19, [sp, #0x50]
    97f0: 910003fd     	mov	x29, sp
    97f4: d280013c     	mov	x28, #0x9               // =9
    97f8: f2f0001c     	movk	x28, #0x8000, lsl #48
    97fc: d1001f94     	sub	x20, x28, #0x7
    9800: b4000580     	cbz	x0, 0x98b0 <.text+0x88b0>
    9804: aa0103fa     	mov	x26, x1
    9808: b4000541     	cbz	x1, 0x98b0 <.text+0x88b0>
    980c: aa0203f6     	mov	x22, x2
    9810: b4000502     	cbz	x2, 0x98b0 <.text+0x88b0>
    9814: aa0403f3     	mov	x19, x4
    9818: b40004c4     	cbz	x4, 0x98b0 <.text+0x88b0>
    981c: f10080bf     	cmp	x5, #0x20
    9820: 54000483     	b.lo	0x98b0 <.text+0x88b0>
    9824: aa0003f8     	mov	x24, x0
    9828: 52800400     	mov	w0, #0x20               // =32
    982c: aa0303f5     	mov	x21, x3
    9830: 97ffeac6     	bl	0x4348 <.text+0x3348>
    9834: b40003c0     	cbz	x0, 0x98ac <.text+0x88ac>
    9838: 910082bb     	add	x27, x21, #0x20
    983c: aa0003f7     	mov	x23, x0
    9840: aa1b03e0     	mov	x0, x27
    9844: 97ffeac1     	bl	0x4348 <.text+0x3348>
    9848: aa1c03f4     	mov	x20, x28
    984c: b4000320     	cbz	x0, 0x98b0 <.text+0x88b0>
    9850: aa1803e1     	mov	x1, x24
    9854: aa1a03e2     	mov	x2, x26
    9858: aa0003f9     	mov	x25, x0
    985c: 97ffe5bb     	bl	0x2f48 <.text+0x1f48>
    9860: 91008320     	add	x0, x25, #0x20
    9864: aa1603e1     	mov	x1, x22
    9868: aa1503e2     	mov	x2, x21
    986c: 97ffe5b7     	bl	0x2f48 <.text+0x1f48>
    9870: aa1903e0     	mov	x0, x25
    9874: aa1b03e1     	mov	x1, x27
    9878: aa1703e2     	mov	x2, x23
    987c: 97fffeb9     	bl	0x9360 <.text+0x8360>
    9880: aa0003f4     	mov	x20, x0
    9884: b7f80160     	tbnz	x0, #0x3f, 0x98b0 <.text+0x88b0>
    9888: aa1303e0     	mov	x0, x19
    988c: aa1703e1     	mov	x1, x23
    9890: 52800402     	mov	w2, #0x20               // =32
    9894: 97ffe5ad     	bl	0x2f48 <.text+0x1f48>
    9898: aa1703e0     	mov	x0, x23
    989c: 97ffea29     	bl	0x4140 <.text+0x3140>
    98a0: aa1903e0     	mov	x0, x25
    98a4: 97ffea27     	bl	0x4140 <.text+0x3140>
    98a8: 14000002     	b	0x98b0 <.text+0x88b0>
    98ac: aa1c03f4     	mov	x20, x28
    98b0: aa1403e0     	mov	x0, x20
    98b4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    98b8: a94457f6     	ldp	x22, x21, [sp, #0x40]
    98bc: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    98c0: a94267fa     	ldp	x26, x25, [sp, #0x20]
    98c4: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    98c8: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    98cc: d65f03c0     	ret
    98d0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    98d4: f9000bf3     	str	x19, [sp, #0x10]
    98d8: 910003fd     	mov	x29, sp
    98dc: 90000033     	adrp	x19, 0xd000
    98e0: f9414668     	ldr	x8, [x19, #0x288]
    98e4: b4000088     	cbz	x8, 0x98f4 <.text+0x88f4>
    98e8: f9400bf3     	ldr	x19, [sp, #0x10]
    98ec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    98f0: d65f03c0     	ret
    98f4: 90000028     	adrp	x8, 0xd000
    98f8: f9401108     	ldr	x8, [x8, #0x20]
    98fc: b4ffff68     	cbz	x8, 0x98e8 <.text+0x88e8>
    9900: f940a108     	ldr	x8, [x8, #0x140]
    9904: b4ffff28     	cbz	x8, 0x98e8 <.text+0x88e8>
    9908: f0000000     	adrp	x0, 0xc000
    990c: 90000022     	adrp	x2, 0xd000
    9910: 9108e000     	add	x0, x0, #0x238
    9914: 910a2042     	add	x2, x2, #0x288
    9918: aa1f03e1     	mov	x1, xzr
    991c: d63f0100     	blr	x8
    9920: b6fffe40     	tbz	x0, #0x3f, 0x98e8 <.text+0x88e8>
    9924: f901467f     	str	xzr, [x19, #0x288]
    9928: 17fffff0     	b	0x98e8 <.text+0x88e8>
    992c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    9930: f9000bf7     	str	x23, [sp, #0x10]
    9934: a90257f6     	stp	x22, x21, [sp, #0x20]
    9938: a9034ff4     	stp	x20, x19, [sp, #0x30]
    993c: 910003fd     	mov	x29, sp
    9940: b0000008     	adrp	x8, 0xa000 <.text+0x9000>
    9944: aa0403f3     	mov	x19, x4
    9948: aa0303f4     	mov	x20, x3
    994c: 2a0003f6     	mov	w22, w0
    9950: 2a0203f5     	mov	w21, w2
    9954: 2a0103f7     	mov	w23, w1
    9958: 39627108     	ldrb	w8, [x8, #0x89c]
    995c: 12001c09     	and	w9, w0, #0xff
    9960: 7100053f     	cmp	w9, #0x1
    9964: 54000041     	b.ne	0x996c <.text+0x896c>
    9968: 370000e8     	tbnz	w8, #0x0, 0x9984 <.text+0x8984>
    996c: 7100093f     	cmp	w9, #0x2
    9970: 54000041     	b.ne	0x9978 <.text+0x8978>
    9974: 37080088     	tbnz	w8, #0x1, 0x9984 <.text+0x8984>
    9978: 71000d3f     	cmp	w9, #0x3
    997c: 54000221     	b.ne	0x99c0 <.text+0x89c0>
    9980: 36100208     	tbz	w8, #0x2, 0x99c0 <.text+0x89c0>
    9984: 97ffffd3     	bl	0x98d0 <.text+0x88d0>
    9988: 90000028     	adrp	x8, 0xd000
    998c: f9414508     	ldr	x8, [x8, #0x288]
    9990: b4000188     	cbz	x8, 0x99c0 <.text+0x89c0>
    9994: f9400105     	ldr	x5, [x8]
    9998: 2a1603e0     	mov	w0, w22
    999c: 2a1703e1     	mov	w1, w23
    99a0: 2a1503e2     	mov	w2, w21
    99a4: aa1403e3     	mov	x3, x20
    99a8: aa1303e4     	mov	x4, x19
    99ac: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    99b0: a94257f6     	ldp	x22, x21, [sp, #0x20]
    99b4: f9400bf7     	ldr	x23, [sp, #0x10]
    99b8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    99bc: d61f00a0     	br	x5
    99c0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    99c4: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    99c8: a94257f6     	ldp	x22, x21, [sp, #0x20]
    99cc: f9400bf7     	ldr	x23, [sp, #0x10]
    99d0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    99d4: d65f03c0     	ret
    99d8: b0000008     	adrp	x8, 0xa000 <.text+0x9000>
    99dc: 39627108     	ldrb	w8, [x8, #0x89c]
    99e0: 12000100     	and	w0, w8, #0x1
    99e4: d65f03c0     	ret
    99e8: b0000008     	adrp	x8, 0xa000 <.text+0x9000>
    99ec: 39627108     	ldrb	w8, [x8, #0x89c]
    99f0: 53010500     	ubfx	w0, w8, #1, #1
    99f4: d65f03c0     	ret
    99f8: b0000008     	adrp	x8, 0xa000 <.text+0x9000>
    99fc: 39627108     	ldrb	w8, [x8, #0x89c]
    9a00: 53020900     	ubfx	w0, w8, #2, #1
    9a04: d65f03c0     	ret
    9a08: f0000003     	adrp	x3, 0xc000
    9a0c: 2a1f03e2     	mov	w2, wzr
    9a10: 91006063     	add	x3, x3, #0x18
    9a14: aa1f03e4     	mov	x4, xzr
    9a18: 17ffffc5     	b	0x992c <.text+0x892c>
    9a1c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9a20: 910003fd     	mov	x29, sp
    9a24: 94000333     	bl	0xa6f0 <.text+0x96f0>
    9a28: b4000140     	cbz	x0, 0x9a50 <.text+0x8a50>
    9a2c: f9400803     	ldr	x3, [x0, #0x10]
    9a30: d0000008     	adrp	x8, 0xb000 <.text+0xa000>
    9a34: 910e0108     	add	x8, x8, #0x380
    9a38: 90000022     	adrp	x2, 0xd000
    9a3c: 910a4042     	add	x2, x2, #0x290
    9a40: aa0803e0     	mov	x0, x8
    9a44: 2a1f03e1     	mov	w1, wzr
    9a48: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9a4c: d61f0060     	br	x3
    9a50: b2410fe0     	mov	x0, #-0x7ffffffffffffff9 // =-9223372036854775801
    9a54: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9a58: d65f03c0     	ret
    9a5c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9a60: f9000bf5     	str	x21, [sp, #0x10]
    9a64: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9a68: 910003fd     	mov	x29, sp
    9a6c: 90000035     	adrp	x21, 0xd000
    9a70: aa0103f3     	mov	x19, x1
    9a74: aa0003f4     	mov	x20, x0
    9a78: f9414aa8     	ldr	x8, [x21, #0x290]
    9a7c: b5000088     	cbnz	x8, 0x9a8c <.text+0x8a8c>
    9a80: 97ffffe7     	bl	0x9a1c <.text+0x8a1c>
    9a84: f9414aa8     	ldr	x8, [x21, #0x290]
    9a88: b4000108     	cbz	x8, 0x9aa8 <.text+0x8aa8>
    9a8c: f9400902     	ldr	x2, [x8, #0x10]
    9a90: aa1403e0     	mov	x0, x20
    9a94: aa1303e1     	mov	x1, x19
    9a98: f9400bf5     	ldr	x21, [sp, #0x10]
    9a9c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9aa0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9aa4: d61f0040     	br	x2
    9aa8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9aac: aa1f03e0     	mov	x0, xzr
    9ab0: f9400bf5     	ldr	x21, [sp, #0x10]
    9ab4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9ab8: d65f03c0     	ret
    9abc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9ac0: f9000bf5     	str	x21, [sp, #0x10]
    9ac4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9ac8: 910003fd     	mov	x29, sp
    9acc: 90000035     	adrp	x21, 0xd000
    9ad0: aa0103f3     	mov	x19, x1
    9ad4: aa0003f4     	mov	x20, x0
    9ad8: f9414aa8     	ldr	x8, [x21, #0x290]
    9adc: b5000088     	cbnz	x8, 0x9aec <.text+0x8aec>
    9ae0: 97ffffcf     	bl	0x9a1c <.text+0x8a1c>
    9ae4: f9414aa8     	ldr	x8, [x21, #0x290]
    9ae8: b4000108     	cbz	x8, 0x9b08 <.text+0x8b08>
    9aec: f9401902     	ldr	x2, [x8, #0x30]
    9af0: aa1403e0     	mov	x0, x20
    9af4: aa1303e1     	mov	x1, x19
    9af8: f9400bf5     	ldr	x21, [sp, #0x10]
    9afc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9b00: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9b04: d61f0040     	br	x2
    9b08: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9b0c: aa1f03e0     	mov	x0, xzr
    9b10: f9400bf5     	ldr	x21, [sp, #0x10]
    9b14: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9b18: d65f03c0     	ret
    9b1c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9b20: f9000bf3     	str	x19, [sp, #0x10]
    9b24: 910003fd     	mov	x29, sp
    9b28: 90000033     	adrp	x19, 0xd000
    9b2c: f9414a68     	ldr	x8, [x19, #0x290]
    9b30: b5000088     	cbnz	x8, 0x9b40 <.text+0x8b40>
    9b34: 97ffffba     	bl	0x9a1c <.text+0x8a1c>
    9b38: f9414a68     	ldr	x8, [x19, #0x290]
    9b3c: b40000a8     	cbz	x8, 0x9b50 <.text+0x8b50>
    9b40: f9401500     	ldr	x0, [x8, #0x28]
    9b44: f9400bf3     	ldr	x19, [sp, #0x10]
    9b48: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9b4c: d61f0000     	br	x0
    9b50: f9400bf3     	ldr	x19, [sp, #0x10]
    9b54: aa1f03e0     	mov	x0, xzr
    9b58: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9b5c: d65f03c0     	ret
    9b60: 52800060     	mov	w0, #0x3                // =3
    9b64: 52800021     	mov	w1, #0x1                // =1
    9b68: 17ffffd5     	b	0x9abc <.text+0x8abc>
    9b6c: d5087620     	dc	ivac, x0
    9b70: d65f03c0     	ret
    9b74: d50b7a20     	dc	cvac, x0
    9b78: d65f03c0     	ret
    9b7c: d50b7e20     	dc	civac, x0
    9b80: d65f03c0     	ret
    9b84: d5033f9f     	dsb	sy
    9b88: d65f03c0     	ret
    9b8c: d5033fdf     	isb
    9b90: d65f03c0     	ret
    9b94: d2800020     	mov	x0, #0x1                // =1
    9b98: d65f03c0     	ret
    9b9c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    9ba0: f9000bf5     	str	x21, [sp, #0x10]
    9ba4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    9ba8: 910003fd     	mov	x29, sp
    9bac: 90000028     	adrp	x8, 0xd000
    9bb0: 394a6109     	ldrb	w9, [x8, #0x298]
    9bb4: 340000a9     	cbz	w9, 0x9bc8 <.text+0x8bc8>
    9bb8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9bbc: f9400bf5     	ldr	x21, [sp, #0x10]
    9bc0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    9bc4: d65f03c0     	ret
    9bc8: 52800029     	mov	w9, #0x1                // =1
    9bcc: 390a6109     	strb	w9, [x8, #0x298]
    9bd0: 94000126     	bl	0xa068 <.text+0x9068>
    9bd4: b4ffff20     	cbz	x0, 0x9bb8 <.text+0x8bb8>
    9bd8: aa0003f3     	mov	x19, x0
    9bdc: 940002e7     	bl	0xa778 <.text+0x9778>
    9be0: b4fffec0     	cbz	x0, 0x9bb8 <.text+0x8bb8>
    9be4: aa0003f4     	mov	x20, x0
    9be8: 9400003e     	bl	0x9ce0 <.text+0x8ce0>
    9bec: b9400288     	ldr	w8, [x20]
    9bf0: 1280000a     	mov	w10, #-0x1              // =-1
    9bf4: b9400a89     	ldr	w9, [x20, #0x8]
    9bf8: 1ac82148     	lsl	w8, w10, w8
    9bfc: 2a2803e8     	mvn	w8, w8
    9c00: 93407d08     	sxtw	x8, w8
    9c04: 8a080008     	and	x8, x0, x8
    9c08: 9ac92515     	lsr	x21, x8, x9
    9c0c: f1002ebf     	cmp	x21, #0xb
    9c10: 54fffd48     	b.hi	0x9bb8 <.text+0x8bb8>
    9c14: 94000036     	bl	0x9cec <.text+0x8cec>
    9c18: 8b150e75     	add	x21, x19, x21, lsl #3
    9c1c: f900a6a0     	str	x0, [x21, #0x148]
    9c20: 94000036     	bl	0x9cf8 <.text+0x8cf8>
    9c24: f900d6a0     	str	x0, [x21, #0x1a8]
    9c28: 94000037     	bl	0x9d04 <.text+0x8d04>
    9c2c: f90106a0     	str	x0, [x21, #0x208]
    9c30: 94000038     	bl	0x9d10 <.text+0x8d10>
    9c34: f90136a0     	str	x0, [x21, #0x268]
    9c38: 94000039     	bl	0x9d1c <.text+0x8d1c>
    9c3c: f90166a0     	str	x0, [x21, #0x2c8]
    9c40: 9400003a     	bl	0x9d28 <.text+0x8d28>
    9c44: f90196a0     	str	x0, [x21, #0x328]
    9c48: 9400003b     	bl	0x9d34 <.text+0x8d34>
    9c4c: f901c6a0     	str	x0, [x21, #0x388]
    9c50: 9400003c     	bl	0x9d40 <.text+0x8d40>
    9c54: f901f6a0     	str	x0, [x21, #0x3e8]
    9c58: 9400003d     	bl	0x9d4c <.text+0x8d4c>
    9c5c: f90226a0     	str	x0, [x21, #0x448]
    9c60: 9400003e     	bl	0x9d58 <.text+0x8d58>
    9c64: f90256a0     	str	x0, [x21, #0x4a8]
    9c68: 9400003f     	bl	0x9d64 <.text+0x8d64>
    9c6c: f90286a0     	str	x0, [x21, #0x508]
    9c70: f9402288     	ldr	x8, [x20, #0x40]
    9c74: b9403108     	ldr	w8, [x8, #0x30]
    9c78: b9056a68     	str	w8, [x19, #0x568]
    9c7c: f9402288     	ldr	x8, [x20, #0x40]
    9c80: b9403508     	ldr	w8, [x8, #0x34]
    9c84: b9056e68     	str	w8, [x19, #0x56c]
    9c88: f9402288     	ldr	x8, [x20, #0x40]
    9c8c: b9400908     	ldr	w8, [x8, #0x8]
    9c90: b9057268     	str	w8, [x19, #0x570]
    9c94: f9402288     	ldr	x8, [x20, #0x40]
    9c98: b9400d08     	ldr	w8, [x8, #0xc]
    9c9c: b9057668     	str	w8, [x19, #0x574]
    9ca0: 17ffffc6     	b	0x9bb8 <.text+0x8bb8>
    9ca4: d10083ff     	sub	sp, sp, #0x20
    9ca8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9cac: 910043fd     	add	x29, sp, #0x10
    9cb0: 97ffffbb     	bl	0x9b9c <.text+0x8b9c>
    9cb4: 940000ed     	bl	0xa068 <.text+0x9068>
    9cb8: b4000060     	cbz	x0, 0x9cc4 <.text+0x8cc4>
    9cbc: 5280bb01     	mov	w1, #0x5d8              // =1496
    9cc0: 94000295     	bl	0xa714 <.text+0x9714>
    9cc4: 97ffe895     	bl	0x3f18 <.text+0x2f18>
    9cc8: f90007ff     	str	xzr, [sp, #0x8]
    9ccc: f94007e8     	ldr	x8, [sp, #0x8]
    9cd0: b4ffffe8     	cbz	x8, 0x9ccc <.text+0x8ccc>
    9cd4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9cd8: 910083ff     	add	sp, sp, #0x20
    9cdc: d65f03c0     	ret
    9ce0: d53800a0     	mrs	x0, MPIDR_EL1
    9ce4: d5033fdf     	isb
    9ce8: d65f03c0     	ret
    9cec: d538c000     	mrs	x0, VBAR_EL1
    9cf0: d5033fdf     	isb
    9cf4: d65f03c0     	ret
    9cf8: d538d080     	mrs	x0, TPIDR_EL1
    9cfc: d5033fdf     	isb
    9d00: d65f03c0     	ret
    9d04: d5382000     	mrs	x0, TTBR0_EL1
    9d08: d5033fdf     	isb
    9d0c: d65f03c0     	ret
    9d10: d5382040     	mrs	x0, TCR_EL1
    9d14: d5033fdf     	isb
    9d18: d65f03c0     	ret
    9d1c: d538a200     	mrs	x0, MAIR_EL1
    9d20: d5033fdf     	isb
    9d24: d65f03c0     	ret
    9d28: d5381040     	mrs	x0, CPACR_EL1
    9d2c: d5033fdf     	isb
    9d30: d65f03c0     	ret
    9d34: d5381000     	mrs	x0, SCTLR_EL1
    9d38: d5033fdf     	isb
    9d3c: d65f03c0     	ret
    9d40: d53be300     	mrs	x0, CNTV_TVAL_EL0
    9d44: d5033fdf     	isb
    9d48: d65f03c0     	ret
    9d4c: d53be340     	mrs	x0, CNTV_CVAL_EL0
    9d50: d5033fdf     	isb
    9d54: d65f03c0     	ret
    9d58: d53be320     	mrs	x0, CNTV_CTL_EL0
    9d5c: d5033fdf     	isb
    9d60: d65f03c0     	ret
    9d64: d538c100     	mrs	x0, ISR_EL1
    9d68: d5033fdf     	isb
    9d6c: d65f03c0     	ret
    9d70: eb01001f     	cmp	x0, x1
    9d74: 54000060     	b.eq	0x9d80 <.text+0x8d80>
    9d78: b4000042     	cbz	x2, 0x9d80 <.text+0x8d80>
    9d7c: 14000011     	b	0x9dc0 <.text+0x8dc0>
    9d80: aa1f03e0     	mov	x0, xzr
    9d84: d65f03c0     	ret
    9d88: b4000041     	cbz	x1, 0x9d90 <.text+0x8d90>
    9d8c: 17ffe480     	b	0x2f8c <.text+0x1f8c>
    9d90: d65f03c0     	ret
		...
    9dc0: ca010008     	eor	x8, x0, x1
    9dc4: f240091f     	tst	x8, #0x7
    9dc8: 540005c1     	b.ne	0x9e80 <.text+0x8e80>
    9dcc: f2400808     	ands	x8, x0, #0x7
    9dd0: 54000361     	b.ne	0x9e3c <.text+0x8e3c>
    9dd4: 91001c4c     	add	x12, x2, #0x7
    9dd8: d343fd8c     	lsr	x12, x12, #3
    9ddc: f8408403     	ldr	x3, [x0], #0x8
    9de0: f8408424     	ldr	x4, [x1], #0x8
    9de4: f100058c     	subs	x12, x12, #0x1
    9de8: ca040066     	eor	x6, x3, x4
    9dec: da9f10c7     	csinv	x7, x6, xzr, ne
    9df0: b4ffff67     	cbz	x7, 0x9ddc <.text+0x8ddc>
    9df4: b500012c     	cbnz	x12, 0x9e18 <.text+0x8e18>
    9df8: f2400842     	ands	x2, x2, #0x7
    9dfc: 540000e0     	b.eq	0x9e18 <.text+0x8e18>
    9e00: d37df042     	lsl	x2, x2, #3
    9e04: 9280000d     	mov	x13, #-0x1              // =-1
    9e08: 9ac221ad     	lsl	x13, x13, x2
    9e0c: 8a2d0063     	bic	x3, x3, x13
    9e10: 8a2d0084     	bic	x4, x4, x13
    9e14: aa0d00c6     	orr	x6, x6, x13
    9e18: dac00cc6     	rev	x6, x6
    9e1c: dac00c63     	rev	x3, x3
    9e20: dac00c84     	rev	x4, x4
    9e24: dac010cb     	clz	x11, x6
    9e28: 9acb2063     	lsl	x3, x3, x11
    9e2c: 9acb2084     	lsl	x4, x4, x11
    9e30: d378fc63     	lsr	x3, x3, #56
    9e34: cb44e060     	sub	x0, x3, x4, lsr #56
    9e38: d65f03c0     	ret
    9e3c: 927df000     	and	x0, x0, #0xfffffffffffffff8
    9e40: 927df021     	and	x1, x1, #0xfffffffffffffff8
    9e44: 8b080042     	add	x2, x2, x8
    9e48: d37df108     	lsl	x8, x8, #3
    9e4c: f8408403     	ldr	x3, [x0], #0x8
    9e50: cb0803e8     	neg	x8, x8
    9e54: f8408424     	ldr	x4, [x1], #0x8
    9e58: 92800009     	mov	x9, #-0x1               // =-1
    9e5c: 9ac82529     	lsr	x9, x9, x8
    9e60: 91001c4c     	add	x12, x2, #0x7
    9e64: aa090063     	orr	x3, x3, x9
    9e68: aa090084     	orr	x4, x4, x9
    9e6c: d343fd8c     	lsr	x12, x12, #3
    9e70: 17ffffdd     	b	0x9de4 <.text+0x8de4>
    9e74: d503201f     	nop
    9e78: d503201f     	nop
    9e7c: d503201f     	nop
    9e80: d1000442     	sub	x2, x2, #0x1
    9e84: 38401403     	ldrb	w3, [x0], #0x1
    9e88: 38401424     	ldrb	w4, [x1], #0x1
    9e8c: f1000442     	subs	x2, x2, #0x1
    9e90: 7a442060     	ccmp	w3, w4, #0x0, hs
    9e94: 54ffff80     	b.eq	0x9e84 <.text+0x8e84>
    9e98: cb040060     	sub	x0, x3, x4
    9e9c: d65f03c0     	ret
    9ea0: b0000009     	adrp	x9, 0xa000 <.text+0x9000>
    9ea4: aa1f03e8     	mov	x8, xzr
    9ea8: aa0003ea     	mov	x10, x0
    9eac: b948a929     	ldr	w9, [x9, #0x8a8]
    9eb0: f940014a     	ldr	x10, [x10]
    9eb4: 34000089     	cbz	w9, 0x9ec4 <.text+0x8ec4>
    9eb8: 91000508     	add	x8, x8, #0x1
    9ebc: eb09011f     	cmp	x8, x9
    9ec0: 54000120     	b.eq	0x9ee4 <.text+0x8ee4>
    9ec4: eb01015f     	cmp	x10, x1
    9ec8: 540000a0     	b.eq	0x9edc <.text+0x8edc>
    9ecc: eb00015f     	cmp	x10, x0
    9ed0: 54ffff01     	b.ne	0x9eb0 <.text+0x8eb0>
    9ed4: 2a1f03e0     	mov	w0, wzr
    9ed8: d65f03c0     	ret
    9edc: 52800020     	mov	w0, #0x1                // =1
    9ee0: d65f03c0     	ret
    9ee4: eb01015f     	cmp	x10, x1
    9ee8: 1a9f17e0     	cset	w0, eq
    9eec: d65f03c0     	ret
    9ef0: a9000000     	stp	x0, x0, [x0]
    9ef4: d65f03c0     	ret
    9ef8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9efc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    9f00: 910003fd     	mov	x29, sp
    9f04: b0000008     	adrp	x8, 0xa000 <.text+0x9000>
    9f08: aa0103f3     	mov	x19, x1
    9f0c: aa0003f4     	mov	x20, x0
    9f10: 39629508     	ldrb	w8, [x8, #0x8a5]
    9f14: 34000088     	cbz	w8, 0x9f24 <.text+0x8f24>
    9f18: aa1403e0     	mov	x0, x20
    9f1c: aa1303e1     	mov	x1, x19
    9f20: 97ffffe0     	bl	0x9ea0 <.text+0x8ea0>
    9f24: f9000274     	str	x20, [x19]
    9f28: aa1403e0     	mov	x0, x20
    9f2c: f9400688     	ldr	x8, [x20, #0x8]
    9f30: f9000668     	str	x8, [x19, #0x8]
    9f34: f9000113     	str	x19, [x8]
    9f38: f9000693     	str	x19, [x20, #0x8]
    9f3c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    9f40: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9f44: d65f03c0     	ret
    9f48: f9400000     	ldr	x0, [x0]
    9f4c: d65f03c0     	ret
    9f50: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9f54: f9000bf3     	str	x19, [sp, #0x10]
    9f58: 910003fd     	mov	x29, sp
    9f5c: b0000008     	adrp	x8, 0xa000 <.text+0x9000>
    9f60: aa0103f3     	mov	x19, x1
    9f64: 39629508     	ldrb	w8, [x8, #0x8a5]
    9f68: 34000068     	cbz	w8, 0x9f74 <.text+0x8f74>
    9f6c: aa1303e1     	mov	x1, x19
    9f70: 97ffffcc     	bl	0x9ea0 <.text+0x8ea0>
    9f74: f9400260     	ldr	x0, [x19]
    9f78: f9400bf3     	ldr	x19, [sp, #0x10]
    9f7c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9f80: d65f03c0     	ret
    9f84: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    9f88: a9014ff4     	stp	x20, x19, [sp, #0x10]
    9f8c: 910003fd     	mov	x29, sp
    9f90: b0000008     	adrp	x8, 0xa000 <.text+0x9000>
    9f94: aa0103f3     	mov	x19, x1
    9f98: aa0003f4     	mov	x20, x0
    9f9c: 39629508     	ldrb	w8, [x8, #0x8a5]
    9fa0: 34000088     	cbz	w8, 0x9fb0 <.text+0x8fb0>
    9fa4: aa1403e0     	mov	x0, x20
    9fa8: aa1303e1     	mov	x1, x19
    9fac: 97ffffbd     	bl	0x9ea0 <.text+0x8ea0>
    9fb0: eb14027f     	cmp	x19, x20
    9fb4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    9fb8: 1a9f17e0     	cset	w0, eq
    9fbc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    9fc0: d65f03c0     	ret
    9fc4: a9402009     	ldp	x9, x8, [x0]
    9fc8: f9000528     	str	x8, [x9, #0x8]
    9fcc: a9402408     	ldp	x8, x9, [x0]
    9fd0: f9000128     	str	x8, [x9]
    9fd4: f9400000     	ldr	x0, [x0]
    9fd8: d65f03c0     	ret
    9fdc: aa0003e8     	mov	x8, x0
    9fe0: 2a0103e0     	mov	w0, w1
    9fe4: 53087c29     	lsr	w9, w1, #8
    9fe8: 39000101     	strb	w1, [x8]
    9fec: 39000509     	strb	w9, [x8, #0x1]
    9ff0: d65f03c0     	ret
    9ff4: d10043ff     	sub	sp, sp, #0x10
    9ff8: 39400008     	ldrb	w8, [x0]
    9ffc: 390013e8     	strb	w8, [sp, #0x4]
    a000: 39400408     	ldrb	w8, [x0, #0x1]
    a004: 390003e8     	strb	w8, [sp]
    a008: 394013e8     	ldrb	w8, [sp, #0x4]
    a00c: 394003e9     	ldrb	w9, [sp]
    a010: 3940080a     	ldrb	w10, [x0, #0x2]
    a014: 33181d28     	bfi	w8, w9, #8, #8
    a018: 390033ea     	strb	w10, [sp, #0xc]
    a01c: 39400c0a     	ldrb	w10, [x0, #0x3]
    a020: 390023ea     	strb	w10, [sp, #0x8]
    a024: 394033ea     	ldrb	w10, [sp, #0xc]
    a028: 394023eb     	ldrb	w11, [sp, #0x8]
    a02c: 33101d48     	bfi	w8, w10, #16, #8
    a030: 33081d68     	bfi	w8, w11, #24, #8
    a034: 2a0803e0     	mov	w0, w8
    a038: 910043ff     	add	sp, sp, #0x10
    a03c: d65f03c0     	ret
    a040: aa0003e8     	mov	x8, x0
    a044: 53087c29     	lsr	w9, w1, #8
    a048: 39000001     	strb	w1, [x0]
    a04c: 2a0103e0     	mov	w0, w1
    a050: 53107c2a     	lsr	w10, w1, #16
    a054: 39000509     	strb	w9, [x8, #0x1]
    a058: 53187c29     	lsr	w9, w1, #24
    a05c: 3900090a     	strb	w10, [x8, #0x2]
    a060: 39000d09     	strb	w9, [x8, #0x3]
    a064: d65f03c0     	ret
    a068: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    a06c: 910003fd     	mov	x29, sp
    a070: d0000000     	adrp	x0, 0xc000
    a074: 9104a000     	add	x0, x0, #0x128
    a078: 97ffec1c     	bl	0x50e8 <.text+0x40e8>
    a07c: b4000040     	cbz	x0, 0xa084 <.text+0x9084>
    a080: f9400c00     	ldr	x0, [x0, #0x18]
    a084: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    a088: d65f03c0     	ret
    a08c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a090: f9000bf3     	str	x19, [sp, #0x10]
    a094: 910003fd     	mov	x29, sp
    a098: f0000013     	adrp	x19, 0xd000
    a09c: f9415268     	ldr	x8, [x19, #0x2a0]
    a0a0: b5000208     	cbnz	x8, 0xa0e0 <.text+0x90e0>
    a0a4: f0000008     	adrp	x8, 0xd000
    a0a8: d0000000     	adrp	x0, 0xc000
    a0ac: f0000002     	adrp	x2, 0xd000
    a0b0: 91092000     	add	x0, x0, #0x248
    a0b4: 910a8042     	add	x2, x2, #0x2a0
    a0b8: aa1f03e1     	mov	x1, xzr
    a0bc: f9401108     	ldr	x8, [x8, #0x20]
    a0c0: f940a108     	ldr	x8, [x8, #0x140]
    a0c4: d63f0100     	blr	x8
    a0c8: b6f800c0     	tbz	x0, #0x3f, 0xa0e0 <.text+0x90e0>
    a0cc: 90000001     	adrp	x1, 0xa000 <.text+0x9000>
    a0d0: aa0003e2     	mov	x2, x0
    a0d4: 911ed021     	add	x1, x1, #0x7b4
    a0d8: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    a0dc: 97ffe4b1     	bl	0x33a0 <.text+0x23a0>
    a0e0: f9415260     	ldr	x0, [x19, #0x2a0]
    a0e4: f9400bf3     	ldr	x19, [sp, #0x10]
    a0e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a0ec: d65f03c0     	ret
    a0f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a0f4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    a0f8: 910003fd     	mov	x29, sp
    a0fc: aa0103f3     	mov	x19, x1
    a100: aa0003f4     	mov	x20, x0
    a104: 97ffffe2     	bl	0xa08c <.text+0x908c>
    a108: f9400802     	ldr	x2, [x0, #0x10]
    a10c: aa1403e0     	mov	x0, x20
    a110: aa1303e1     	mov	x1, x19
    a114: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a118: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a11c: d61f0040     	br	x2
    a120: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    a124: a9014ff4     	stp	x20, x19, [sp, #0x10]
    a128: 910003fd     	mov	x29, sp
    a12c: aa0103f3     	mov	x19, x1
    a130: aa0003f4     	mov	x20, x0
    a134: 97ffffd6     	bl	0xa08c <.text+0x908c>
    a138: f9401002     	ldr	x2, [x0, #0x20]
    a13c: aa1403e0     	mov	x0, x20
    a140: aa1303e1     	mov	x1, x19
    a144: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    a148: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    a14c: d61f0040     	br	x2
    a150: 14000197     	b	0xa7ac <.text+0x97ac>
    a154: d101c3ff     	sub	sp, sp, #0x70
    a158: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a15c: a9026ffc     	stp	x28, x27, [sp, #0x20]
    a160: a90367fa     	stp	x26, x25, [sp, #0x30]
    a164: a9045ff8     	stp	x24, x23, [sp, #0x40]
    a168: a90557f6     	stp	x22, x21, [sp, #0x50]
    a16c: a9064ff4     	stp	x20, x19, [sp, #0x60]
    a170: 910043fd     	add	x29, sp, #0x10
    a174: d280005c     	mov	x28, #0x2               // =2
    a178: 12001cc8     	and	w8, w6, #0xff
    a17c: f2f0001c     	movk	x28, #0x8000, lsl #48
    a180: 7100091f     	cmp	w8, #0x2
    a184: 54000b08     	b.hi	0xa2e4 <.text+0x92e4>
    a188: aa0003f7     	mov	x23, x0
    a18c: b4000ac0     	cbz	x0, 0xa2e4 <.text+0x92e4>
    a190: aa0703f3     	mov	x19, x7
    a194: b4000a87     	cbz	x7, 0xa2e4 <.text+0x92e4>
    a198: 2a0603f4     	mov	w20, w6
    a19c: 2a0503f6     	mov	w22, w5
    a1a0: 2a0403f8     	mov	w24, w4
    a1a4: 2a0303f5     	mov	w21, w3
    a1a8: 2a0203fa     	mov	w26, w2
    a1ac: 52800599     	mov	w25, #0x2c              // =44
    a1b0: b4000141     	cbz	x1, 0xa1d8 <.text+0x91d8>
    a1b4: aa0103e0     	mov	x0, x1
    a1b8: aa0103fb     	mov	x27, x1
    a1bc: 529fffe1     	mov	w1, #0xffff             // =65535
    a1c0: 97ffe50f     	bl	0x35fc <.text+0x25fc>
    a1c4: 9100b019     	add	x25, x0, #0x2c
    a1c8: d350ff28     	lsr	x8, x25, #16
    a1cc: b40000a8     	cbz	x8, 0xa1e0 <.text+0x91e0>
    a1d0: 91000f9c     	add	x28, x28, #0x3
    a1d4: 14000044     	b	0xa2e4 <.text+0x92e4>
    a1d8: a90007ff     	stp	xzr, x1, [sp]
    a1dc: 14000002     	b	0xa1e4 <.text+0x91e4>
    a1e0: a9006fe0     	stp	x0, x27, [sp]
    a1e4: aa1903e0     	mov	x0, x25
    a1e8: 97ffe80a     	bl	0x4210 <.text+0x3210>
    a1ec: f9000260     	str	x0, [x19]
    a1f0: b4000780     	cbz	x0, 0xa2e0 <.text+0x92e0>
    a1f4: aa0003fb     	mov	x27, x0
    a1f8: 52800028     	mov	w8, #0x1                // =1
    a1fc: 39000c1f     	strb	wzr, [x0, #0x3]
    a200: aa1703e1     	mov	x1, x23
    a204: 3900041f     	strb	wzr, [x0, #0x1]
    a208: 91002000     	add	x0, x0, #0x8
    a20c: 39000b68     	strb	w8, [x27, #0x2]
    a210: 3900037f     	strb	wzr, [x27]
    a214: 97ffe347     	bl	0x2f30 <.text+0x1f30>
    a218: aa1b03e8     	mov	x8, x27
    a21c: 53187f49     	lsr	w9, w26, #24
    a220: 53107f4a     	lsr	w10, w26, #16
    a224: 38018d1a     	strb	w26, [x8, #0x18]!
    a228: 38004d15     	strb	w21, [x8, #0x4]!
    a22c: 38004d18     	strb	w24, [x8, #0x4]!
    a230: 38004d16     	strb	w22, [x8, #0x4]!
    a234: 381f7109     	sturb	w9, [x8, #-0x9]
    a238: 53087f49     	lsr	w9, w26, #8
    a23c: 381f610a     	sturb	w10, [x8, #-0xa]
    a240: 53187eaa     	lsr	w10, w21, #24
    a244: 381f5109     	sturb	w9, [x8, #-0xb]
    a248: 53107ea9     	lsr	w9, w21, #16
    a24c: 381fb10a     	sturb	w10, [x8, #-0x5]
    a250: 53087eaa     	lsr	w10, w21, #8
    a254: 381fa109     	sturb	w9, [x8, #-0x6]
    a258: 53187f09     	lsr	w9, w24, #24
    a25c: 381f910a     	sturb	w10, [x8, #-0x7]
    a260: 53107f0a     	lsr	w10, w24, #16
    a264: 381ff109     	sturb	w9, [x8, #-0x1]
    a268: 53087f09     	lsr	w9, w24, #8
    a26c: 381fe10a     	sturb	w10, [x8, #-0x2]
    a270: 53187eca     	lsr	w10, w22, #24
    a274: 381fd109     	sturb	w9, [x8, #-0x3]
    a278: 53107ec9     	lsr	w9, w22, #16
    a27c: 39000d0a     	strb	w10, [x8, #0x3]
    a280: 53087eca     	lsr	w10, w22, #8
    a284: 39000909     	strb	w9, [x8, #0x2]
    a288: 3900050a     	strb	w10, [x8, #0x1]
    a28c: 39001114     	strb	w20, [x8, #0x4]
    a290: 350000f5     	cbnz	w21, 0xa2ac <.text+0x92ac>
    a294: 52801fe8     	mov	w8, #0xff               // =255
    a298: aa1b03e9     	mov	x9, x27
    a29c: 3801cd28     	strb	w8, [x9, #0x1c]!
    a2a0: 39000d28     	strb	w8, [x9, #0x3]
    a2a4: 39000928     	strb	w8, [x9, #0x2]
    a2a8: 39000528     	strb	w8, [x9, #0x1]
    a2ac: d348ff28     	lsr	x8, x25, #8
    a2b0: f94007e1     	ldr	x1, [sp, #0x8]
    a2b4: 39001379     	strb	w25, [x27, #0x4]
    a2b8: 39001768     	strb	w8, [x27, #0x5]
    a2bc: 52800588     	mov	w8, #0x2c               // =44
    a2c0: 39001f7f     	strb	wzr, [x27, #0x7]
    a2c4: 39001b68     	strb	w8, [x27, #0x6]
    a2c8: b4000081     	cbz	x1, 0xa2d8 <.text+0x92d8>
    a2cc: f94003e2     	ldr	x2, [sp]
    a2d0: 9100b360     	add	x0, x27, #0x2c
    a2d4: 97ffe31d     	bl	0x2f48 <.text+0x1f48>
    a2d8: aa1f03fc     	mov	x28, xzr
    a2dc: 14000002     	b	0xa2e4 <.text+0x92e4>
    a2e0: 91001f9c     	add	x28, x28, #0x7
    a2e4: aa1c03e0     	mov	x0, x28
    a2e8: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    a2ec: a94557f6     	ldp	x22, x21, [sp, #0x50]
    a2f0: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    a2f4: a94367fa     	ldp	x26, x25, [sp, #0x30]
    a2f8: a9426ffc     	ldp	x28, x27, [sp, #0x20]
    a2fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a300: 9101c3ff     	add	sp, sp, #0x70
    a304: d65f03c0     	ret
    a308: d10243ff     	sub	sp, sp, #0x90
    a30c: a9037bfd     	stp	x29, x30, [sp, #0x30]
    a310: a9046ffc     	stp	x28, x27, [sp, #0x40]
    a314: a90567fa     	stp	x26, x25, [sp, #0x50]
    a318: a9065ff8     	stp	x24, x23, [sp, #0x60]
    a31c: a90757f6     	stp	x22, x21, [sp, #0x70]
    a320: a9084ff4     	stp	x20, x19, [sp, #0x80]
    a324: 9100c3fd     	add	x29, sp, #0x30
    a328: d2800057     	mov	x23, #0x2               // =2
    a32c: f2f00017     	movk	x23, #0x8000, lsl #48
    a330: b4000e00     	cbz	x0, 0xa4f0 <.text+0x94f0>
    a334: aa0603f5     	mov	x21, x6
    a338: b4000dc6     	cbz	x6, 0xa4f0 <.text+0x94f0>
    a33c: f94033b6     	ldr	x22, [x29, #0x60]
    a340: b4000d96     	cbz	x22, 0xa4f0 <.text+0x94f0>
    a344: f94037ba     	ldr	x26, [x29, #0x68]
    a348: b4000d5a     	cbz	x26, 0xa4f0 <.text+0x94f0>
    a34c: aa0003f3     	mov	x19, x0
    a350: aa0103f8     	mov	x24, x1
    a354: aa1603e0     	mov	x0, x22
    a358: 529fffe1     	mov	w1, #0xffff             // =65535
    a35c: 2a0403fb     	mov	w27, w4
    a360: 2a0303f9     	mov	w25, w3
    a364: 2a0203f4     	mov	w20, w2
    a368: b81ec3a5     	stur	w5, [x29, #-0x14]
    a36c: b81fc3a7     	stur	w7, [x29, #-0x4]
    a370: 97ffe4a3     	bl	0x35fc <.text+0x25fc>
    a374: 9100f81c     	add	x28, x0, #0x3e
    a378: f81f03a0     	stur	x0, [x29, #-0x10]
    a37c: b40000d8     	cbz	x24, 0xa394 <.text+0x9394>
    a380: aa1803e0     	mov	x0, x24
    a384: 529fffe1     	mov	w1, #0xffff             // =65535
    a388: 97ffe49d     	bl	0x35fc <.text+0x25fc>
    a38c: 8b1c001c     	add	x28, x0, x28
    a390: 14000002     	b	0xa398 <.text+0x9398>
    a394: aa1f03e0     	mov	x0, xzr
    a398: d350ff88     	lsr	x8, x28, #16
    a39c: b4000068     	cbz	x8, 0xa3a8 <.text+0x93a8>
    a3a0: 91000ef7     	add	x23, x23, #0x3
    a3a4: 14000053     	b	0xa4f0 <.text+0x94f0>
    a3a8: a900e3e0     	stp	x0, x24, [sp, #0x8]
    a3ac: aa1c03e0     	mov	x0, x28
    a3b0: 97ffe798     	bl	0x4210 <.text+0x3210>
    a3b4: f9000340     	str	x0, [x26]
    a3b8: b40009a0     	cbz	x0, 0xa4ec <.text+0x94ec>
    a3bc: aa0003f8     	mov	x24, x0
    a3c0: 52800028     	mov	w8, #0x1                // =1
    a3c4: 39000c1f     	strb	wzr, [x0, #0x3]
    a3c8: aa1303e1     	mov	x1, x19
    a3cc: 3900041f     	strb	wzr, [x0, #0x1]
    a3d0: 91002000     	add	x0, x0, #0x8
    a3d4: 39000b08     	strb	w8, [x24, #0x2]
    a3d8: 3900031f     	strb	wzr, [x24]
    a3dc: 97ffe2d5     	bl	0x2f30 <.text+0x1f30>
    a3e0: aa1803e8     	mov	x8, x24
    a3e4: b85ec3ab     	ldur	w11, [x29, #-0x14]
    a3e8: 53187e89     	lsr	w9, w20, #24
    a3ec: 53107e8a     	lsr	w10, w20, #16
    a3f0: 38018d14     	strb	w20, [x8, #0x18]!
    a3f4: 38004d19     	strb	w25, [x8, #0x4]!
    a3f8: 38004d1b     	strb	w27, [x8, #0x4]!
    a3fc: 38004d0b     	strb	w11, [x8, #0x4]!
    a400: 381f7109     	sturb	w9, [x8, #-0x9]
    a404: 53087e89     	lsr	w9, w20, #8
    a408: 381f610a     	sturb	w10, [x8, #-0xa]
    a40c: 53187f2a     	lsr	w10, w25, #24
    a410: 381f5109     	sturb	w9, [x8, #-0xb]
    a414: 53107f29     	lsr	w9, w25, #16
    a418: 381fb10a     	sturb	w10, [x8, #-0x5]
    a41c: 53087f2a     	lsr	w10, w25, #8
    a420: 381fa109     	sturb	w9, [x8, #-0x6]
    a424: 53187f69     	lsr	w9, w27, #24
    a428: 381f910a     	sturb	w10, [x8, #-0x7]
    a42c: 53107f6a     	lsr	w10, w27, #16
    a430: 381ff109     	sturb	w9, [x8, #-0x1]
    a434: 53087f69     	lsr	w9, w27, #8
    a438: 381fe10a     	sturb	w10, [x8, #-0x2]
    a43c: 53187d6a     	lsr	w10, w11, #24
    a440: 381fd109     	sturb	w9, [x8, #-0x3]
    a444: 53107d69     	lsr	w9, w11, #16
    a448: 39000d0a     	strb	w10, [x8, #0x3]
    a44c: 53087d6a     	lsr	w10, w11, #8
    a450: 5280006b     	mov	w11, #0x3               // =3
    a454: 39000909     	strb	w9, [x8, #0x2]
    a458: 3900050a     	strb	w10, [x8, #0x1]
    a45c: 3900110b     	strb	w11, [x8, #0x4]
    a460: 350000f9     	cbnz	w25, 0xa47c <.text+0x947c>
    a464: 52801fe8     	mov	w8, #0xff               // =255
    a468: aa1803e9     	mov	x9, x24
    a46c: 3801cd28     	strb	w8, [x9, #0x1c]!
    a470: 39000d28     	strb	w8, [x9, #0x3]
    a474: 39000928     	strb	w8, [x9, #0x2]
    a478: 39000528     	strb	w8, [x9, #0x1]
    a47c: f85f03b4     	ldur	x20, [x29, #-0x10]
    a480: 9100b300     	add	x0, x24, #0x2c
    a484: aa1503e1     	mov	x1, x21
    a488: d348ff88     	lsr	x8, x28, #8
    a48c: 3900131c     	strb	w28, [x24, #0x4]
    a490: 9100fb13     	add	x19, x24, #0x3e
    a494: 39001708     	strb	w8, [x24, #0x5]
    a498: 1100fa89     	add	w9, w20, #0x3e
    a49c: 53087d2a     	lsr	w10, w9, #8
    a4a0: 39001b09     	strb	w9, [x24, #0x6]
    a4a4: 39001f0a     	strb	w10, [x24, #0x7]
    a4a8: 97ffe2a2     	bl	0x2f30 <.text+0x1f30>
    a4ac: b85fc3a8     	ldur	w8, [x29, #-0x4]
    a4b0: aa1303e0     	mov	x0, x19
    a4b4: aa1603e1     	mov	x1, x22
    a4b8: aa1403e2     	mov	x2, x20
    a4bc: 3900f308     	strb	w8, [x24, #0x3c]
    a4c0: 97ffe2a2     	bl	0x2f48 <.text+0x1f48>
    a4c4: f9400be1     	ldr	x1, [sp, #0x10]
    a4c8: b40000e1     	cbz	x1, 0xa4e4 <.text+0x94e4>
    a4cc: 39401f08     	ldrb	w8, [x24, #0x7]
    a4d0: 39401b09     	ldrb	w9, [x24, #0x6]
    a4d4: f94007e2     	ldr	x2, [sp, #0x8]
    a4d8: b3781d09     	bfi	x9, x8, #8, #8
    a4dc: 8b090300     	add	x0, x24, x9
    a4e0: 97ffe29a     	bl	0x2f48 <.text+0x1f48>
    a4e4: aa1f03f7     	mov	x23, xzr
    a4e8: 14000002     	b	0xa4f0 <.text+0x94f0>
    a4ec: 91001ef7     	add	x23, x23, #0x7
    a4f0: aa1703e0     	mov	x0, x23
    a4f4: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    a4f8: a94757f6     	ldp	x22, x21, [sp, #0x70]
    a4fc: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    a500: a94567fa     	ldp	x26, x25, [sp, #0x50]
    a504: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    a508: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    a50c: 910243ff     	add	sp, sp, #0x90
    a510: d65f03c0     	ret
    a514: d100c3ff     	sub	sp, sp, #0x30
    a518: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a51c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a520: 910043fd     	add	x29, sp, #0x10
    a524: b40002c0     	cbz	x0, 0xa57c <.text+0x957c>
    a528: 2a0703e8     	mov	w8, w7
    a52c: aa0003f3     	mov	x19, x0
    a530: 910023e7     	add	x7, sp, #0x8
    a534: aa0103e0     	mov	x0, x1
    a538: aa0203e1     	mov	x1, x2
    a53c: 2a0303e2     	mov	w2, w3
    a540: 2a0403e3     	mov	w3, w4
    a544: 2a0503e4     	mov	w4, w5
    a548: 2a0603e5     	mov	w5, w6
    a54c: 2a0803e6     	mov	w6, w8
    a550: f90007ff     	str	xzr, [sp, #0x8]
    a554: 97ffff00     	bl	0xa154 <.text+0x9154>
    a558: b7f80080     	tbnz	x0, #0x3f, 0xa568 <.text+0x9568>
    a55c: f9400e68     	ldr	x8, [x19, #0x18]
    a560: f94007e0     	ldr	x0, [sp, #0x8]
    a564: d63f0100     	blr	x8
    a568: aa0003f4     	mov	x20, x0
    a56c: f94007e0     	ldr	x0, [sp, #0x8]
    a570: b40000a0     	cbz	x0, 0xa584 <.text+0x9584>
    a574: 97ffe6f3     	bl	0x4140 <.text+0x3140>
    a578: 14000003     	b	0xa584 <.text+0x9584>
    a57c: d2800054     	mov	x20, #0x2               // =2
    a580: f2f00014     	movk	x20, #0x8000, lsl #48
    a584: aa1403e0     	mov	x0, x20
    a588: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a58c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    a590: 9100c3ff     	add	sp, sp, #0x30
    a594: d65f03c0     	ret
    a598: d10103ff     	sub	sp, sp, #0x40
    a59c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    a5a0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    a5a4: 910083fd     	add	x29, sp, #0x20
    a5a8: b4000320     	cbz	x0, 0xa60c <.text+0x960c>
    a5ac: 3940a3a8     	ldrb	w8, [x29, #0x28]
    a5b0: aa0003f3     	mov	x19, x0
    a5b4: f94013a9     	ldr	x9, [x29, #0x20]
    a5b8: d10023aa     	sub	x10, x29, #0x8
    a5bc: aa0103e0     	mov	x0, x1
    a5c0: aa0203e1     	mov	x1, x2
    a5c4: 2a0303e2     	mov	w2, w3
    a5c8: 2a0403e3     	mov	w3, w4
    a5cc: 2a0503e4     	mov	w4, w5
    a5d0: 2a0603e5     	mov	w5, w6
    a5d4: aa0703e6     	mov	x6, x7
    a5d8: 2a0803e7     	mov	w7, w8
    a5dc: f81f83bf     	stur	xzr, [x29, #-0x8]
    a5e0: a9002be9     	stp	x9, x10, [sp]
    a5e4: 97ffff49     	bl	0xa308 <.text+0x9308>
    a5e8: b7f80080     	tbnz	x0, #0x3f, 0xa5f8 <.text+0x95f8>
    a5ec: f9400e68     	ldr	x8, [x19, #0x18]
    a5f0: f85f83a0     	ldur	x0, [x29, #-0x8]
    a5f4: d63f0100     	blr	x8
    a5f8: aa0003f4     	mov	x20, x0
    a5fc: f85f83a0     	ldur	x0, [x29, #-0x8]
    a600: b40000a0     	cbz	x0, 0xa614 <.text+0x9614>
    a604: 97ffe6cf     	bl	0x4140 <.text+0x3140>
    a608: 14000003     	b	0xa614 <.text+0x9614>
    a60c: d2800054     	mov	x20, #0x2               // =2
    a610: f2f00014     	movk	x20, #0x8000, lsl #48
    a614: aa1403e0     	mov	x0, x20
    a618: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    a61c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    a620: 910103ff     	add	sp, sp, #0x40
    a624: d65f03c0     	ret
    a628: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    a62c: d65f03c0     	ret
    a630: b2410be0     	mov	x0, #-0x7ffffffffffffffd // =-9223372036854775805
    a634: d65f03c0     	ret
    a638: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    a63c: a9015ff8     	stp	x24, x23, [sp, #0x10]
    a640: a90257f6     	stp	x22, x21, [sp, #0x20]
    a644: a9034ff4     	stp	x20, x19, [sp, #0x30]
    a648: 910003fd     	mov	x29, sp
    a64c: f0000018     	adrp	x24, 0xd000
    a650: aa0303f3     	mov	x19, x3
    a654: aa0203f4     	mov	x20, x2
    a658: aa0103f5     	mov	x21, x1
    a65c: 2a0003f6     	mov	w22, w0
    a660: f9415708     	ldr	x8, [x24, #0x2a8]
    a664: b5000188     	cbnz	x8, 0xa694 <.text+0x9694>
    a668: f0000008     	adrp	x8, 0xd000
    a66c: d0000000     	adrp	x0, 0xc000
    a670: f0000002     	adrp	x2, 0xd000
    a674: 910be000     	add	x0, x0, #0x2f8
    a678: 910aa042     	add	x2, x2, #0x2a8
    a67c: aa1f03e1     	mov	x1, xzr
    a680: f9401108     	ldr	x8, [x8, #0x20]
    a684: f940a108     	ldr	x8, [x8, #0x140]
    a688: d63f0100     	blr	x8
    a68c: b7f801a0     	tbnz	x0, #0x3f, 0xa6c0 <.text+0x96c0>
    a690: f9415708     	ldr	x8, [x24, #0x2a8]
    a694: f9400d05     	ldr	x5, [x8, #0x18]
    a698: 2a1603e1     	mov	w1, w22
    a69c: aa1503e2     	mov	x2, x21
    a6a0: aa1403e3     	mov	x3, x20
    a6a4: aa1303e4     	mov	x4, x19
    a6a8: aa0803e0     	mov	x0, x8
    a6ac: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    a6b0: a94257f6     	ldp	x22, x21, [sp, #0x20]
    a6b4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    a6b8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    a6bc: d61f00a0     	br	x5
    a6c0: aa0003f7     	mov	x23, x0
    a6c4: b0000001     	adrp	x1, 0xb000 <.text+0xa000>
    a6c8: 910e3c21     	add	x1, x1, #0x38f
    a6cc: 52b00000     	mov	w0, #-0x80000000        // =-2147483648
    a6d0: aa1703e2     	mov	x2, x23
    a6d4: 97ffe333     	bl	0x33a0 <.text+0x23a0>
    a6d8: aa1703e0     	mov	x0, x23
    a6dc: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    a6e0: a94257f6     	ldp	x22, x21, [sp, #0x20]
    a6e4: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    a6e8: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    a6ec: d65f03c0     	ret
    a6f0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    a6f4: 910003fd     	mov	x29, sp
    a6f8: d0000000     	adrp	x0, 0xc000
    a6fc: 91046000     	add	x0, x0, #0x118
    a700: 97ffea7a     	bl	0x50e8 <.text+0x40e8>
    a704: b4000040     	cbz	x0, 0xa70c <.text+0x970c>
    a708: f9400c00     	ldr	x0, [x0, #0x18]
    a70c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    a710: d65f03c0     	ret
    a714: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    a718: a90157f6     	stp	x22, x21, [sp, #0x10]
    a71c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    a720: 910003fd     	mov	x29, sp
    a724: aa0103f5     	mov	x21, x1
    a728: aa0003f3     	mov	x19, x0
    a72c: 94000016     	bl	0xa784 <.text+0x9784>
    a730: cb0003e8     	neg	x8, x0
    a734: 8b150276     	add	x22, x19, x21
    a738: 8a130115     	and	x21, x8, x19
    a73c: eb1602bf     	cmp	x21, x22
    a740: 540000e2     	b.hs	0xa75c <.text+0x975c>
    a744: aa0003f4     	mov	x20, x0
    a748: aa1503e0     	mov	x0, x21
    a74c: 97fffd0c     	bl	0x9b7c <.text+0x8b7c>
    a750: 8b1402b5     	add	x21, x21, x20
    a754: eb1602bf     	cmp	x21, x22
    a758: 54ffff83     	b.lo	0xa748 <.text+0x9748>
    a75c: 97fffd0a     	bl	0x9b84 <.text+0x8b84>
    a760: 97fffd0b     	bl	0x9b8c <.text+0x8b8c>
    a764: aa1303e0     	mov	x0, x19
    a768: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    a76c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    a770: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    a774: d65f03c0     	ret
    a778: d0000000     	adrp	x0, 0xc000
    a77c: 913e4000     	add	x0, x0, #0xf90
    a780: d65f03c0     	ret
    a784: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    a788: 910003fd     	mov	x29, sp
    a78c: 94000006     	bl	0xa7a4 <.text+0x97a4>
    a790: 53104c08     	ubfx	w8, w0, #16, #4
    a794: 52800089     	mov	w9, #0x4                // =4
    a798: 1ac82120     	lsl	w0, w9, w8
    a79c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    a7a0: d65f03c0     	ret
    a7a4: d53b0020     	mrs	x0, CTR_EL0
    a7a8: d65f03c0     	ret
    a7ac: d53be000     	mrs	x0, CNTFRQ_EL0
    a7b0: d65f03c0     	ret
    a7b4: 5353410a     	<unknown>
    a7b8: 5f545245     	<unknown>
    a7bc: 5f494645     	<unknown>
    a7c0: 4f525245     	<unknown>
    a7c4: 53282052     	<unknown>
    a7c8: 75746174     	<unknown>
    a7cc: 203d2073     	<unknown>
    a7d0: 0a297225     	bic	w5, w17, w9, lsl #28
    a7d4: 73795300     	<unknown>
    a7d8: 73736150     	<unknown>
    a7dc: 64726f77     	<unknown>
    a7e0: 46454400     	<unknown>
    a7e4: 544c5541     	b.ne	0xa328c
    a7e8: 53410a00     	<unknown>
    a7ec: 54524553     	bc.lo	0xaf094
    a7f0: 5445525f     	bc.nv	0x95238
    a7f4: 5f4e5255     	<unknown>
    a7f8: 4f525245     	<unknown>
    a7fc: 53282052     	<unknown>
    a800: 75746174     	<unknown>
    a804: 203d2073     	<unknown>
    a808: 0a297225     	bic	w5, w17, w9, lsl #28
    a80c: 74754100     	<unknown>
    a810: 6e65476f     	ushl	v15.8h, v27.8h, v5.8h
    a814: 2100632e     	<unknown>
    a818: 55544552     	<unknown>
    a81c: 455f4e52     	uaddwt	z18.h, z18.h, z31.b
    a820: 524f5252     	<unknown>
    a824: 74532820     	cbhi	w0, w19, 0xa528 <.text+0x9528>
    a828: 73757461     	<unknown>
    a82c: 304c0029     	adr	x9, 0xa2831
    a830: 54535f35     	bc.pl	0xb1414
    a834: 454f5f52     	usubwt	z18.h, z26.h, z15.b
    a838: 41425f4d     	<unknown>
    a83c: 4e494744     	<unknown>
    a840: 54535f47     	b.vc	0xb1428
    a844: 4e495f52     	<unknown>
    a848: 52524554     	<unknown>
    a84c: 5f545055     	<unknown>
    a850: 554e454d     	<unknown>
    a854: 35304c00     	cbnz	w0, 0x6b1d4
    a858: 5254535f     	<unknown>
    a85c: 4d454f5f     	<unknown>
    a860: 4441425f     	smlalb	z31.h, z18.b, z1.b
    a864: 474e4947     	<unknown>
    a868: 5254535f     	<unknown>
    a86c: 544e495f     	bc.nv	0xa7194
    a870: 55525245     	<unknown>
    a874: 4d5f5450     	<unknown>
    a878: 5f554e45     	<unknown>
    a87c: 454c4553     	saddwt	z19.h, z10.h, z12.b
    a880: 00005443     	udf	#0x5443
    a884: 01000101     	<unknown>
    a888: 00010001     	<unknown>
    a88c: 00000080     	udf	#0x80
    a890: 00000100     	udf	#0x100
    a894: 0160c011     	<unknown>
    a898: 0160c012     	<unknown>
    a89c: 00000007     	udf	#0x7
    a8a0: 80000400     	<unknown>
    a8a4: 0000002b     	udf	#0x2b
    a8a8: 000f4240     	<unknown>
    a8ac: 000f4240     	<unknown>
    a8b0: 000f4240     	<unknown>
    a8b4: 00000003     	udf	#0x3
    a8b8: 00000001     	udf	#0x1
    a8bc: 00015180     	<unknown>
    a8c0: 0000ffff     	udf	#0xffff
    a8c4: 00000000     	udf	#0x0
    a8c8: 73795300     	<unknown>
    a8cc: 73736150     	<unknown>
    a8d0: 64726f77     	<unknown>
    a8d4: 2e657844     	<unknown>
    a8d8: 52430063     	<unknown>
    a8dc: 73616820     	<unknown>
    a8e0: 64614220     	bfdot	z0.s, z17.h, z1.h[0]
    a8e4: 67695320     	<unknown>
    a8e8: 7574616e     	<unknown>
    a8ec: 53006572     	ubfx	w18, w11, #0, #26
    a8f0: 61507379     	<unknown>
    a8f4: 6f777373     	fcmla	v19.8h, v27.8h, v23.h[1], #270
    a8f8: 70436472     	adr	x18, 0x91587
    a8fc: 746f6f42     	<unknown>
    a900: 65746641     	fnmls	z1.h, p1/m, z18.h, z20.h
    a904: 746f4e72     	<unknown>
    a908: 46796669     	<unknown>
    a90c: 00636e75     	<unknown>
    a910: 74696e49     	<unknown>
    a914: 696c6169     	ldpsw	x9, x24, [x11, #-0xa0]
    a918: 7953657a     	ldrh	w26, [x11, #0x9b2]
    a91c: 73615073     	<unknown>
    a920: 726f7773     	<unknown>
    a924: 69724464     	ldpsw	x4, x17, [x3, #-0x70]
    a928: 00726576     	<unknown>
    a92c: 625c3a71     	<unknown>
    a930: 5f746f6f     	<unknown>
    a934: 67616d69     	<unknown>
    a938: 4f5c7365     	sqdmlsl2	v5.4s, v27.8h, v12.h[1]
    a93c: 4c5c6d65     	<unknown>
    a940: 385c3530     	ldrb	w16, [x9], #-0x3d
    a944: 78303833     	<unknown>
    a948: 6e495c70     	<unknown>
    a94c: 65647973     	fnmls	z19.h, p6/m, z11.h, z4.h
    a950: 5035304c     	adr	x12, 0x74f5a
    a954: 6674616c     	<unknown>
    a958: 506d726f     	adr	x15, 0xe57a6
    a95c: 495c676b     	<unknown>
    a960: 6479736e     	<unknown>
    a964: 646f4d65     	<unknown>
    a968: 50656c75     	adr	x21, 0xd56f6
    a96c: 555c676b     	<unknown>
    a970: 6576696e     	fnmls	z14.h, p2/m, z11.h, z22.h
    a974: 6c617372     	ldnp	d18, d28, [x27, #-0x1f0]
    a978: 6365535c     	<unknown>
    a97c: 74697275     	<unknown>
    a980: 79535c79     	ldrh	w25, [x3, #0x9ae]
    a984: 73615073     	<unknown>
    a988: 726f7773     	<unknown>
    a98c: 65784464     	fnmla	z4.h, p1/m, z3.h, z24.h
    a990: 7379535c     	<unknown>
    a994: 73736150     	<unknown>
    a998: 64726f77     	<unknown>
    a99c: 2e657844     	<unknown>
    a9a0: 68430063     	<unknown>
    a9a4: 706b6365     	adr	x5, 0xe1613
    a9a8: 746e696f     	<unknown>
    a9ac: 67655220     	<unknown>
    a9b0: 65747369     	fnmls	z9.h, p4/m, z27.h, z20.h
    a9b4: 61462072     	<unknown>
    a9b8: 203a6c69     	<unknown>
    a9bc: 28206725     	stnp	w5, w25, [x25, #-0x100]
    a9c0: 0a297225     	bic	w5, w17, w9, lsl #28
    a9c4: 4f324800     	<unknown>
    a9c8: 43736442     	<unknown>
    a9cc: 6f6f4270     	mls	v16.8h, v19.8h, v15.h[2]
    a9d0: 76654474     	<unknown>
    a9d4: 53656369     	<unknown>
    a9d8: 63656c65     	<unknown>
    a9dc: 6c614374     	ldnp	d20, d16, [x27, #-0x1f0]
    a9e0: 6361626c     	<unknown>
    a9e4: 3248006b     	<unknown>
    a9e8: 7364424f     	<unknown>
    a9ec: 65537043     	fcmeq	p3.h, p4/z, z2.h, z19.h
    a9f0: 54707574     	bc.mi	0xeb89c
    a9f4: 43324d50     	<unknown>
    a9f8: 676e6168     	<unknown>
    a9fc: 74655365     	<unknown>
    aa00: 676e6974     	<unknown>
    aa04: 6c6c6143     	ldnp	d3, d24, [x10, #-0x140]
    aa08: 6b636162     	<unknown>
    aa0c: 00430000     	<unknown>
    aa10: 00650068     	<unknown>
    aa14: 006b0063     	<unknown>
    aa18: 00640041     	<unknown>
    aa1c: 0069006d     	<unknown>
    aa20: 0050006e     	<unknown>
    aa24: 00730061     	<unknown>
    aa28: 00770073     	<unknown>
    aa2c: 0072006f     	<unknown>
    aa30: 00000064     	udf	#0x64
    aa34: 00790053     	<unknown>
    aa38: 00740073     	<unknown>
    aa3c: 006d0065     	<unknown>
    aa40: 00730055     	<unknown>
    aa44: 00720065     	<unknown>
    aa48: 00770050     	<unknown>
    aa4c: 00530000     	<unknown>
    aa50: 00730079     	<unknown>
    aa54: 00650074     	<unknown>
    aa58: 0053006d     	<unknown>
    aa5c: 00700075     	<unknown>
    aa60: 00720065     	<unknown>
    aa64: 00690076     	<unknown>
    aa68: 006f0073     	<unknown>
    aa6c: 00500072     	<unknown>
    aa70: 00000077     	udf	#0x77
    aa74: 00640041     	<unknown>
    aa78: 0069006d     	<unknown>
    aa7c: 0050006e     	<unknown>
    aa80: 00730061     	<unknown>
    aa84: 00770073     	<unknown>
    aa88: 0072006f     	<unknown>
    aa8c: 00000064     	udf	#0x64
    aa90: 45535341     	ssubwb	z1.h, z26.h, z19.b
    aa94: 25205452     	whilelt	{ p2.b, p3.b }, x2, x0
    aa98: 252b2061     	<unknown>
    aa9c: 25203a64     	<unknown>
    aaa0: 20000a61     	<unknown>
    aaa4: 010f0100     	<unknown>
    aaa8: 010f0f00     	<unknown>
    aaac: 0f0f0f0f     	<unknown>
    aab0: 0f0f0f0f     	<unknown>
    aab4: 01010f01     	<unknown>
    aab8: 0f0f0001     	fdot	v1.2s, v0.8b, v15.4b[0]
    aabc: 65685400     	fnmla	z0.h, p5/m, z0.h, z8.h
    aac0: 706e6920     	adr	x0, 0xe77e7
    aac4: 76207475     	<unknown>
    aac8: 61697261     	<unknown>
    aacc: 20656c62     	<unknown>
    aad0: 75677261     	<unknown>
    aad4: 746e656d     	<unknown>
    aad8: 73696c20     	<unknown>
    aadc: 73692074     	<unknown>
    aae0: 6f6f7420     	uqshl	v0.2d, v1.2d, #0x2f
    aae4: 6e6f6c20     	umin	v0.8h, v1.8h, v15.8h
    aae8: 50202e67     	adr	x7, 0x4b0b6
    aaec: 7361656c     	<unknown>
    aaf0: 6f632065     	umlal2	v5.4s, v3.8h, v3.h[2]
    aaf4: 6469736e     	<unknown>
    aaf8: 62207265     	<unknown>
    aafc: 6b616572     	<unknown>
    ab00: 20676e69     	<unknown>
    ab04: 6f746e69     	<unknown>
    ab08: 6c756d20     	ldnp	d0, d27, [x9, #-0xb0]
    ab0c: 6c706974     	ldnp	d20, d26, [x11, #-0x100]
    ab10: 72702065     	<unknown>
    ab14: 20746e69     	<unknown>
    ab18: 6c6c6163     	ldnp	d3, d24, [x11, #-0x140]
    ab1c: 000a2e73     	<unknown>
    ab20: 63637553     	<unknown>
    ab24: 00737365     	<unknown>
    ab28: 6e726157     	rsubhn2	v23.8h, v10.4s, v18.4s
    ab2c: 20676e69     	<unknown>
    ab30: 6e6b6e55     	umin	v21.8h, v18.8h, v11.8h
    ab34: 206e776f     	<unknown>
    ab38: 70796c47     	adr	x7, 0xfd8c3
    ab3c: 61570068     	<unknown>
    ab40: 6e696e72     	umin	v18.8h, v19.8h, v9.8h
    ab44: 65442067     	fmaxnmv	h7, p0, z3.h
    ab48: 6574656c     	fnmls	z12.h, p1/m, z11.h, z20.h
    ab4c: 69614620     	ldpsw	x0, x17, [x17, #-0xf8]
    ab50: 6572756c     	fnmls	z12.h, p5/m, z11.h, z18.h
    ab54: 72615700     	<unknown>
    ab58: 676e696e     	<unknown>
    ab5c: 69725720     	ldpsw	x0, x21, [x25, #-0x70]
    ab60: 46206574     	<unknown>
    ab64: 756c6961     	<unknown>
    ab68: 57006572     	<unknown>
    ab6c: 696e7261     	ldpsw	x1, x28, [x19, #-0x90]
    ab70: 4220676e     	<unknown>
    ab74: 65666675     	fnmls	z21.h, p1/m, z19.h, z6.h
    ab78: 6f542072     	umlal2	v18.4s, v3.8h, v4.h[1]
    ab7c: 6d53206f     	ldp	d15, d8, [x3, #0x130]
    ab80: 006c6c61     	<unknown>
    ab84: 6e726157     	rsubhn2	v23.8h, v10.4s, v18.4s
    ab88: 20676e69     	<unknown>
    ab8c: 6c617453     	ldnp	d19, d29, [x2, #-0x1f0]
    ab90: 61442065     	<unknown>
    ab94: 4c006174     	st1	{ v20.16b, v21.16b, v22.16b }, [x11]
    ab98: 2064616f     	<unknown>
    ab9c: 6f727245     	fcmla	v5.8h, v18.8h, v18.h[1], #270
    aba0: 6e490072     	<unknown>
    aba4: 696c6176     	ldpsw	x22, x24, [x11, #-0xa0]
    aba8: 61502064     	<unknown>
    abac: 656d6172     	fnmls	z18.h, p0/m, z11.h, z13.h
    abb0: 00726574     	<unknown>
    abb4: 75736e55     	<unknown>
    abb8: 726f7070     	<unknown>
    abbc: 00646574     	<unknown>
    abc0: 20646142     	<unknown>
    abc4: 66667542     	<unknown>
    abc8: 53207265     	<unknown>
    abcc: 00657a69     	<unknown>
    abd0: 66667542     	<unknown>
    abd4: 54207265     	b.pl	0x4ba20
    abd8: 53206f6f     	<unknown>
    abdc: 6c6c616d     	ldnp	d13, d24, [x11, #-0x140]
    abe0: 746f4e00     	<unknown>
    abe4: 61655220     	<unknown>
    abe8: 44007964     	<unknown>
    abec: 63697665     	<unknown>
    abf0: 72452065     	<unknown>
    abf4: 00726f72     	<unknown>
    abf8: 74697257     	<unknown>
    abfc: 72502065     	<unknown>
    ac00: 6365746f     	<unknown>
    ac04: 00646574     	<unknown>
    ac08: 2074754f     	<unknown>
    ac0c: 5220666f     	eor	w15, w19, #0x3ffffff
    ac10: 756f7365     	<unknown>
    ac14: 73656372     	<unknown>
    ac18: 6c6f5600     	ldnp	d0, d21, [x16, #-0x110]
    ac1c: 20656d75     	<unknown>
    ac20: 72726f43     	<unknown>
    ac24: 00747075     	<unknown>
    ac28: 756c6f56     	<unknown>
    ac2c: 4620656d     	<unknown>
    ac30: 006c6c75     	<unknown>
    ac34: 4d206f4e     	<unknown>
    ac38: 61696465     	<unknown>
    ac3c: 64654d00     	<unknown>
    ac40: 63206169     	<unknown>
    ac44: 676e6168     	<unknown>
    ac48: 4e006465     	<unknown>
    ac4c: 4620746f     	<unknown>
    ac50: 646e756f     	<unknown>
    ac54: 63634100     	<unknown>
    ac58: 20737365     	<unknown>
    ac5c: 696e6544     	ldpsw	x4, x25, [x10, #-0x90]
    ac60: 4e006465     	<unknown>
    ac64: 6552206f     	fcmeq	p15.h, p0/z, z3.h, #0.0
    ac68: 6e6f7073     	uabdl2	v19.4s, v3.8h, v15.8h
    ac6c: 4e006573     	<unknown>
    ac70: 616d206f     	<unknown>
    ac74: 6e697070     	uabdl2	v16.4s, v3.8h, v9.8h
    ac78: 69540067     	ldpsw	x7, x0, [x3, #0xa0]
    ac7c: 6f20656d     	sqshlu	v13.4s, v11.4s, #0x0
    ac80: 4e007475     	<unknown>
    ac84: 7320746f     	<unknown>
    ac88: 74726174     	<unknown>
    ac8c: 41006465     	<unknown>
    ac90: 6165726c     	<unknown>
    ac94: 73207964     	<unknown>
    ac98: 74726174     	<unknown>
    ac9c: 41006465     	<unknown>
    aca0: 74726f62     	<unknown>
    aca4: 49006465     	<unknown>
    aca8: 20504d43     	<unknown>
    acac: 6f727245     	fcmla	v5.8h, v18.8h, v18.h[1], #270
    acb0: 46540072     	<unknown>
    acb4: 45205054     	<unknown>
    acb8: 726f7272     	<unknown>
    acbc: 6f725000     	fcmla	v0.8h, v0.8h, v18.h[1], #180
    acc0: 6f636f74     	<unknown>
    acc4: 7245206c     	<unknown>
    acc8: 00726f72     	<unknown>
    accc: 6f636e49     	<unknown>
    acd0: 7461706d     	<unknown>
    acd4: 656c6269     	fnmls	z9.h, p0/m, z19.h, z12.h
    acd8: 72655620     	<unknown>
    acdc: 6e6f6973     	<unknown>
    ace0: 63655300     	<unknown>
    ace4: 74697275     	<unknown>
    ace8: 69562079     	ldpsw	x25, x8, [x3, #0xb0]
    acec: 74616c6f     	<unknown>
    acf0: 006e6f69     	<unknown>
    acf4: 20435243     	<unknown>
    acf8: 6f727245     	fcmla	v5.8h, v18.8h, v18.h[1], #270
    acfc: 6e450072     	<unknown>
    ad00: 666f2064     	<unknown>
    ad04: 64654d20     	<unknown>
    ad08: 52006169     	eor	w9, w11, #0x1ffffff
    ad0c: 72657365     	<unknown>
    ad10: 20646576     	<unknown>
    ad14: 29393228     	stp	w8, w12, [x17, #-0x38]
    ad18: 73655200     	<unknown>
    ad1c: 65767265     	fnmls	z5.h, p4/m, z19.h, z22.h
    ad20: 33282064     	<unknown>
    ad24: 45002930     	<unknown>
    ad28: 6f20646e     	sqshlu	v14.4s, v3.4s, #0x0
    ad2c: 69462066     	ldpsw	x6, x8, [x3, #0x30]
    ad30: 4900656c     	<unknown>
    ad34: 6c61766e     	ldnp	d14, d29, [x19, #-0x1f0]
    ad38: 4c206469     	<unknown>
    ad3c: 75676e61     	<unknown>
    ad40: 00656761     	<unknown>
    ad44: 706d6f43     	adr	x3, 0xe5b2f
    ad48: 696d6f72     	ldpsw	x18, x27, [x27, #-0x98]
    ad4c: 20646573     	<unknown>
    ad50: 61746144     	<unknown>
    ad54: 756e3c00     	cblo	w0, #0x1c, 0xacd4 <.text+0x9cd4>
    ad58: 73206c6c     	<unknown>
    ad5c: 6e697274     	uabdl2	v20.4s, v19.8h, v9.8h
    ad60: 3c003e67     	str	b7, [x19, #0x3]!
    ad64: 6c6c756e     	ldnp	d14, d29, [x11, #-0x140]
    ad68: 69756720     	ldpsw	x0, x25, [x25, #-0x58]
    ad6c: 25003e64     	cmplt	p4.b, p7/z, z19.b, #0x0
    ad70: 2d783830     	ldp	s16, s14, [x1, #-0x40]
    ad74: 78343025     	ldseth	w20, w5, [x1]
    ad78: 3430252d     	cbz	w13, 0x6b21c
    ad7c: 30252d78     	adr	x24, 0x55329
    ad80: 30257832     	adr	x18, 0x55c85
    ad84: 252d7832     	<unknown>
    ad88: 25783230     	whilerw	p0.h, x17, x24
    ad8c: 25783230     	whilerw	p0.h, x17, x24
    ad90: 25783230     	whilerw	p0.h, x17, x24
    ad94: 25783230     	whilerw	p0.h, x17, x24
    ad98: 25783230     	whilerw	p0.h, x17, x24
    ad9c: 00783230     	<unknown>
    ada0: 6c756e3c     	ldnp	d28, d27, [x17, #-0xb0]
    ada4: 6974206c     	ldpsw	x12, x8, [x3, #-0x60]
    ada8: 003e656d     	<unknown>
    adac: 64323025     	<unknown>
    adb0: 3230252f     	orr	w15, w9, #0x3ff0000
    adb4: 30252f64     	adr	x4, 0x553a1
    adb8: 20206434     	<unknown>
    adbc: 64323025     	<unknown>
    adc0: 3230253a     	orr	w26, w9, #0x3ff0000
    adc4: 30250064     	adr	x4, 0x54dd1
    adc8: 0d005838     	st1	{ v24.h }[3], [x1]
    adcc: 000d000a     	<unknown>
    add0: 204d5241     	<unknown>
    add4: 68637241     	<unknown>
    add8: 63657469     	<unknown>
    addc: 61727574     	<unknown>
    ade0: 6954206c     	ldpsw	x12, x8, [x3, #0xa0]
    ade4: 2072656d     	<unknown>
    ade8: 6e207369     	uabdl2	v9.8h, v27.16b, v0.16b
    adec: 6120746f     	<unknown>
    adf0: 6c696176     	ldnp	d22, d24, [x11, #-0x170]
    adf4: 656c6261     	fnmls	z1.h, p0/m, z19.h, z12.h
    adf8: 206e6920     	<unknown>
    adfc: 20656874     	<unknown>
    ae00: 2c555043     	ldnp	s3, s20, [x2, #0xa8]
    ae04: 6e656820     	<unknown>
    ae08: 74206563     	<unknown>
    ae0c: 20736968     	<unknown>
    ae10: 7262696c     	<unknown>
    ae14: 20797261     	<unknown>
    ae18: 6e6e6163     	rsubhn2	v3.8h, v11.4s, v14.4s
    ae1c: 6220746f     	<unknown>
    ae20: 73752065     	<unknown>
    ae24: 0a2e6465     	bic	w5, w3, w14, lsl #25
    ae28: 4f324800     	<unknown>
    ae2c: 5f50435f     	<unknown>
    ae30: 4b534154     	sub	w20, w10, w19, lsr #16
    ae34: 524f4e5f     	<unknown>
    ae38: 004c414d     	<unknown>
    ae3c: 5f4f3248     	sqdmlal	s8, h18, v15.h[0]
    ae40: 545f5043     	b.lo	0xc9848
    ae44: 5f4b5341     	<unknown>
    ae48: 50494b53     	adr	x19, 0x9d7b2
    ae4c: 4f324800     	<unknown>
    ae50: 5f50435f     	<unknown>
    ae54: 4b534154     	sub	w20, w10, w19, lsr #16
    ae58: 4450555f     	smlslt	z31.h, z10.b, z16.b
    ae5c: 00455441     	<unknown>
    ae60: 5f4f3248     	sqdmlal	s8, h18, v15.h[0]
    ae64: 545f5043     	b.lo	0xc986c
    ae68: 5f4b5341     	<unknown>
    ae6c: 544f4f42     	b.hs	0xa9854
    ae70: 4941465f     	<unknown>
    ae74: 3248004c     	<unknown>
    ae78: 50435f4f     	adr	x15, 0x91a62
    ae7c: 5341545f     	<unknown>
    ae80: 52425f4b     	<unknown>
    ae84: 5f4b4145     	<unknown>
    ae88: 4d524f4e     	<unknown>
    ae8c: 48004c41     	stxrh	w0, w1, [x2]
    ae90: 435f4f32     	<unknown>
    ae94: 41545f50     	<unknown>
    ae98: 425f4b53     	<unknown>
    ae9c: 4b414552     	sub	w18, w10, w1, lsr #17
    aea0: 494b535f     	<unknown>
    aea4: 32480050     	<unknown>
    aea8: 50435f4f     	adr	x15, 0x91a92
    aeac: 5341545f     	<unknown>
    aeb0: 52425f4b     	<unknown>
    aeb4: 5f4b4145     	<unknown>
    aeb8: 41445055     	<unknown>
    aebc: 48004554     	stxrh	w0, w20, [x10]
    aec0: 435f4f32     	<unknown>
    aec4: 41545f50     	<unknown>
    aec8: 425f4b53     	<unknown>
    aecc: 4b414552     	sub	w18, w10, w1, lsr #17
    aed0: 4f4f425f     	<unknown>
    aed4: 41465f54     	<unknown>
    aed8: 44004c49     	<unknown>
    aedc: 32486578     	<unknown>
    aee0: 4c70434f     	<unknown>
    aee4: 632e6269     	<unknown>
    aee8: 00000000     	udf	#0x0
    aeec: 00000010     	udf	#0x10
    aef0: 00000009     	udf	#0x9
    aef4: 00000008     	udf	#0x8
    aef8: 00000007     	udf	#0x7
    aefc: 00000006     	udf	#0x6
    af00: 89837873     	<unknown>
    af04: 69836968     	stgp	x8, x26, [x11, #0x60]!
    af08: 69828567     	stgp	x7, x1, [x11, #0x50]!
    af0c: 84867967     	ldff1h	{ z7.s }, p6/z, [x11, z6.s, uxtw]
    af10: 006e0045     	<unknown>
    af14: 00620061     	<unknown>
    af18: 0065006c     	<unknown>
    af1c: 00610056     	<unknown>
    af20: 00690072     	<unknown>
    af24: 00620061     	<unknown>
    af28: 0065006c     	<unknown>
    af2c: 006f004c     	<unknown>
    af30: 006b0063     	<unknown>
    af34: 00640065     	<unknown>
    af38: 002d0000     	<unknown>
    af3c: 5460015e     	bc.al	0xcaf64
    af40: 4e326d70     	smin	v16.16b, v11.16b, v18.16b
    af44: 61655276     	<unknown>
    af48: 62755064     	<unknown>
    af4c: 2063696c     	<unknown>
    af50: 6552202d     	fcmeq	p13.h, p0/z, z1.h, #0.0
    af54: 75427663     	<unknown>
    af58: 72656666     	<unknown>
    af5c: 657a6953     	fnmls	z19.h, p2/m, z10.h, z26.h
    af60: 72724520     	<unknown>
    af64: 2d20726f     	stp	s15, s28, [x19, #-0x100]
    af68: 0a782520     	bic	w0, w9, w24, lsr #9
    af6c: 6d705400     	ldp	d0, d21, [x0, #-0x100]
    af70: 52764e32     	<unknown>
    af74: 50646165     	adr	x5, 0xd3ba2
    af78: 696c6275     	ldpsw	x21, x24, [x19, #-0xa0]
    af7c: 202d2063     	<unknown>
    af80: 70736572     	adr	x18, 0xf1c2f
    af84: 65736e6f     	fnmls	z15.h, p3/m, z19.h, z19.h
    af88: 65646f43     	fnmls	z3.h, p3/m, z26.h, z4.h
    af8c: 25202d20     	<unknown>
    af90: 54000a78     	bc.hi	0xb0dc <.text+0xa0dc>
    af94: 4e326d70     	smin	v16.16b, v11.16b, v18.16b
    af98: 61655276     	<unknown>
    af9c: 62755064     	<unknown>
    afa0: 2063696c     	<unknown>
    afa4: 764e202d     	<unknown>
    afa8: 6c627550     	ldnp	d16, d29, [x10, #-0x1e0]
    afac: 732e6369     	<unknown>
    afb0: 20657a69     	<unknown>
    afb4: 6f727265     	fcmla	v5.8h, v19.8h, v18.h[1], #270
    afb8: 78252072     	ldeorh	w5, w18, [x3]
    afbc: 7054000a     	adr	x10, 0xb2fbf
    afc0: 764e326d     	<unknown>
    afc4: 64616552     	<unknown>
    afc8: 6c627550     	ldnp	d16, d29, [x10, #-0x1e0]
    afcc: 2d206369     	stp	s9, s24, [x27, #-0x100]
    afd0: 4e764e20     	sqshl	v0.8h, v17.8h, v22.8h
    afd4: 53656d61     	<unknown>
    afd8: 20657a69     	<unknown>
    afdc: 6f727265     	fcmla	v5.8h, v19.8h, v18.h[1], #270
    afe0: 78252072     	ldeorh	w5, w18, [x3]
    afe4: 7054000a     	adr	x10, 0xb2fe7
    afe8: 764e326d     	<unknown>
    afec: 64616552     	<unknown>
    aff0: 6c627550     	ldnp	d16, d29, [x10, #-0x1e0]
    aff4: 2d206369     	stp	s9, s24, [x27, #-0x100]
    aff8: 63655220     	<unknown>
    affc: 66754276     	<unknown>
    b000: 53726566     	<unknown>
    b004: 20657a69     	<unknown>
    b008: 6f727245     	fcmla	v5.8h, v18.8h, v18.h[1], #270
    b00c: 202d2072     	<unknown>
    b010: 7550764e     	<unknown>
    b014: 63696c62     	<unknown>
    b018: 657a6953     	fnmls	z19.h, p2/m, z10.h, z26.h
    b01c: 0a782520     	bic	w0, w9, w24, lsr #9
    b020: 6d705400     	ldp	d0, d21, [x0, #-0x100]
    b024: 44764e32     	<unknown>
    b028: 6e696665     	umax	v5.8h, v19.8h, v9.8h
    b02c: 61705365     	<unknown>
    b030: 2d206563     	stp	s3, s25, [x11, #-0x100]
    b034: 63655220     	<unknown>
    b038: 66754276     	<unknown>
    b03c: 53726566     	<unknown>
    b040: 20657a69     	<unknown>
    b044: 6f727245     	fcmla	v5.8h, v18.8h, v18.h[1], #270
    b048: 202d2072     	<unknown>
    b04c: 000a7825     	<unknown>
    b050: 326d7054     	<unknown>
    b054: 6544764e     	fcmeq	p14.h, p5/z, z18.h, z4.h
    b058: 656e6966     	fnmls	z6.h, p2/m, z11.h, z14.h
    b05c: 63617053     	<unknown>
    b060: 202d2065     	<unknown>
    b064: 70736572     	adr	x18, 0xf1d13
    b068: 65736e6f     	fnmls	z15.h, p3/m, z19.h, z19.h
    b06c: 65646f43     	fnmls	z3.h, p3/m, z26.h, z4.h
    b070: 25202d20     	<unknown>
    b074: 54000a78     	bc.hi	0xb1c0 <.text+0xa1c0>
    b078: 4e326d70     	smin	v16.16b, v11.16b, v18.16b
    b07c: 646e5576     	<unknown>
    b080: 6e696665     	umax	v5.8h, v19.8h, v9.8h
    b084: 61705365     	<unknown>
    b088: 2d206563     	stp	s3, s25, [x11, #-0x100]
    b08c: 63655220     	<unknown>
    b090: 66754276     	<unknown>
    b094: 53726566     	<unknown>
    b098: 20657a69     	<unknown>
    b09c: 6f727245     	fcmla	v5.8h, v18.8h, v18.h[1], #270
    b0a0: 202d2072     	<unknown>
    b0a4: 000a7825     	<unknown>
    b0a8: 326d7054     	<unknown>
    b0ac: 6e55764e     	<unknown>
    b0b0: 69666564     	ldpsw	x4, x25, [x11, #-0xd0]
    b0b4: 7053656e     	adr	x14, 0xb1d63
    b0b8: 20656361     	<unknown>
    b0bc: 6572202d     	fmls	z13.h, p0/m, z1.h, z18.h
    b0c0: 6e6f7073     	uabdl2	v19.4s, v3.8h, v15.8h
    b0c4: 6f436573     	sqshlu	v19.2d, v11.2d, #0x3
    b0c8: 2d206564     	stp	s4, s25, [x11, #-0x100]
    b0cc: 0a782520     	bic	w0, w9, w24, lsr #9
    b0d0: 6d705400     	ldp	d0, d21, [x0, #-0x100]
    b0d4: 52764e32     	<unknown>
    b0d8: 20646165     	<unknown>
    b0dc: 6552202d     	fcmeq	p13.h, p0/z, z1.h, #0.0
    b0e0: 75427663     	<unknown>
    b0e4: 72656666     	<unknown>
    b0e8: 657a6953     	fnmls	z19.h, p2/m, z10.h, z26.h
    b0ec: 72724520     	<unknown>
    b0f0: 2d20726f     	stp	s15, s28, [x19, #-0x100]
    b0f4: 0a782520     	bic	w0, w9, w24, lsr #9
    b0f8: 6d705400     	ldp	d0, d21, [x0, #-0x100]
    b0fc: 52764e32     	<unknown>
    b100: 20646165     	<unknown>
    b104: 6572202d     	fmls	z13.h, p0/m, z1.h, z18.h
    b108: 6e6f7073     	uabdl2	v19.4s, v3.8h, v15.8h
    b10c: 6f436573     	sqshlu	v19.2d, v11.2d, #0x3
    b110: 2d206564     	stp	s4, s25, [x11, #-0x100]
    b114: 0a782520     	bic	w0, w9, w24, lsr #9
    b118: 6d705400     	ldp	d0, d21, [x0, #-0x100]
    b11c: 52764e32     	<unknown>
    b120: 20646165     	<unknown>
    b124: 754f202d     	cbhi	w13, #0x1e, 0xad28 <.text+0x9d28>
    b128: 74614474     	<unknown>
    b12c: 733e2d61     	<unknown>
    b130: 20657a69     	<unknown>
    b134: 6f727265     	fcmla	v5.8h, v19.8h, v18.h[1], #270
    b138: 78252072     	ldeorh	w5, w18, [x3]
    b13c: 7054000a     	adr	x10, 0xb313f
    b140: 764e326d     	<unknown>
    b144: 74697257     	<unknown>
    b148: 202d2065     	<unknown>
    b14c: 76636552     	<unknown>
    b150: 66667542     	<unknown>
    b154: 69537265     	ldpsw	x5, x28, [x19, #0x98]
    b158: 4520657a     	<unknown>
    b15c: 726f7272     	<unknown>
    b160: 25202d20     	<unknown>
    b164: 54000a78     	bc.hi	0xb2b0 <.text+0xa2b0>
    b168: 4e326d70     	smin	v16.16b, v11.16b, v18.16b
    b16c: 69725776     	ldpsw	x22, x21, [x27, #-0x70]
    b170: 2d206574     	stp	s20, s25, [x11, #-0x100]
    b174: 73657220     	<unknown>
    b178: 736e6f70     	<unknown>
    b17c: 646f4365     	bfdot	z5.s, z27.h, z7.h[1]
    b180: 202d2065     	<unknown>
    b184: 000a7825     	<unknown>
    b188: 326d7054     	<unknown>
    b18c: 6552764e     	fcmeq	p14.h, p5/z, z18.h, z18.h
    b190: 6f4c6461     	sqshlu	v1.2d, v3.2d, #0xc
    b194: 2d206b63     	stp	s3, s26, [x27, #-0x100]
    b198: 63655220     	<unknown>
    b19c: 66754276     	<unknown>
    b1a0: 53726566     	<unknown>
    b1a4: 20657a69     	<unknown>
    b1a8: 6f727245     	fcmla	v5.8h, v18.8h, v18.h[1], #270
    b1ac: 202d2072     	<unknown>
    b1b0: 000a7825     	<unknown>
    b1b4: 326d7054     	<unknown>
    b1b8: 6552764e     	fcmeq	p14.h, p5/z, z18.h, z18.h
    b1bc: 6f4c6461     	sqshlu	v1.2d, v3.2d, #0xc
    b1c0: 2d206b63     	stp	s3, s26, [x27, #-0x100]
    b1c4: 73657220     	<unknown>
    b1c8: 736e6f70     	<unknown>
    b1cc: 646f4365     	bfdot	z5.s, z27.h, z7.h[1]
    b1d0: 202d2065     	<unknown>
    b1d4: 000a7825     	<unknown>
    b1d8: 326d7054     	<unknown>
    b1dc: 7257764e     	<unknown>
    b1e0: 4c657469     	<unknown>
    b1e4: 206b636f     	<unknown>
    b1e8: 6552202d     	fcmeq	p13.h, p0/z, z1.h, #0.0
    b1ec: 75427663     	<unknown>
    b1f0: 72656666     	<unknown>
    b1f4: 657a6953     	fnmls	z19.h, p2/m, z10.h, z26.h
    b1f8: 72724520     	<unknown>
    b1fc: 2d20726f     	stp	s15, s28, [x19, #-0x100]
    b200: 0a782520     	bic	w0, w9, w24, lsr #9
    b204: 6d705400     	ldp	d0, d21, [x0, #-0x100]
    b208: 57764e32     	<unknown>
    b20c: 65746972     	fnmls	z18.h, p2/m, z11.h, z20.h
    b210: 6b636f4c     	<unknown>
    b214: 72202d20     	ands	w0, w9, #0xfff
    b218: 6f707365     	fcmla	v5.8h, v27.8h, v16.h[1], #270
    b21c: 4365736e     	<unknown>
    b220: 2065646f     	<unknown>
    b224: 7825202d     	ldeorh	w5, w13, [x1]
    b228: 7054000a     	adr	x10, 0xb322b
    b22c: 764e326d     	<unknown>
    b230: 626f6c47     	<unknown>
    b234: 72576c61     	<unknown>
    b238: 4c657469     	<unknown>
    b23c: 206b636f     	<unknown>
    b240: 6552202d     	fcmeq	p13.h, p0/z, z1.h, #0.0
    b244: 75427663     	<unknown>
    b248: 72656666     	<unknown>
    b24c: 657a6953     	fnmls	z19.h, p2/m, z10.h, z26.h
    b250: 72724520     	<unknown>
    b254: 2d20726f     	stp	s15, s28, [x19, #-0x100]
    b258: 0a782520     	bic	w0, w9, w24, lsr #9
    b25c: 6d705400     	ldp	d0, d21, [x0, #-0x100]
    b260: 47764e32     	<unknown>
    b264: 61626f6c     	<unknown>
    b268: 6972576c     	ldpsw	x12, x21, [x27, #-0x70]
    b26c: 6f4c6574     	sqshlu	v20.2d, v11.2d, #0xc
    b270: 2d206b63     	stp	s3, s26, [x27, #-0x100]
    b274: 73657220     	<unknown>
    b278: 736e6f70     	<unknown>
    b27c: 646f4365     	bfdot	z5.s, z27.h, z7.h[1]
    b280: 202d2065     	<unknown>
    b284: 000a7825     	<unknown>
    b288: df000004     	<unknown>
    b28c: 45552d78     	<unknown>
    b290: 00004946     	udf	#0x4946
    b294: 006c0050     	<unknown>
    b298: 00740061     	<unknown>
    b29c: 006f0066     	<unknown>
    b2a0: 006d0072     	<unknown>
    b2a4: 0061004c     	<unknown>
    b2a8: 0067006e     	<unknown>
    b2ac: 00500000     	<unknown>
    b2b0: 00500077     	<unknown>
    b2b4: 00250053     	<unknown>
    b2b8: 00340030     	<unknown>
    b2bc: 00000078     	udf	#0x78
    b2c0: 00770050     	<unknown>
    b2c4: 00550050     	<unknown>
    b2c8: 00300025     	<unknown>
    b2cc: 00780034     	<unknown>
    b2d0: 00500000     	<unknown>
    b2d4: 00500077     	<unknown>
    b2d8: 00480053     	<unknown>
    b2dc: 00730069     	<unknown>
    b2e0: 006f0074     	<unknown>
    b2e4: 00790072     	<unknown>
    b2e8: 00500000     	<unknown>
    b2ec: 00500077     	<unknown>
    b2f0: 00480055     	<unknown>
    b2f4: 00730069     	<unknown>
    b2f8: 006f0074     	<unknown>
    b2fc: 00790072     	<unknown>
    b300: 00500000     	<unknown>
    b304: 00500077     	<unknown>
    b308: 00540053     	<unknown>
    b30c: 00500000     	<unknown>
    b310: 00500077     	<unknown>
    b314: 00540055     	<unknown>
    b318: 00500000     	<unknown>
    b31c: 00480077     	<unknown>
    b320: 00640064     	<unknown>
    b324: 00530050     	<unknown>
    b328: 00000054     	udf	#0x54
    b32c: 00770050     	<unknown>
    b330: 00640048     	<unknown>
    b334: 00500064     	<unknown>
    b338: 00540055     	<unknown>
    b33c: 00200000     	<unknown>
    b340: 00640025     	<unknown>
    b344: 00250020     	<unknown>
    b348: 00000073     	udf	#0x73
    b34c: 00610064     	<unknown>
    b350: 00730079     	<unknown>
    b354: 000a0000     	<unknown>
		...
    b360: 0000b30e     	udf	#0xb30e
    b364: 00000000     	udf	#0x0
    b368: 0000b302     	udf	#0xb302
    b36c: 00000000     	udf	#0x0
    b370: 0000b32c     	udf	#0xb32c
    b374: 00000000     	udf	#0x0
    b378: 0000b31a     	udf	#0xb31a
    b37c: 00000000     	udf	#0x0
    b380: 69726553     	ldpsw	x19, x25, [x10, #-0x70]
    b384: 6f506c61     	<unknown>
    b388: 4c207472     	<unknown>
    b38c: 20006269     	<unknown>
    b390: 61636f4c     	<unknown>
    b394: 54206574     	bc.mi	0x4c040
    b398: 50204d50     	adr	x16, 0x4bd42
    b39c: 6f746f72     	<unknown>
    b3a0: 206c6f63     	<unknown>
    b3a4: 6c696166     	ldnp	d6, d24, [x11, #-0x170]
    b3a8: 202c6465     	<unknown>
    b3ac: 74617453     	<unknown>
    b3b0: 3d207375     	str	b21, [x27, #0x81c]
    b3b4: 30282020     	adr	x0, 0x5b7b9
    b3b8: 29782578     	ldp	w24, w9, [x11, #-0x40]
    b3bc: 00000a0d     	udf	#0xa0d
		...
