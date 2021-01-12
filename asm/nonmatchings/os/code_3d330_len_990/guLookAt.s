.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel guLookAt
/* 3D930 80062530 27BDFF48 */  addiu     $sp, $sp, -0xb8
/* 3D934 80062534 AFB20068 */  sw        $s2, 0x68($sp)
/* 3D938 80062538 8FB200D4 */  lw        $s2, 0xd4($sp)
/* 3D93C 8006253C AFB10064 */  sw        $s1, 0x64($sp)
/* 3D940 80062540 8FB100D8 */  lw        $s1, 0xd8($sp)
/* 3D944 80062544 AFB00060 */  sw        $s0, 0x60($sp)
/* 3D948 80062548 8FB000DC */  lw        $s0, 0xdc($sp)
/* 3D94C 8006254C F7B40088 */  sdc1      $f20, 0x88($sp)
/* 3D950 80062550 C7B400C8 */  lwc1      $f20, 0xc8($sp)
/* 3D954 80062554 F7B60090 */  sdc1      $f22, 0x90($sp)
/* 3D958 80062558 C7B600CC */  lwc1      $f22, 0xcc($sp)
/* 3D95C 8006255C F7B80098 */  sdc1      $f24, 0x98($sp)
/* 3D960 80062560 C7B800D0 */  lwc1      $f24, 0xd0($sp)
/* 3D964 80062564 AFB3006C */  sw        $s3, 0x6c($sp)
/* 3D968 80062568 00A09821 */  addu      $s3, $a1, $zero
/* 3D96C 8006256C AFB40070 */  sw        $s4, 0x70($sp)
/* 3D970 80062570 00C0A021 */  addu      $s4, $a2, $zero
/* 3D974 80062574 AFB50074 */  sw        $s5, 0x74($sp)
/* 3D978 80062578 00E0A821 */  addu      $s5, $a3, $zero
/* 3D97C 8006257C AFBE0080 */  sw        $fp, 0x80($sp)
/* 3D980 80062580 27BE0010 */  addiu     $fp, $sp, 0x10
/* 3D984 80062584 AFA40054 */  sw        $a0, 0x54($sp)
/* 3D988 80062588 AFBF0084 */  sw        $ra, 0x84($sp)
/* 3D98C 8006258C AFB7007C */  sw        $s7, 0x7c($sp)
/* 3D990 80062590 AFB60078 */  sw        $s6, 0x78($sp)
/* 3D994 80062594 F7BE00B0 */  sdc1      $f30, 0xb0($sp)
/* 3D998 80062598 F7BC00A8 */  sdc1      $f28, 0xa8($sp)
/* 3D99C 8006259C F7BA00A0 */  sdc1      $f26, 0xa0($sp)
/* 3D9A0 800625A0 0C019D28 */  jal       guMtxIdentF
/* 3D9A4 800625A4 03C02021 */   addu     $a0, $fp, $zero
/* 3D9A8 800625A8 44937000 */  mtc1      $s3, $f14
/* 3D9AC 800625AC 00000000 */  nop
/* 3D9B0 800625B0 460EA681 */  sub.s     $f26, $f20, $f14
/* 3D9B4 800625B4 461AD002 */  mul.s     $f0, $f26, $f26
/* 3D9B8 800625B8 44949000 */  mtc1      $s4, $f18
/* 3D9BC 800625BC 00000000 */  nop
/* 3D9C0 800625C0 4612B701 */  sub.s     $f28, $f22, $f18
/* 3D9C4 800625C4 461CE102 */  mul.s     $f4, $f28, $f28
/* 3D9C8 800625C8 44957000 */  mtc1      $s5, $f14
/* 3D9CC 800625CC 00000000 */  nop
/* 3D9D0 800625D0 460EC781 */  sub.s     $f30, $f24, $f14
/* 3D9D4 800625D4 461EF082 */  mul.s     $f2, $f30, $f30
/* 3D9D8 800625D8 46040000 */  add.s     $f0, $f0, $f4
/* 3D9DC 800625DC 46020300 */  add.s     $f12, $f0, $f2
/* 3D9E0 800625E0 46006084 */  sqrt.s    $f2, $f12
/* 3D9E4 800625E4 46021032 */  c.eq.s    $f2, $f2
/* 3D9E8 800625E8 00000000 */  nop
/* 3D9EC 800625EC 45010004 */  bc1t      .L80062600
/* 3D9F0 800625F0 00000000 */   nop
/* 3D9F4 800625F4 0C0187BC */  jal       sqrtf
/* 3D9F8 800625F8 00000000 */   nop
/* 3D9FC 800625FC 46000086 */  mov.s     $f2, $f0
.L80062600:
/* 3DA00 80062600 3C01800A */  lui       $at, %hi(D_80099B60)
/* 3DA04 80062604 D4209B60 */  ldc1      $f0, %lo(D_80099B60)($at)
/* 3DA08 80062608 460010A1 */  cvt.d.s   $f2, $f2
/* 3DA0C 8006260C 46220003 */  div.d     $f0, $f0, $f2
/* 3DA10 80062610 46200420 */  cvt.s.d   $f16, $f0
/* 3DA14 80062614 4610D682 */  mul.s     $f26, $f26, $f16
/* 3DA18 80062618 00000000 */  nop
/* 3DA1C 8006261C 4610F782 */  mul.s     $f30, $f30, $f16
/* 3DA20 80062620 00000000 */  nop
/* 3DA24 80062624 4610E702 */  mul.s     $f28, $f28, $f16
/* 3DA28 80062628 44919000 */  mtc1      $s1, $f18
/* 3DA2C 8006262C 00000000 */  nop
/* 3DA30 80062630 461E9102 */  mul.s     $f4, $f18, $f30
/* 3DA34 80062634 44907000 */  mtc1      $s0, $f14
/* 3DA38 80062638 00000000 */  nop
/* 3DA3C 8006263C 461C7002 */  mul.s     $f0, $f14, $f28
/* 3DA40 80062640 00000000 */  nop
/* 3DA44 80062644 461A7202 */  mul.s     $f8, $f14, $f26
/* 3DA48 80062648 44929000 */  mtc1      $s2, $f18
/* 3DA4C 8006264C 00000000 */  nop
/* 3DA50 80062650 461E9082 */  mul.s     $f2, $f18, $f30
/* 3DA54 80062654 00000000 */  nop
/* 3DA58 80062658 461C9282 */  mul.s     $f10, $f18, $f28
/* 3DA5C 8006265C 44917000 */  mtc1      $s1, $f14
/* 3DA60 80062660 00000000 */  nop
/* 3DA64 80062664 461A7182 */  mul.s     $f6, $f14, $f26
/* 3DA68 80062668 46002601 */  sub.s     $f24, $f4, $f0
/* 3DA6C 8006266C 4618C002 */  mul.s     $f0, $f24, $f24
/* 3DA70 80062670 46024581 */  sub.s     $f22, $f8, $f2
/* 3DA74 80062674 4616B102 */  mul.s     $f4, $f22, $f22
/* 3DA78 80062678 46065501 */  sub.s     $f20, $f10, $f6
/* 3DA7C 8006267C 4614A082 */  mul.s     $f2, $f20, $f20
/* 3DA80 80062680 46040000 */  add.s     $f0, $f0, $f4
/* 3DA84 80062684 46020300 */  add.s     $f12, $f0, $f2
/* 3DA88 80062688 46006004 */  sqrt.s    $f0, $f12
/* 3DA8C 8006268C 46000032 */  c.eq.s    $f0, $f0
/* 3DA90 80062690 00000000 */  nop
/* 3DA94 80062694 45010003 */  bc1t      .L800626A4
/* 3DA98 80062698 00000000 */   nop
/* 3DA9C 8006269C 0C0187BC */  jal       sqrtf
/* 3DAA0 800626A0 00000000 */   nop
.L800626A4:
/* 3DAA4 800626A4 3C01800A */  lui       $at, %hi(D_80099B68)
/* 3DAA8 800626A8 8C369B68 */  lw        $s6, %lo(D_80099B68)($at)
/* 3DAAC 800626AC 8C379B6C */  lw        $s7, -0x6494($at)
/* 3DAB0 800626B0 44979000 */  mtc1      $s7, $f18
/* 3DAB4 800626B4 44969800 */  mtc1      $s6, $f19
/* 3DAB8 800626B8 46000021 */  cvt.d.s   $f0, $f0
/* 3DABC 800626BC 46209003 */  div.d     $f0, $f18, $f0
/* 3DAC0 800626C0 46200420 */  cvt.s.d   $f16, $f0
/* 3DAC4 800626C4 4610C602 */  mul.s     $f24, $f24, $f16
/* 3DAC8 800626C8 00000000 */  nop
/* 3DACC 800626CC 4610A502 */  mul.s     $f20, $f20, $f16
/* 3DAD0 800626D0 00000000 */  nop
/* 3DAD4 800626D4 4610B582 */  mul.s     $f22, $f22, $f16
/* 3DAD8 800626D8 00000000 */  nop
/* 3DADC 800626DC 4614E102 */  mul.s     $f4, $f28, $f20
/* 3DAE0 800626E0 00000000 */  nop
/* 3DAE4 800626E4 4616F002 */  mul.s     $f0, $f30, $f22
/* 3DAE8 800626E8 00000000 */  nop
/* 3DAEC 800626EC 4618F202 */  mul.s     $f8, $f30, $f24
/* 3DAF0 800626F0 00000000 */  nop
/* 3DAF4 800626F4 4614D082 */  mul.s     $f2, $f26, $f20
/* 3DAF8 800626F8 00000000 */  nop
/* 3DAFC 800626FC 4616D282 */  mul.s     $f10, $f26, $f22
/* 3DB00 80062700 00000000 */  nop
/* 3DB04 80062704 4618E182 */  mul.s     $f6, $f28, $f24
/* 3DB08 80062708 46002101 */  sub.s     $f4, $f4, $f0
/* 3DB0C 8006270C 46042002 */  mul.s     $f0, $f4, $f4
/* 3DB10 80062710 46024201 */  sub.s     $f8, $f8, $f2
/* 3DB14 80062714 44122000 */  mfc1      $s2, $f4
/* 3DB18 80062718 46084102 */  mul.s     $f4, $f8, $f8
/* 3DB1C 8006271C 46065281 */  sub.s     $f10, $f10, $f6
/* 3DB20 80062720 460A5082 */  mul.s     $f2, $f10, $f10
/* 3DB24 80062724 46040000 */  add.s     $f0, $f0, $f4
/* 3DB28 80062728 46020300 */  add.s     $f12, $f0, $f2
/* 3DB2C 8006272C 46006004 */  sqrt.s    $f0, $f12
/* 3DB30 80062730 46000032 */  c.eq.s    $f0, $f0
/* 3DB34 80062734 44114000 */  mfc1      $s1, $f8
/* 3DB38 80062738 44105000 */  mfc1      $s0, $f10
/* 3DB3C 8006273C 45010003 */  bc1t      .L8006274C
/* 3DB40 80062740 00000000 */   nop
/* 3DB44 80062744 0C0187BC */  jal       sqrtf
/* 3DB48 80062748 00000000 */   nop
.L8006274C:
/* 3DB4C 8006274C 44977000 */  mtc1      $s7, $f14
/* 3DB50 80062750 44967800 */  mtc1      $s6, $f15
/* 3DB54 80062754 46000021 */  cvt.d.s   $f0, $f0
/* 3DB58 80062758 46207003 */  div.d     $f0, $f14, $f0
/* 3DB5C 8006275C 44929000 */  mtc1      $s2, $f18
/* 3DB60 80062760 46200420 */  cvt.s.d   $f16, $f0
/* 3DB64 80062764 46109482 */  mul.s     $f18, $f18, $f16
/* 3DB68 80062768 44917000 */  mtc1      $s1, $f14
/* 3DB6C 8006276C 00000000 */  nop
/* 3DB70 80062770 46107382 */  mul.s     $f14, $f14, $f16
/* 3DB74 80062774 44129000 */  mfc1      $s2, $f18
/* 3DB78 80062778 44939000 */  mtc1      $s3, $f18
/* 3DB7C 8006277C 00000000 */  nop
/* 3DB80 80062780 46189082 */  mul.s     $f2, $f18, $f24
/* 3DB84 80062784 44117000 */  mfc1      $s1, $f14
/* 3DB88 80062788 44947000 */  mtc1      $s4, $f14
/* 3DB8C 8006278C 00000000 */  nop
/* 3DB90 80062790 46167182 */  mul.s     $f6, $f14, $f22
/* 3DB94 80062794 44959000 */  mtc1      $s5, $f18
/* 3DB98 80062798 00000000 */  nop
/* 3DB9C 8006279C 46149202 */  mul.s     $f8, $f18, $f20
/* 3DBA0 800627A0 44937000 */  mtc1      $s3, $f14
/* 3DBA4 800627A4 44929000 */  mtc1      $s2, $f18
/* 3DBA8 800627A8 00000000 */  nop
/* 3DBAC 800627AC 46127102 */  mul.s     $f4, $f14, $f18
/* 3DBB0 800627B0 44947000 */  mtc1      $s4, $f14
/* 3DBB4 800627B4 44919000 */  mtc1      $s1, $f18
/* 3DBB8 800627B8 00000000 */  nop
/* 3DBBC 800627BC 46127282 */  mul.s     $f10, $f14, $f18
/* 3DBC0 800627C0 44937000 */  mtc1      $s3, $f14
/* 3DBC4 800627C4 00000000 */  nop
/* 3DBC8 800627C8 461A7002 */  mul.s     $f0, $f14, $f26
/* 3DBCC 800627CC 44949000 */  mtc1      $s4, $f18
/* 3DBD0 800627D0 00000000 */  nop
/* 3DBD4 800627D4 461C9302 */  mul.s     $f12, $f18, $f28
/* 3DBD8 800627D8 44957000 */  mtc1      $s5, $f14
/* 3DBDC 800627DC 8FA50054 */  lw        $a1, 0x54($sp)
/* 3DBE0 800627E0 461E7382 */  mul.s     $f14, $f14, $f30
/* 3DBE4 800627E4 46061080 */  add.s     $f2, $f2, $f6
/* 3DBE8 800627E8 3C013F80 */  lui       $at, 0x3f80
/* 3DBEC 800627EC 44813000 */  mtc1      $at, $f6
/* 3DBF0 800627F0 03C02021 */  addu      $a0, $fp, $zero
/* 3DBF4 800627F4 E7B80010 */  swc1      $f24, 0x10($sp)
/* 3DBF8 800627F8 44909000 */  mtc1      $s0, $f18
/* 3DBFC 800627FC 460C0000 */  add.s     $f0, $f0, $f12
/* 3DC00 80062800 E7B60020 */  swc1      $f22, 0x20($sp)
/* 3DC04 80062804 46109482 */  mul.s     $f18, $f18, $f16
/* 3DC08 80062808 E7B40030 */  swc1      $f20, 0x30($sp)
/* 3DC0C 8006280C 460E0000 */  add.s     $f0, $f0, $f14
/* 3DC10 80062810 E7BA0018 */  swc1      $f26, 0x18($sp)
/* 3DC14 80062814 E7BC0028 */  swc1      $f28, 0x28($sp)
/* 3DC18 80062818 44957000 */  mtc1      $s5, $f14
/* 3DC1C 8006281C 46081080 */  add.s     $f2, $f2, $f8
/* 3DC20 80062820 46127202 */  mul.s     $f8, $f14, $f18
/* 3DC24 80062824 E7BE0038 */  swc1      $f30, 0x38($sp)
/* 3DC28 80062828 AFA0001C */  sw        $zero, 0x1c($sp)
/* 3DC2C 8006282C 460A2100 */  add.s     $f4, $f4, $f10
/* 3DC30 80062830 AFA0002C */  sw        $zero, 0x2c($sp)
/* 3DC34 80062834 AFA0003C */  sw        $zero, 0x3c($sp)
/* 3DC38 80062838 AFB20014 */  sw        $s2, 0x14($sp)
/* 3DC3C 8006283C 46082100 */  add.s     $f4, $f4, $f8
/* 3DC40 80062840 AFB10024 */  sw        $s1, 0x24($sp)
/* 3DC44 80062844 E7A6004C */  swc1      $f6, 0x4c($sp)
/* 3DC48 80062848 44109000 */  mfc1      $s0, $f18
/* 3DC4C 8006284C 46001087 */  neg.s     $f2, $f2
/* 3DC50 80062850 AFB00034 */  sw        $s0, 0x34($sp)
/* 3DC54 80062854 46000007 */  neg.s     $f0, $f0
/* 3DC58 80062858 E7A20040 */  swc1      $f2, 0x40($sp)
/* 3DC5C 8006285C 46002107 */  neg.s     $f4, $f4
/* 3DC60 80062860 E7A00048 */  swc1      $f0, 0x48($sp)
/* 3DC64 80062864 0C019D40 */  jal       guMtxF2L
/* 3DC68 80062868 E7A40044 */   swc1     $f4, 0x44($sp)
/* 3DC6C 8006286C 8FBF0084 */  lw        $ra, 0x84($sp)
/* 3DC70 80062870 8FBE0080 */  lw        $fp, 0x80($sp)
/* 3DC74 80062874 8FB7007C */  lw        $s7, 0x7c($sp)
/* 3DC78 80062878 8FB60078 */  lw        $s6, 0x78($sp)
/* 3DC7C 8006287C 8FB50074 */  lw        $s5, 0x74($sp)
/* 3DC80 80062880 8FB40070 */  lw        $s4, 0x70($sp)
/* 3DC84 80062884 8FB3006C */  lw        $s3, 0x6c($sp)
/* 3DC88 80062888 8FB20068 */  lw        $s2, 0x68($sp)
/* 3DC8C 8006288C 8FB10064 */  lw        $s1, 0x64($sp)
/* 3DC90 80062890 8FB00060 */  lw        $s0, 0x60($sp)
/* 3DC94 80062894 D7BE00B0 */  ldc1      $f30, 0xb0($sp)
/* 3DC98 80062898 D7BC00A8 */  ldc1      $f28, 0xa8($sp)
/* 3DC9C 8006289C D7BA00A0 */  ldc1      $f26, 0xa0($sp)
/* 3DCA0 800628A0 D7B80098 */  ldc1      $f24, 0x98($sp)
/* 3DCA4 800628A4 D7B60090 */  ldc1      $f22, 0x90($sp)
/* 3DCA8 800628A8 D7B40088 */  ldc1      $f20, 0x88($sp)
/* 3DCAC 800628AC 03E00008 */  jr        $ra
/* 3DCB0 800628B0 27BD00B8 */   addiu    $sp, $sp, 0xb8
/* 3DCB4 800628B4 00000000 */  nop
/* 3DCB8 800628B8 00000000 */  nop
/* 3DCBC 800628BC 00000000 */  nop
