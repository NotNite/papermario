.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802B742C
/* E212DC 802B742C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* E212E0 802B7430 3C020204 */  lui       $v0, 0x204
/* E212E4 802B7434 AFB00010 */  sw        $s0, 0x10($sp)
/* E212E8 802B7438 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* E212EC 802B743C 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* E212F0 802B7440 AFBF0014 */  sw        $ra, 0x14($sp)
/* E212F4 802B7444 8E030000 */  lw        $v1, ($s0)
/* E212F8 802B7448 34420020 */  ori       $v0, $v0, 0x20
/* E212FC 802B744C 00621824 */  and       $v1, $v1, $v0
/* E21300 802B7450 3C020200 */  lui       $v0, 0x200
/* E21304 802B7454 14620010 */  bne       $v1, $v0, .L802B7498
/* E21308 802B7458 240600FF */   addiu    $a2, $zero, 0xff
/* E2130C 802B745C 3C03800A */  lui       $v1, %hi(gGameState)
/* E21310 802B7460 8C63A600 */  lw        $v1, %lo(gGameState)($v1)
/* E21314 802B7464 24020004 */  addiu     $v0, $zero, 4
/* E21318 802B7468 1062000B */  beq       $v1, $v0, .L802B7498
/* E2131C 802B746C 00000000 */   nop
/* E21320 802B7470 8E030004 */  lw        $v1, 4($s0)
/* E21324 802B7474 30620001 */  andi      $v0, $v1, 1
/* E21328 802B7478 14400007 */  bnez      $v0, .L802B7498
/* E2132C 802B747C 00000000 */   nop
/* E21330 802B7480 82020015 */  lb        $v0, 0x15($s0)
/* E21334 802B7484 14400004 */  bnez      $v0, .L802B7498
/* E21338 802B7488 3C020001 */   lui      $v0, 1
/* E2133C 802B748C 00621024 */  and       $v0, $v1, $v0
/* E21340 802B7490 10400005 */  beqz      $v0, .L802B74A8
/* E21344 802B7494 00000000 */   nop
.L802B7498:
/* E21348 802B7498 3C03802B */  lui       $v1, 0x802b
/* E2134C 802B749C 8C6379A8 */  lw        $v1, 0x79a8($v1)
/* E21350 802B74A0 24020003 */  addiu     $v0, $zero, 3
/* E21354 802B74A4 A062002A */  sb        $v0, 0x2a($v1)
.L802B74A8:
/* E21358 802B74A8 3C03802B */  lui       $v1, 0x802b
/* E2135C 802B74AC 246379A8 */  addiu     $v1, $v1, 0x79a8
/* E21360 802B74B0 8C640000 */  lw        $a0, ($v1)
/* E21364 802B74B4 9085002A */  lbu       $a1, 0x2a($a0)
/* E21368 802B74B8 24020001 */  addiu     $v0, $zero, 1
/* E2136C 802B74BC 10A20026 */  beq       $a1, $v0, .L802B7558
/* E21370 802B74C0 28A20002 */   slti     $v0, $a1, 2
/* E21374 802B74C4 10400005 */  beqz      $v0, .L802B74DC
/* E21378 802B74C8 24020002 */   addiu    $v0, $zero, 2
/* E2137C 802B74CC 10A00009 */  beqz      $a1, .L802B74F4
/* E21380 802B74D0 00000000 */   nop
/* E21384 802B74D4 080ADDA0 */  j         .L802B7680
/* E21388 802B74D8 00000000 */   nop
.L802B74DC:
/* E2138C 802B74DC 10A20027 */  beq       $a1, $v0, .L802B757C
/* E21390 802B74E0 24020003 */   addiu    $v0, $zero, 3
/* E21394 802B74E4 10A20033 */  beq       $a1, $v0, .L802B75B4
/* E21398 802B74E8 00000000 */   nop
/* E2139C 802B74EC 080ADDA0 */  j         .L802B7680
/* E213A0 802B74F0 00000000 */   nop
.L802B74F4:
/* E213A4 802B74F4 C4800014 */  lwc1      $f0, 0x14($a0)
/* E213A8 802B74F8 3C01802B */  lui       $at, 0x802b
/* E213AC 802B74FC D42279B0 */  ldc1      $f2, 0x79b0($at)
/* E213B0 802B7500 3C01802B */  lui       $at, 0x802b
/* E213B4 802B7504 D42479B8 */  ldc1      $f4, 0x79b8($at)
/* E213B8 802B7508 46000021 */  cvt.d.s   $f0, $f0
/* E213BC 802B750C 46220000 */  add.d     $f0, $f0, $f2
/* E213C0 802B7510 AC800010 */  sw        $zero, 0x10($a0)
/* E213C4 802B7514 46200020 */  cvt.s.d   $f0, $f0
/* E213C8 802B7518 460000A1 */  cvt.d.s   $f2, $f0
/* E213CC 802B751C 4622203E */  c.le.d    $f4, $f2
/* E213D0 802B7520 00000000 */  nop
/* E213D4 802B7524 45000056 */  bc1f      .L802B7680
/* E213D8 802B7528 E4800014 */   swc1     $f0, 0x14($a0)
/* E213DC 802B752C 9082002A */  lbu       $v0, 0x2a($a0)
/* E213E0 802B7530 3C013F0C */  lui       $at, 0x3f0c
/* E213E4 802B7534 3421CCCD */  ori       $at, $at, 0xcccd
/* E213E8 802B7538 44810000 */  mtc1      $at, $f0
/* E213EC 802B753C 24420001 */  addiu     $v0, $v0, 1
/* E213F0 802B7540 E4800014 */  swc1      $f0, 0x14($a0)
/* E213F4 802B7544 A082002A */  sb        $v0, 0x2a($a0)
/* E213F8 802B7548 8C630000 */  lw        $v1, ($v1)
/* E213FC 802B754C 2402000C */  addiu     $v0, $zero, 0xc
/* E21400 802B7550 080ADDA0 */  j         .L802B7680
/* E21404 802B7554 AC620020 */   sw       $v0, 0x20($v1)
.L802B7558:
/* E21408 802B7558 8C820020 */  lw        $v0, 0x20($a0)
/* E2140C 802B755C AC800010 */  sw        $zero, 0x10($a0)
/* E21410 802B7560 2442FFFF */  addiu     $v0, $v0, -1
/* E21414 802B7564 1C400046 */  bgtz      $v0, .L802B7680
/* E21418 802B7568 AC820020 */   sw       $v0, 0x20($a0)
/* E2141C 802B756C 9082002A */  lbu       $v0, 0x2a($a0)
/* E21420 802B7570 24420001 */  addiu     $v0, $v0, 1
/* E21424 802B7574 080ADDA0 */  j         .L802B7680
/* E21428 802B7578 A082002A */   sb       $v0, 0x2a($a0)
.L802B757C:
/* E2142C 802B757C C48C0010 */  lwc1      $f12, 0x10($a0)
/* E21430 802B7580 3C014120 */  lui       $at, 0x4120
/* E21434 802B7584 44810000 */  mtc1      $at, $f0
/* E21438 802B7588 00000000 */  nop
/* E2143C 802B758C 46006300 */  add.s     $f12, $f12, $f0
/* E21440 802B7590 3C0143B4 */  lui       $at, 0x43b4
/* E21444 802B7594 44810000 */  mtc1      $at, $f0
/* E21448 802B7598 00000000 */  nop
/* E2144C 802B759C 460C003E */  c.le.s    $f0, $f12
/* E21450 802B75A0 00000000 */  nop
/* E21454 802B75A4 45030001 */  bc1tl     .L802B75AC
/* E21458 802B75A8 46006301 */   sub.s    $f12, $f12, $f0
.L802B75AC:
/* E2145C 802B75AC 080ADD9D */  j         .L802B7674
/* E21460 802B75B0 E48C0010 */   swc1     $f12, 0x10($a0)
.L802B75B4:
/* E21464 802B75B4 C48C0010 */  lwc1      $f12, 0x10($a0)
/* E21468 802B75B8 3C0141C8 */  lui       $at, 0x41c8
/* E2146C 802B75BC 44810000 */  mtc1      $at, $f0
/* E21470 802B75C0 00000000 */  nop
/* E21474 802B75C4 46006300 */  add.s     $f12, $f12, $f0
/* E21478 802B75C8 3C0143B4 */  lui       $at, 0x43b4
/* E2147C 802B75CC 44810000 */  mtc1      $at, $f0
/* E21480 802B75D0 00000000 */  nop
/* E21484 802B75D4 460C003E */  c.le.s    $f0, $f12
/* E21488 802B75D8 00000000 */  nop
/* E2148C 802B75DC 45030001 */  bc1tl     .L802B75E4
/* E21490 802B75E0 46006301 */   sub.s    $f12, $f12, $f0
.L802B75E4:
/* E21494 802B75E4 3C01428C */  lui       $at, 0x428c
/* E21498 802B75E8 44810000 */  mtc1      $at, $f0
/* E2149C 802B75EC 00000000 */  nop
/* E214A0 802B75F0 460C003E */  c.le.s    $f0, $f12
/* E214A4 802B75F4 00000000 */  nop
/* E214A8 802B75F8 45000008 */  bc1f      .L802B761C
/* E214AC 802B75FC E48C0010 */   swc1     $f12, 0x10($a0)
/* E214B0 802B7600 3C0142DC */  lui       $at, 0x42dc
/* E214B4 802B7604 44810000 */  mtc1      $at, $f0
/* E214B8 802B7608 00000000 */  nop
/* E214BC 802B760C 4600603E */  c.le.s    $f12, $f0
/* E214C0 802B7610 00000000 */  nop
/* E214C4 802B7614 4501000F */  bc1t      .L802B7654
/* E214C8 802B7618 00000000 */   nop
.L802B761C:
/* E214CC 802B761C 3C01437A */  lui       $at, 0x437a
/* E214D0 802B7620 44810000 */  mtc1      $at, $f0
/* E214D4 802B7624 00000000 */  nop
/* E214D8 802B7628 460C003E */  c.le.s    $f0, $f12
/* E214DC 802B762C 00000000 */  nop
/* E214E0 802B7630 45000010 */  bc1f      .L802B7674
/* E214E4 802B7634 00000000 */   nop
/* E214E8 802B7638 3C014391 */  lui       $at, 0x4391
/* E214EC 802B763C 44810000 */  mtc1      $at, $f0
/* E214F0 802B7640 00000000 */  nop
/* E214F4 802B7644 4600603E */  c.le.s    $f12, $f0
/* E214F8 802B7648 00000000 */  nop
/* E214FC 802B764C 45000009 */  bc1f      .L802B7674
/* E21500 802B7650 00000000 */   nop
.L802B7654:
/* E21504 802B7654 8E020004 */  lw        $v0, 4($s0)
/* E21508 802B7658 2403FFDF */  addiu     $v1, $zero, -0x21
/* E2150C 802B765C 3C018011 */  lui       $at, 0x8011
/* E21510 802B7660 AC20C940 */  sw        $zero, -0x36c0($at)
/* E21514 802B7664 AE0000C8 */  sw        $zero, 0xc8($s0)
/* E21518 802B7668 00431024 */  and       $v0, $v0, $v1
/* E2151C 802B766C 080ADDBE */  j         .L802B76F8
/* E21520 802B7670 AE020004 */   sw       $v0, 4($s0)
.L802B7674:
/* E21524 802B7674 0C0ADC00 */  jal       func_802B7000
/* E21528 802B7678 00000000 */   nop
/* E2152C 802B767C 0040302D */  daddu     $a2, $v0, $zero
.L802B7680:
/* E21530 802B7680 3C04802B */  lui       $a0, 0x802b
/* E21534 802B7684 248479A8 */  addiu     $a0, $a0, 0x79a8
/* E21538 802B7688 8C820000 */  lw        $v0, ($a0)
/* E2153C 802B768C A046002B */  sb        $a2, 0x2b($v0)
/* E21540 802B7690 8E0300C8 */  lw        $v1, 0xc8($s0)
/* E21544 802B7694 10600005 */  beqz      $v1, .L802B76AC
/* E21548 802B7698 00000000 */   nop
/* E2154C 802B769C 8C840000 */  lw        $a0, ($a0)
/* E21550 802B76A0 8C820000 */  lw        $v0, ($a0)
/* E21554 802B76A4 54620001 */  bnel      $v1, $v0, .L802B76AC
/* E21558 802B76A8 AC830000 */   sw       $v1, ($a0)
.L802B76AC:
/* E2155C 802B76AC 3C03802B */  lui       $v1, 0x802b
/* E21560 802B76B0 8C6379A8 */  lw        $v1, 0x79a8($v1)
/* E21564 802B76B4 8C640000 */  lw        $a0, ($v1)
/* E21568 802B76B8 848200A8 */  lh        $v0, 0xa8($a0)
/* E2156C 802B76BC C480003C */  lwc1      $f0, 0x3c($a0)
/* E21570 802B76C0 44821000 */  mtc1      $v0, $f2
/* E21574 802B76C4 00000000 */  nop
/* E21578 802B76C8 468010A0 */  cvt.s.w   $f2, $f2
/* E2157C 802B76CC 46020000 */  add.s     $f0, $f0, $f2
/* E21580 802B76D0 3C014100 */  lui       $at, 0x4100
/* E21584 802B76D4 44811000 */  mtc1      $at, $f2
/* E21588 802B76D8 00000000 */  nop
/* E2158C 802B76DC 46020000 */  add.s     $f0, $f0, $f2
/* E21590 802B76E0 E460001C */  swc1      $f0, 0x1c($v1)
/* E21594 802B76E4 E4600008 */  swc1      $f0, 8($v1)
/* E21598 802B76E8 C4800038 */  lwc1      $f0, 0x38($a0)
/* E2159C 802B76EC E4600004 */  swc1      $f0, 4($v1)
/* E215A0 802B76F0 C4800040 */  lwc1      $f0, 0x40($a0)
/* E215A4 802B76F4 E460000C */  swc1      $f0, 0xc($v1)
.L802B76F8:
/* E215A8 802B76F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* E215AC 802B76FC 8FB00010 */  lw        $s0, 0x10($sp)
/* E215B0 802B7700 03E00008 */  jr        $ra
/* E215B4 802B7704 27BD0018 */   addiu    $sp, $sp, 0x18
/* E215B8 802B7708 00000000 */  nop
/* E215BC 802B770C 00000000 */  nop
