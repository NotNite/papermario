# %s disassembly and split file
# generated by n64split v%s - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.include "globals.inc"


.section .text800694C0, "ax"

osPfsGetStatus:
/* 0448C0 800694C0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0448C4 800694C4 AFB20028 */  sw    $s2, 0x28($sp)
/* 0448C8 800694C8 00809021 */  addu  $s2, $a0, $zero
/* 0448CC 800694CC AFB3002C */  sw    $s3, 0x2c($sp)
/* 0448D0 800694D0 00A09821 */  addu  $s3, $a1, $zero
/* 0448D4 800694D4 02602021 */  addu  $a0, $s3, $zero
/* 0448D8 800694D8 240200FA */  addiu $v0, $zero, 0xfa
/* 0448DC 800694DC AFBF0030 */  sw    $ra, 0x30($sp)
/* 0448E0 800694E0 AFB10024 */  sw    $s1, 0x24($sp)
/* 0448E4 800694E4 AFB00020 */  sw    $s0, 0x20($sp)
/* 0448E8 800694E8 3C018009 */  lui   $at, 0x8009
/* 0448EC 800694EC A02258D4 */  sb    $v0, 0x58d4($at)
/* 0448F0 800694F0 0C01A56C */  jal   osPfsRequestOneChannel
/* 0448F4 800694F4 00002821 */   addu  $a1, $zero, $zero
/* 0448F8 800694F8 24040001 */  addiu $a0, $zero, 1
/* 0448FC 800694FC 3C11800E */  lui   $s1, 0x800e
/* 044900 80069500 2631A000 */  addiu $s1, $s1, -0x6000
/* 044904 80069504 0C019730 */  jal   osSiRawStartDma
/* 044908 80069508 02202821 */   addu  $a1, $s1, $zero
/* 04490C 8006950C 02402021 */  addu  $a0, $s2, $zero
/* 044910 80069510 27B00018 */  addiu $s0, $sp, 0x18
/* 044914 80069514 02002821 */  addu  $a1, $s0, $zero
/* 044918 80069518 0C0195BC */  jal   osRecvMesg
/* 04491C 8006951C 24060001 */   addiu $a2, $zero, 1
/* 044920 80069520 00002021 */  addu  $a0, $zero, $zero
/* 044924 80069524 0C019730 */  jal   osSiRawStartDma
/* 044928 80069528 02202821 */   addu  $a1, $s1, $zero
/* 04492C 8006952C 02402021 */  addu  $a0, $s2, $zero
/* 044930 80069530 02002821 */  addu  $a1, $s0, $zero
/* 044934 80069534 24060001 */  addiu $a2, $zero, 1
/* 044938 80069538 0C0195BC */  jal   osRecvMesg
/* 04493C 8006953C 00408021 */   addu  $s0, $v0, $zero
/* 044940 80069540 02602021 */  addu  $a0, $s3, $zero
/* 044944 80069544 0C01A591 */  jal   osPfsGetOneChannelData
/* 044948 80069548 27A50010 */   addiu $a1, $sp, 0x10
/* 04494C 8006954C 93A30012 */  lbu   $v1, 0x12($sp)
/* 044950 80069550 30620001 */  andi  $v0, $v1, 1
/* 044954 80069554 10400003 */  beqz  $v0, .L80069564
/* 044958 80069558 30620002 */   andi  $v0, $v1, 2
/* 04495C 8006955C 1440000D */  bnez  $v0, .L80069594
/* 044960 80069560 24020002 */   addiu $v0, $zero, 2
.L80069564:
/* 044964 80069564 97A20012 */  lhu   $v0, 0x12($sp)
/* 044968 80069568 24030100 */  addiu $v1, $zero, 0x100
/* 04496C 8006956C 304201FF */  andi  $v0, $v0, 0x1ff
/* 044970 80069570 10430003 */  beq   $v0, $v1, .L80069580
/* 044974 80069574 00000000 */   nop   
/* 044978 80069578 0801A565 */  j     .L80069594
/* 04497C 8006957C 24020001 */   addiu $v0, $zero, 1

.L80069580:
/* 044980 80069580 93A30012 */  lbu   $v1, 0x12($sp)
/* 044984 80069584 30630004 */  andi  $v1, $v1, 4
/* 044988 80069588 14600002 */  bnez  $v1, .L80069594
/* 04498C 8006958C 24020004 */   addiu $v0, $zero, 4
/* 044990 80069590 02001021 */  addu  $v0, $s0, $zero
.L80069594:
/* 044994 80069594 8FBF0030 */  lw    $ra, 0x30($sp)
/* 044998 80069598 8FB3002C */  lw    $s3, 0x2c($sp)
/* 04499C 8006959C 8FB20028 */  lw    $s2, 0x28($sp)
/* 0449A0 800695A0 8FB10024 */  lw    $s1, 0x24($sp)
/* 0449A4 800695A4 8FB00020 */  lw    $s0, 0x20($sp)
/* 0449A8 800695A8 03E00008 */  jr    $ra
/* 0449AC 800695AC 27BD0038 */   addiu $sp, $sp, 0x38

