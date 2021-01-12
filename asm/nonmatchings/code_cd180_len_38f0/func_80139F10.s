.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80139F10
/* D0610 80139F10 0080782D */  daddu     $t7, $a0, $zero
/* D0614 80139F14 8FA3001C */  lw        $v1, 0x1c($sp)
/* D0618 80139F18 44864000 */  mtc1      $a2, $f8
/* D061C 80139F1C 04600014 */  bltz      $v1, .L80139F70
/* D0620 80139F20 00A0C02D */   daddu    $t8, $a1, $zero
/* D0624 80139F24 3C04800B */  lui       $a0, %hi(gCameras)
/* D0628 80139F28 24841D80 */  addiu     $a0, $a0, %lo(gCameras)
/* D062C 80139F2C 00031080 */  sll       $v0, $v1, 2
/* D0630 80139F30 00431021 */  addu      $v0, $v0, $v1
/* D0634 80139F34 00021080 */  sll       $v0, $v0, 2
/* D0638 80139F38 00431023 */  subu      $v0, $v0, $v1
/* D063C 80139F3C 000218C0 */  sll       $v1, $v0, 3
/* D0640 80139F40 00431021 */  addu      $v0, $v0, $v1
/* D0644 80139F44 000210C0 */  sll       $v0, $v0, 3
/* D0648 80139F48 00441021 */  addu      $v0, $v0, $a0
/* D064C 80139F4C 8449000E */  lh        $t1, 0xe($v0)
/* D0650 80139F50 844A0010 */  lh        $t2, 0x10($v0)
/* D0654 80139F54 8443000A */  lh        $v1, 0xa($v0)
/* D0658 80139F58 8442000C */  lh        $v0, 0xc($v0)
/* D065C 80139F5C 01235821 */  addu      $t3, $t1, $v1
/* D0660 80139F60 01426021 */  addu      $t4, $t2, $v0
/* D0664 80139F64 0120682D */  daddu     $t5, $t1, $zero
/* D0668 80139F68 0804E7E2 */  j         .L80139F88
/* D066C 80139F6C 0140702D */   daddu    $t6, $t2, $zero
.L80139F70:
/* D0670 80139F70 0000482D */  daddu     $t1, $zero, $zero
/* D0674 80139F74 0120502D */  daddu     $t2, $t1, $zero
/* D0678 80139F78 240B0140 */  addiu     $t3, $zero, 0x140
/* D067C 80139F7C 240C00F0 */  addiu     $t4, $zero, 0xf0
/* D0680 80139F80 0120682D */  daddu     $t5, $t1, $zero
/* D0684 80139F84 0120702D */  daddu     $t6, $t1, $zero
.L80139F88:
/* D0688 80139F88 44800000 */  mtc1      $zero, $f0
/* D068C 80139F8C 00000000 */  nop       
/* D0690 80139F90 46004032 */  c.eq.s    $f8, $f0
/* D0694 80139F94 00000000 */  nop       
/* D0698 80139F98 450100F0 */  bc1t      .L8013A35C
/* D069C 80139F9C 3C04ED00 */   lui      $a0, 0xed00
/* D06A0 80139FA0 3C014080 */  lui       $at, 0x4080
/* D06A4 80139FA4 44812000 */  mtc1      $at, $f4
/* D06A8 80139FA8 44891000 */  mtc1      $t1, $f2
/* D06AC 80139FAC 00000000 */  nop       
/* D06B0 80139FB0 468010A0 */  cvt.s.w   $f2, $f2
/* D06B4 80139FB4 46041082 */  mul.s     $f2, $f2, $f4
/* D06B8 80139FB8 00000000 */  nop       
/* D06BC 80139FBC 3C08800A */  lui       $t0, %hi(gMasterGfxPos)
/* D06C0 80139FC0 2508A66C */  addiu     $t0, $t0, %lo(gMasterGfxPos)
/* D06C4 80139FC4 448A0000 */  mtc1      $t2, $f0
/* D06C8 80139FC8 00000000 */  nop       
/* D06CC 80139FCC 46800020 */  cvt.s.w   $f0, $f0
/* D06D0 80139FD0 8D060000 */  lw        $a2, ($t0)
/* D06D4 80139FD4 46040002 */  mul.s     $f0, $f0, $f4
/* D06D8 80139FD8 00000000 */  nop       
/* D06DC 80139FDC 3C01437F */  lui       $at, 0x437f
/* D06E0 80139FE0 44813000 */  mtc1      $at, $f6
/* D06E4 80139FE4 00C0282D */  daddu     $a1, $a2, $zero
/* D06E8 80139FE8 24C60008 */  addiu     $a2, $a2, 8
/* D06EC 80139FEC AD060000 */  sw        $a2, ($t0)
/* D06F0 80139FF0 46064032 */  c.eq.s    $f8, $f6
/* D06F4 80139FF4 4600128D */  trunc.w.s $f10, $f2
/* D06F8 80139FF8 44025000 */  mfc1      $v0, $f10
/* D06FC 80139FFC 00000000 */  nop       
/* D0700 8013A000 30420FFF */  andi      $v0, $v0, 0xfff
/* D0704 8013A004 00021300 */  sll       $v0, $v0, 0xc
/* D0708 8013A008 4600028D */  trunc.w.s $f10, $f0
/* D070C 8013A00C 44035000 */  mfc1      $v1, $f10
/* D0710 8013A010 448B1000 */  mtc1      $t3, $f2
/* D0714 8013A014 00000000 */  nop       
/* D0718 8013A018 468010A0 */  cvt.s.w   $f2, $f2
/* D071C 8013A01C 46041082 */  mul.s     $f2, $f2, $f4
/* D0720 8013A020 00000000 */  nop       
/* D0724 8013A024 30630FFF */  andi      $v1, $v1, 0xfff
/* D0728 8013A028 00641825 */  or        $v1, $v1, $a0
/* D072C 8013A02C 00431025 */  or        $v0, $v0, $v1
/* D0730 8013A030 448C0000 */  mtc1      $t4, $f0
/* D0734 8013A034 00000000 */  nop       
/* D0738 8013A038 46800020 */  cvt.s.w   $f0, $f0
/* D073C 8013A03C 46040002 */  mul.s     $f0, $f0, $f4
/* D0740 8013A040 00000000 */  nop       
/* D0744 8013A044 ACA20000 */  sw        $v0, ($a1)
/* D0748 8013A048 4600128D */  trunc.w.s $f10, $f2
/* D074C 8013A04C 44025000 */  mfc1      $v0, $f10
/* D0750 8013A050 00000000 */  nop       
/* D0754 8013A054 30420FFF */  andi      $v0, $v0, 0xfff
/* D0758 8013A058 00021300 */  sll       $v0, $v0, 0xc
/* D075C 8013A05C 4600028D */  trunc.w.s $f10, $f0
/* D0760 8013A060 44035000 */  mfc1      $v1, $f10
/* D0764 8013A064 00000000 */  nop       
/* D0768 8013A068 30630FFF */  andi      $v1, $v1, 0xfff
/* D076C 8013A06C 00431025 */  or        $v0, $v0, $v1
/* D0770 8013A070 45000009 */  bc1f      .L8013A098
/* D0774 8013A074 ACA20004 */   sw       $v0, 4($a1)
/* D0778 8013A078 3C04FCFF */  lui       $a0, 0xfcff
/* D077C 8013A07C 3484FFFF */  ori       $a0, $a0, 0xffff
/* D0780 8013A080 3C03FFFD */  lui       $v1, 0xfffd
/* D0784 8013A084 3463FCFE */  ori       $v1, $v1, 0xfcfe
/* D0788 8013A088 24C20008 */  addiu     $v0, $a2, 8
/* D078C 8013A08C AD020000 */  sw        $v0, ($t0)
/* D0790 8013A090 ACC40000 */  sw        $a0, ($a2)
/* D0794 8013A094 ACC30004 */  sw        $v1, 4($a2)
.L8013A098:
/* D0798 8013A098 3C02FA00 */  lui       $v0, 0xfa00
/* D079C 8013A09C 00071E00 */  sll       $v1, $a3, 0x18
/* D07A0 8013A0A0 46083001 */  sub.s     $f0, $f6, $f8
/* D07A4 8013A0A4 8D050000 */  lw        $a1, ($t0)
/* D07A8 8013A0A8 3C014128 */  lui       $at, 0x4128
/* D07AC 8013A0AC 44811000 */  mtc1      $at, $f2
/* D07B0 8013A0B0 3C014200 */  lui       $at, 0x4200
/* D07B4 8013A0B4 44812000 */  mtc1      $at, $f4
/* D07B8 8013A0B8 00A0202D */  daddu     $a0, $a1, $zero
/* D07BC 8013A0BC 24A50008 */  addiu     $a1, $a1, 8
/* D07C0 8013A0C0 AD050000 */  sw        $a1, ($t0)
/* D07C4 8013A0C4 AC820000 */  sw        $v0, ($a0)
/* D07C8 8013A0C8 8FA20010 */  lw        $v0, 0x10($sp)
/* D07CC 8013A0CC 24A7000C */  addiu     $a3, $a1, 0xc
/* D07D0 8013A0D0 304200FF */  andi      $v0, $v0, 0xff
/* D07D4 8013A0D4 00021400 */  sll       $v0, $v0, 0x10
/* D07D8 8013A0D8 00621825 */  or        $v1, $v1, $v0
/* D07DC 8013A0DC 8FA20014 */  lw        $v0, 0x14($sp)
/* D07E0 8013A0E0 46020002 */  mul.s     $f0, $f0, $f2
/* D07E4 8013A0E4 00000000 */  nop       
/* D07E8 8013A0E8 304200FF */  andi      $v0, $v0, 0xff
/* D07EC 8013A0EC 00021200 */  sll       $v0, $v0, 8
/* D07F0 8013A0F0 00621825 */  or        $v1, $v1, $v0
/* D07F4 8013A0F4 8FA20018 */  lw        $v0, 0x18($sp)
/* D07F8 8013A0F8 3C018015 */  lui       $at, %hi(D_80150FA0)
/* D07FC 8013A0FC D4220FA0 */  ldc1      $f2, %lo(D_80150FA0)($at)
/* D0800 8013A100 304200FF */  andi      $v0, $v0, 0xff
/* D0804 8013A104 00621825 */  or        $v1, $v1, $v0
/* D0808 8013A108 24A20008 */  addiu     $v0, $a1, 8
/* D080C 8013A10C AC830004 */  sw        $v1, 4($a0)
/* D0810 8013A110 AD020000 */  sw        $v0, ($t0)
/* D0814 8013A114 000B1080 */  sll       $v0, $t3, 2
/* D0818 8013A118 30420FFF */  andi      $v0, $v0, 0xfff
/* D081C 8013A11C 00021300 */  sll       $v0, $v0, 0xc
/* D0820 8013A120 000C2080 */  sll       $a0, $t4, 2
/* D0824 8013A124 30840FFF */  andi      $a0, $a0, 0xfff
/* D0828 8013A128 3C03E400 */  lui       $v1, 0xe400
/* D082C 8013A12C 00832025 */  or        $a0, $a0, $v1
/* D0830 8013A130 00441025 */  or        $v0, $v0, $a0
/* D0834 8013A134 ACA20000 */  sw        $v0, ($a1)
/* D0838 8013A138 00091080 */  sll       $v0, $t1, 2
/* D083C 8013A13C 30420FFF */  andi      $v0, $v0, 0xfff
/* D0840 8013A140 00021300 */  sll       $v0, $v0, 0xc
/* D0844 8013A144 000A1880 */  sll       $v1, $t2, 2
/* D0848 8013A148 30630FFF */  andi      $v1, $v1, 0xfff
/* D084C 8013A14C 46060003 */  div.s     $f0, $f0, $f6
/* D0850 8013A150 46000021 */  cvt.d.s   $f0, $f0
/* D0854 8013A154 46220000 */  add.d     $f0, $f0, $f2
/* D0858 8013A158 01AF2023 */  subu      $a0, $t5, $t7
/* D085C 8013A15C 44841000 */  mtc1      $a0, $f2
/* D0860 8013A160 00000000 */  nop       
/* D0864 8013A164 468010A0 */  cvt.s.w   $f2, $f2
/* D0868 8013A168 46041082 */  mul.s     $f2, $f2, $f4
/* D086C 8013A16C 00000000 */  nop       
/* D0870 8013A170 00431025 */  or        $v0, $v0, $v1
/* D0874 8013A174 ACA20004 */  sw        $v0, 4($a1)
/* D0878 8013A178 46200120 */  cvt.s.d   $f4, $f0
/* D087C 8013A17C 3C014180 */  lui       $at, 0x4180
/* D0880 8013A180 44810000 */  mtc1      $at, $f0
/* D0884 8013A184 46041083 */  div.s     $f2, $f2, $f4
/* D0888 8013A188 46001080 */  add.s     $f2, $f2, $f0
/* D088C 8013A18C 3C014480 */  lui       $at, 0x4480
/* D0890 8013A190 44810000 */  mtc1      $at, $f0
/* D0894 8013A194 24A20010 */  addiu     $v0, $a1, 0x10
/* D0898 8013A198 AD020000 */  sw        $v0, ($t0)
/* D089C 8013A19C 46001000 */  add.s     $f0, $f2, $f0
/* D08A0 8013A1A0 3C014F00 */  lui       $at, 0x4f00
/* D08A4 8013A1A4 44811000 */  mtc1      $at, $f2
/* D08A8 8013A1A8 3C02E100 */  lui       $v0, 0xe100
/* D08AC 8013A1AC 4600103E */  c.le.s    $f2, $f0
/* D08B0 8013A1B0 00000000 */  nop       
/* D08B4 8013A1B4 45010005 */  bc1t      .L8013A1CC
/* D08B8 8013A1B8 ACA20008 */   sw       $v0, 8($a1)
/* D08BC 8013A1BC 4600028D */  trunc.w.s $f10, $f0
/* D08C0 8013A1C0 44035000 */  mfc1      $v1, $f10
/* D08C4 8013A1C4 0804E87A */  j         .L8013A1E8
/* D08C8 8013A1C8 01D81023 */   subu     $v0, $t6, $t8
.L8013A1CC:
/* D08CC 8013A1CC 46020001 */  sub.s     $f0, $f0, $f2
/* D08D0 8013A1D0 3C028000 */  lui       $v0, 0x8000
/* D08D4 8013A1D4 4600028D */  trunc.w.s $f10, $f0
/* D08D8 8013A1D8 44035000 */  mfc1      $v1, $f10
/* D08DC 8013A1DC 00000000 */  nop       
/* D08E0 8013A1E0 00621825 */  or        $v1, $v1, $v0
/* D08E4 8013A1E4 01D81023 */  subu      $v0, $t6, $t8
.L8013A1E8:
/* D08E8 8013A1E8 3C014200 */  lui       $at, 0x4200
/* D08EC 8013A1EC 44811000 */  mtc1      $at, $f2
/* D08F0 8013A1F0 44820000 */  mtc1      $v0, $f0
/* D08F4 8013A1F4 00000000 */  nop       
/* D08F8 8013A1F8 46800020 */  cvt.s.w   $f0, $f0
/* D08FC 8013A1FC 46020002 */  mul.s     $f0, $f0, $f2
/* D0900 8013A200 00000000 */  nop       
/* D0904 8013A204 3C014180 */  lui       $at, 0x4180
/* D0908 8013A208 44811000 */  mtc1      $at, $f2
/* D090C 8013A20C 46040003 */  div.s     $f0, $f0, $f4
/* D0910 8013A210 46020000 */  add.s     $f0, $f0, $f2
/* D0914 8013A214 3C014480 */  lui       $at, 0x4480
/* D0918 8013A218 44811000 */  mtc1      $at, $f2
/* D091C 8013A21C 00000000 */  nop       
/* D0920 8013A220 46020000 */  add.s     $f0, $f0, $f2
/* D0924 8013A224 3C014F00 */  lui       $at, 0x4f00
/* D0928 8013A228 44811000 */  mtc1      $at, $f2
/* D092C 8013A22C 00000000 */  nop       
/* D0930 8013A230 4600103E */  c.le.s    $f2, $f0
/* D0934 8013A234 00000000 */  nop       
/* D0938 8013A238 45010005 */  bc1t      .L8013A250
/* D093C 8013A23C 00033400 */   sll      $a2, $v1, 0x10
/* D0940 8013A240 4600028D */  trunc.w.s $f10, $f0
/* D0944 8013A244 44045000 */  mfc1      $a0, $f10
/* D0948 8013A248 0804E89A */  j         .L8013A268
/* D094C 8013A24C 00000000 */   nop      
.L8013A250:
/* D0950 8013A250 46020001 */  sub.s     $f0, $f0, $f2
/* D0954 8013A254 3C028000 */  lui       $v0, 0x8000
/* D0958 8013A258 4600028D */  trunc.w.s $f10, $f0
/* D095C 8013A25C 44045000 */  mfc1      $a0, $f10
/* D0960 8013A260 00000000 */  nop       
/* D0964 8013A264 00822025 */  or        $a0, $a0, $v0
.L8013A268:
/* D0968 8013A268 3C05800A */  lui       $a1, %hi(gMasterGfxPos)
/* D096C 8013A26C 24A5A66C */  addiu     $a1, $a1, %lo(gMasterGfxPos)
/* D0970 8013A270 3082FFFF */  andi      $v0, $a0, 0xffff
/* D0974 8013A274 8CA30000 */  lw        $v1, ($a1)
/* D0978 8013A278 00C21025 */  or        $v0, $a2, $v0
/* D097C 8013A27C ACE20000 */  sw        $v0, ($a3)
/* D0980 8013A280 3C02F100 */  lui       $v0, 0xf100
/* D0984 8013A284 3C014480 */  lui       $at, 0x4480
/* D0988 8013A288 44810000 */  mtc1      $at, $f0
/* D098C 8013A28C 3C014F00 */  lui       $at, 0x4f00
/* D0990 8013A290 44811000 */  mtc1      $at, $f2
/* D0994 8013A294 0060202D */  daddu     $a0, $v1, $zero
/* D0998 8013A298 24630008 */  addiu     $v1, $v1, 8
/* D099C 8013A29C 46040003 */  div.s     $f0, $f0, $f4
/* D09A0 8013A2A0 ACA30000 */  sw        $v1, ($a1)
/* D09A4 8013A2A4 AC820000 */  sw        $v0, ($a0)
/* D09A8 8013A2A8 4600103E */  c.le.s    $f2, $f0
/* D09AC 8013A2AC 00000000 */  nop       
/* D09B0 8013A2B0 45010005 */  bc1t      .L8013A2C8
/* D09B4 8013A2B4 24840004 */   addiu    $a0, $a0, 4
/* D09B8 8013A2B8 4600028D */  trunc.w.s $f10, $f0
/* D09BC 8013A2BC 44035000 */  mfc1      $v1, $f10
/* D09C0 8013A2C0 0804E8B9 */  j         .L8013A2E4
/* D09C4 8013A2C4 00033C00 */   sll      $a3, $v1, 0x10
.L8013A2C8:
/* D09C8 8013A2C8 46020001 */  sub.s     $f0, $f0, $f2
/* D09CC 8013A2CC 3C028000 */  lui       $v0, 0x8000
/* D09D0 8013A2D0 4600028D */  trunc.w.s $f10, $f0
/* D09D4 8013A2D4 44035000 */  mfc1      $v1, $f10
/* D09D8 8013A2D8 00000000 */  nop       
/* D09DC 8013A2DC 00621825 */  or        $v1, $v1, $v0
/* D09E0 8013A2E0 00033C00 */  sll       $a3, $v1, 0x10
.L8013A2E4:
/* D09E4 8013A2E4 3C014480 */  lui       $at, 0x4480
/* D09E8 8013A2E8 44810000 */  mtc1      $at, $f0
/* D09EC 8013A2EC 3C014F00 */  lui       $at, 0x4f00
/* D09F0 8013A2F0 44811000 */  mtc1      $at, $f2
/* D09F4 8013A2F4 46040003 */  div.s     $f0, $f0, $f4
/* D09F8 8013A2F8 4600103E */  c.le.s    $f2, $f0
/* D09FC 8013A2FC 00000000 */  nop       
/* D0A00 8013A300 45030005 */  bc1tl     .L8013A318
/* D0A04 8013A304 46020001 */   sub.s    $f0, $f0, $f2
/* D0A08 8013A308 4600028D */  trunc.w.s $f10, $f0
/* D0A0C 8013A30C 44065000 */  mfc1      $a2, $f10
/* D0A10 8013A310 0804E8CB */  j         .L8013A32C
/* D0A14 8013A314 00000000 */   nop      
.L8013A318:
/* D0A18 8013A318 3C028000 */  lui       $v0, 0x8000
/* D0A1C 8013A31C 4600028D */  trunc.w.s $f10, $f0
/* D0A20 8013A320 44065000 */  mfc1      $a2, $f10
/* D0A24 8013A324 00000000 */  nop       
/* D0A28 8013A328 00C23025 */  or        $a2, $a2, $v0
.L8013A32C:
/* D0A2C 8013A32C 3C05800A */  lui       $a1, %hi(gMasterGfxPos)
/* D0A30 8013A330 24A5A66C */  addiu     $a1, $a1, %lo(gMasterGfxPos)
/* D0A34 8013A334 30C2FFFF */  andi      $v0, $a2, 0xffff
/* D0A38 8013A338 8CA30000 */  lw        $v1, ($a1)
/* D0A3C 8013A33C 00E21025 */  or        $v0, $a3, $v0
/* D0A40 8013A340 AC820000 */  sw        $v0, ($a0)
/* D0A44 8013A344 3C02E700 */  lui       $v0, 0xe700
/* D0A48 8013A348 0060202D */  daddu     $a0, $v1, $zero
/* D0A4C 8013A34C 24630008 */  addiu     $v1, $v1, 8
/* D0A50 8013A350 ACA30000 */  sw        $v1, ($a1)
/* D0A54 8013A354 AC820000 */  sw        $v0, ($a0)
/* D0A58 8013A358 AC800004 */  sw        $zero, 4($a0)
.L8013A35C:
/* D0A5C 8013A35C 03E00008 */  jr        $ra
/* D0A60 8013A360 00000000 */   nop      
/* D0A64 8013A364 00000000 */  nop       
/* D0A68 8013A368 00000000 */  nop       
/* D0A6C 8013A36C 00000000 */  nop       