osPfsRequestOneChannel:
/* 0449B0 800695B0 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0449B4 800695B4 3C03800E */  lui   $v1, 0x800e
/* 0449B8 800695B8 2463A03C */  addiu $v1, $v1, -0x5fc4
/* 0449BC 800695BC 2466FFC4 */  addiu $a2, $v1, -0x3c
/* 0449C0 800695C0 00003821 */  addu  $a3, $zero, $zero
/* 0449C4 800695C4 240200FE */  addiu $v0, $zero, 0xfe
/* 0449C8 800695C8 3C01800A */  lui   $at, 0x800a
/* 0449CC 800695CC A022A61C */  sb    $v0, -0x59e4($at)
/* 0449D0 800695D0 24020001 */  addiu $v0, $zero, 1
/* 0449D4 800695D4 AC620000 */  sw    $v0, ($v1)
/* 0449D8 800695D8 24020001 */  addiu $v0, $zero, 1
/* 0449DC 800695DC A3A20000 */  sb    $v0, ($sp)
/* 0449E0 800695E0 24020003 */  addiu $v0, $zero, 3
/* 0449E4 800695E4 A3A20001 */  sb    $v0, 1($sp)
/* 0449E8 800695E8 240200FF */  addiu $v0, $zero, 0xff
/* 0449EC 800695EC A3A50002 */  sb    $a1, 2($sp)
/* 0449F0 800695F0 A3A20003 */  sb    $v0, 3($sp)
/* 0449F4 800695F4 A3A20004 */  sb    $v0, 4($sp)
/* 0449F8 800695F8 18800006 */  blez  $a0, .L80069614
/* 0449FC 800695FC A3A20005 */   sb    $v0, 5($sp)
.L80069600:
/* 044A00 80069600 A0C00000 */  sb    $zero, ($a2)
/* 044A04 80069604 24E70001 */  addiu $a3, $a3, 1
/* 044A08 80069608 00E4102A */  slt   $v0, $a3, $a0
/* 044A0C 8006960C 1440FFFC */  bnez  $v0, .L80069600
/* 044A10 80069610 24C60001 */   addiu $a2, $a2, 1
.L80069614:
/* 044A14 80069614 8BA20000 */  lwl   $v0, ($sp)
/* 044A18 80069618 9BA20003 */  lwr   $v0, 3($sp)
/* 044A1C 8006961C 83A30004 */  lb    $v1, 4($sp)
/* 044A20 80069620 83A40005 */  lb    $a0, 5($sp)
/* 044A24 80069624 A8C20000 */  swl   $v0, ($a2)
/* 044A28 80069628 B8C20003 */  swr   $v0, 3($a2)
/* 044A2C 8006962C A0C30004 */  sb    $v1, 4($a2)
/* 044A30 80069630 A0C40005 */  sb    $a0, 5($a2)
/* 044A34 80069634 240200FE */  addiu $v0, $zero, 0xfe
/* 044A38 80069638 A0C20006 */  sb    $v0, 6($a2)
/* 044A3C 8006963C 03E00008 */  jr    $ra
/* 044A40 80069640 27BD0010 */   addiu $sp, $sp, 0x10

osPfsGetOneChannelData:
/* 044A44 80069644 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 044A48 80069648 00A03821 */  addu  $a3, $a1, $zero
/* 044A4C 8006964C 3C06800E */  lui   $a2, 0x800e
/* 044A50 80069650 24C6A000 */  addiu $a2, $a2, -0x6000
/* 044A54 80069654 18800005 */  blez  $a0, .L8006966C
/* 044A58 80069658 00001821 */   addu  $v1, $zero, $zero
.L8006965C:
/* 044A5C 8006965C 24630001 */  addiu $v1, $v1, 1
/* 044A60 80069660 0064102A */  slt   $v0, $v1, $a0
/* 044A64 80069664 1440FFFD */  bnez  $v0, .L8006965C
/* 044A68 80069668 24C60001 */   addiu $a2, $a2, 1
.L8006966C:
/* 044A6C 8006966C 88C20000 */  lwl   $v0, ($a2)
/* 044A70 80069670 98C20003 */  lwr   $v0, 3($a2)
/* 044A74 80069674 80C30004 */  lb    $v1, 4($a2)
/* 044A78 80069678 80C40005 */  lb    $a0, 5($a2)
/* 044A7C 8006967C ABA20000 */  swl   $v0, ($sp)
/* 044A80 80069680 BBA20003 */  swr   $v0, 3($sp)
/* 044A84 80069684 A3A30004 */  sb    $v1, 4($sp)
/* 044A88 80069688 A3A40005 */  sb    $a0, 5($sp)
/* 044A8C 8006968C 93A20001 */  lbu   $v0, 1($sp)
/* 044A90 80069690 304200C0 */  andi  $v0, $v0, 0xc0
/* 044A94 80069694 00021102 */  srl   $v0, $v0, 4
/* 044A98 80069698 14400008 */  bnez  $v0, .L800696BC
/* 044A9C 8006969C A0E20003 */   sb    $v0, 3($a3)
/* 044AA0 800696A0 93A20004 */  lbu   $v0, 4($sp)
/* 044AA4 800696A4 93A30003 */  lbu   $v1, 3($sp)
/* 044AA8 800696A8 00021200 */  sll   $v0, $v0, 8
/* 044AAC 800696AC 00621825 */  or    $v1, $v1, $v0
/* 044AB0 800696B0 A4E30000 */  sh    $v1, ($a3)
/* 044AB4 800696B4 93A20005 */  lbu   $v0, 5($sp)
/* 044AB8 800696B8 A0E20002 */  sb    $v0, 2($a3)
.L800696BC:
/* 044ABC 800696BC 03E00008 */  jr    $ra
/* 044AC0 800696C0 27BD0010 */   addiu $sp, $sp, 0x10

/* 044AC4 800696C4 00000000 */  nop   
/* 044AC8 800696C8 00000000 */  nop   
/* 044ACC 800696CC 00000000 */  nop   
