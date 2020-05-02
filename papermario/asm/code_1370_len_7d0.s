# %s disassembly and split file
# generated by n64split v%s - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.include "globals.inc"


.section .text80025F70, "ax"

boot_main:
/* 001370 80025F70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001374 80025F74 3C038000 */  lui   $v1, 0x8000
/* 001378 80025F78 8C630300 */  lw    $v1, 0x300($v1)
/* 00137C 80025F7C 24020001 */  addiu $v0, $zero, 1
/* 001380 80025F80 14620005 */  bne   $v1, $v0, .L80025F98
/* 001384 80025F84 AFBF0010 */   sw    $ra, 0x10($sp)
/* 001388 80025F88 3C048009 */  lui   $a0, 0x8009
/* 00138C 80025F8C 24845820 */  addiu $a0, $a0, 0x5820
/* 001390 80025F90 080097EB */  j     .L80025FAC
/* 001394 80025F94 00000000 */   nop   

.L80025F98:
/* 001398 80025F98 24020002 */  addiu $v0, $zero, 2
/* 00139C 80025F9C 14620009 */  bne   $v1, $v0, .L80025FC4
/* 0013A0 80025FA0 00000000 */   nop   
/* 0013A4 80025FA4 3C048009 */  lui   $a0, 0x8009
/* 0013A8 80025FA8 24845870 */  addiu $a0, $a0, 0x5870
.L80025FAC:
/* 0013AC 80025FAC 0C019B84 */  jal   osViSetMode
/* 0013B0 80025FB0 00000000 */   nop   
/* 0013B4 80025FB4 0C019B98 */  jal   osViSetSpecialFeatures
/* 0013B8 80025FB8 2404005A */   addiu $a0, $zero, 0x5a
/* 0013BC 80025FBC 080097F3 */  j     .L80025FCC
/* 0013C0 80025FC0 00000000 */   nop   

.L80025FC4:
/* 0013C4 80025FC4 080097F1 */  j     .L80025FC4
/* 0013C8 80025FC8 00000000 */   nop   

.L80025FCC:
/* 0013CC 80025FCC 0C017D00 */  jal   nuGfxDisplayOff
/* 0013D0 80025FD0 00000000 */   nop   
/* 0013D4 80025FD4 0C00B22C */  jal   crash_create_monitor
/* 0013D8 80025FD8 00000000 */   nop   
/* 0013DC 80025FDC 0C009718 */  jal   func_80025C60
/* 0013E0 80025FE0 00000000 */   nop   
/* 0013E4 80025FE4 0C017D58 */  jal   nuGfxInit
/* 0013E8 80025FE8 00000000 */   nop   
/* 0013EC 80025FEC 0C017D84 */  jal   nuContInit
/* 0013F0 80025FF0 00000000 */   nop   
/* 0013F4 80025FF4 3C038007 */  lui   $v1, 0x8007
/* 0013F8 80025FF8 8C63419C */  lw    $v1, 0x419c($v1)
/* 0013FC 80025FFC 0C00B458 */  jal   func_8002D160
/* 001400 80026000 A0620073 */   sb    $v0, 0x73($v1)
/* 001404 80026004 0C0AC800 */  jal   func_802B2000
/* 001408 80026008 00000000 */   nop   
/* 00140C 8002600C 0C0AC80F */  jal   func_802B203C
/* 001410 80026010 00000000 */   nop   
/* 001414 80026014 3C048002 */  lui   $a0, 0x8002
/* 001418 80026018 2484605C */  addiu $a0, $a0, 0x605c
/* 00141C 8002601C 0C017C94 */  jal   nuGfxFuncSet
/* 001420 80026020 00000000 */   nop   
/* 001424 80026024 3C048002 */  lui   $a0, 0x8002
/* 001428 80026028 2484670C */  addiu $a0, $a0, 0x670c
/* 00142C 8002602C 0C017CA4 */  jal   nuGfxPreNMIFuncSet
/* 001430 80026030 00000000 */   nop   
/* 001434 80026034 0C019680 */  jal   osGetCount
/* 001438 80026038 00000000 */   nop   
/* 00143C 8002603C 3C048007 */  lui   $a0, 0x8007
/* 001440 80026040 24844410 */  addiu $a0, $a0, 0x4410
/* 001444 80026044 8C830000 */  lw    $v1, ($a0)
/* 001448 80026048 00621821 */  addu  $v1, $v1, $v0
/* 00144C 8002604C 0C017D0C */  jal   nuGfxDisplayOn
/* 001450 80026050 AC830000 */   sw    $v1, ($a0)
.L80026054:
/* 001454 80026054 08009815 */  j     .L80026054
/* 001458 80026058 00000000 */   nop   

gfxRetrace_Callback:
/* 00145C 8002605C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 001460 80026060 AFB10014 */  sw    $s1, 0x14($sp)
/* 001464 80026064 3C118007 */  lui   $s1, 0x8007
/* 001468 80026068 26313E00 */  addiu $s1, $s1, 0x3e00
/* 00146C 8002606C AFBF0018 */  sw    $ra, 0x18($sp)
/* 001470 80026070 AFB00010 */  sw    $s0, 0x10($sp)
/* 001474 80026074 8E230000 */  lw    $v1, ($s1)
/* 001478 80026078 10600022 */  beqz  $v1, .L80026104
/* 00147C 8002607C 0080802D */   daddu $s0, $a0, $zero
/* 001480 80026080 24020001 */  addiu $v0, $zero, 1
/* 001484 80026084 14620016 */  bne   $v1, $v0, .L800260E0
/* 001488 80026088 00000000 */   nop   
/* 00148C 8002608C 0C017CB4 */  jal   nuGfxTaskAllEndWait
/* 001490 80026090 00000000 */   nop   
/* 001494 80026094 16000012 */  bnez  $s0, .L800260E0
/* 001498 80026098 00000000 */   nop   
/* 00149C 8002609C 0C019A6C */  jal   osViGetCurrentFramebuffer
/* 0014A0 800260A0 00000000 */   nop   
/* 0014A4 800260A4 3C10800A */  lui   $s0, 0x800a
/* 0014A8 800260A8 2610A680 */  addiu $s0, $s0, -0x5980
/* 0014AC 800260AC 0200202D */  daddu $a0, $s0, $zero
/* 0014B0 800260B0 AE020008 */  sw    $v0, 8($s0)
/* 0014B4 800260B4 AE020004 */  sw    $v0, 4($s0)
/* 0014B8 800260B8 AE020000 */  sw    $v0, ($s0)
/* 0014BC 800260BC 3C018007 */  lui   $at, 0x8007
/* 0014C0 800260C0 AC223E04 */  sw    $v0, 0x3e04($at)
/* 0014C4 800260C4 0C017CBC */  jal   nuGfxSetCfb
/* 0014C8 800260C8 24050003 */   addiu $a1, $zero, 3
/* 0014CC 800260CC 8E040000 */  lw    $a0, ($s0)
/* 0014D0 800260D0 0C019C08 */  jal   osViSwapBuffer
/* 0014D4 800260D4 00000000 */   nop   
/* 0014D8 800260D8 24020002 */  addiu $v0, $zero, 2
/* 0014DC 800260DC AE220000 */  sw    $v0, ($s1)
.L800260E0:
/* 0014E0 800260E0 3C038007 */  lui   $v1, 0x8007
/* 0014E4 800260E4 8C633E00 */  lw    $v1, 0x3e00($v1)
/* 0014E8 800260E8 24020002 */  addiu $v0, $zero, 2
/* 0014EC 800260EC 14620018 */  bne   $v1, $v0, .L80026150
/* 0014F0 800260F0 00000000 */   nop   
/* 0014F4 800260F4 0C009859 */  jal   func_80026164
/* 0014F8 800260F8 00000000 */   nop   
/* 0014FC 800260FC 08009854 */  j     .L80026150
/* 001500 80026100 00000000 */   nop   

.L80026104:
/* 001504 80026104 3C038007 */  lui   $v1, 0x8007
/* 001508 80026108 24633E0A */  addiu $v1, $v1, 0x3e0a
/* 00150C 8002610C 94620000 */  lhu   $v0, ($v1)
/* 001510 80026110 38420001 */  xori  $v0, $v0, 1
/* 001514 80026114 1440000E */  bnez  $v0, .L80026150
/* 001518 80026118 A4620000 */   sh    $v0, ($v1)
/* 00151C 8002611C 0C0099D0 */  jal   step_game_loop
/* 001520 80026120 00000000 */   nop   
/* 001524 80026124 3C038007 */  lui   $v1, 0x8007
/* 001528 80026128 24633E08 */  addiu $v1, $v1, 0x3e08
/* 00152C 8002612C 24020001 */  addiu $v0, $zero, 1
/* 001530 80026130 A4620000 */  sh    $v0, ($v1)
/* 001534 80026134 2A020003 */  slti  $v0, $s0, 3
/* 001538 80026138 10400005 */  beqz  $v0, .L80026150
/* 00153C 8002613C 00000000 */   nop   
/* 001540 80026140 0C009A7B */  jal   func_800269EC
/* 001544 80026144 A4600000 */   sh    $zero, ($v1)
/* 001548 80026148 0C009AC2 */  jal   gfx_draw_frame
/* 00154C 8002614C 00000000 */   nop   
.L80026150:
/* 001550 80026150 8FBF0018 */  lw    $ra, 0x18($sp)
/* 001554 80026154 8FB10014 */  lw    $s1, 0x14($sp)
/* 001558 80026158 8FB00010 */  lw    $s0, 0x10($sp)
/* 00155C 8002615C 03E00008 */  jr    $ra
/* 001560 80026160 27BD0020 */   addiu $sp, $sp, 0x20

func_80026164:
/* 001564 80026164 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 001568 80026168 3C048007 */  lui   $a0, 0x8007
/* 00156C 8002616C 8C8441F4 */  lw    $a0, 0x41f4($a0)
/* 001570 80026170 3C058016 */  lui   $a1, 0x8016
/* 001574 80026174 24A54000 */  addiu $a1, $a1, 0x4000
/* 001578 80026178 AFB20020 */  sw    $s2, 0x20($sp)
/* 00157C 8002617C 3C12800A */  lui   $s2, 0x800a
/* 001580 80026180 2652A66C */  addiu $s2, $s2, -0x5994
/* 001584 80026184 AFBF003C */  sw    $ra, 0x3c($sp)
/* 001588 80026188 AFBE0038 */  sw    $fp, 0x38($sp)
/* 00158C 8002618C AFB70034 */  sw    $s7, 0x34($sp)
/* 001590 80026190 AFB60030 */  sw    $s6, 0x30($sp)
/* 001594 80026194 AFB5002C */  sw    $s5, 0x2c($sp)
/* 001598 80026198 AFB40028 */  sw    $s4, 0x28($sp)
/* 00159C 8002619C AFB30024 */  sw    $s3, 0x24($sp)
/* 0015A0 800261A0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0015A4 800261A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 0015A8 800261A8 3C018007 */  lui   $at, 0x8007
/* 0015AC 800261AC A42041F0 */  sh    $zero, 0x41f0($at)
/* 0015B0 800261B0 00041040 */  sll   $v0, $a0, 1
/* 0015B4 800261B4 00441021 */  addu  $v0, $v0, $a0
/* 0015B8 800261B8 000210C0 */  sll   $v0, $v0, 3
/* 0015BC 800261BC 00441021 */  addu  $v0, $v0, $a0
/* 0015C0 800261C0 00021980 */  sll   $v1, $v0, 6
/* 0015C4 800261C4 00431021 */  addu  $v0, $v0, $v1
/* 0015C8 800261C8 00021080 */  sll   $v0, $v0, 2
/* 0015CC 800261CC 00441023 */  subu  $v0, $v0, $a0
/* 0015D0 800261D0 00021100 */  sll   $v0, $v0, 4
/* 0015D4 800261D4 00451021 */  addu  $v0, $v0, $a1
/* 0015D8 800261D8 3C01800A */  lui   $at, 0x800a
/* 0015DC 800261DC AC22A674 */  sw    $v0, -0x598c($at)
/* 0015E0 800261E0 24420230 */  addiu $v0, $v0, 0x230
/* 0015E4 800261E4 AE420000 */  sw    $v0, ($s2)
/* 0015E8 800261E8 3C118007 */  lui   $s1, 0x8007
/* 0015EC 800261EC 8E313E04 */  lw    $s1, 0x3e04($s1)
/* 0015F0 800261F0 0C009C68 */  jal   func_800271A0
/* 0015F4 800261F4 3C13070F */   lui   $s3, 0x70f
/* 0015F8 800261F8 3C06FF10 */  lui   $a2, 0xff10
/* 0015FC 800261FC 34C6013F */  ori   $a2, $a2, 0x13f
/* 001600 80026200 3C02FE00 */  lui   $v0, 0xfe00
/* 001604 80026204 8E500000 */  lw    $s0, ($s2)
/* 001608 80026208 3C038000 */  lui   $v1, 0x8000
/* 00160C 8002620C 0200282D */  daddu $a1, $s0, $zero
/* 001610 80026210 26100008 */  addiu $s0, $s0, 8
/* 001614 80026214 AE500000 */  sw    $s0, ($s2)
/* 001618 80026218 ACA20000 */  sw    $v0, ($a1)
/* 00161C 8002621C 3C02800A */  lui   $v0, 0x800a
/* 001620 80026220 8C42A5DC */  lw    $v0, -0x5a24($v0)
/* 001624 80026224 0220202D */  daddu $a0, $s1, $zero
/* 001628 80026228 00431021 */  addu  $v0, $v0, $v1
/* 00162C 8002622C ACA20004 */  sw    $v0, 4($a1)
/* 001630 80026230 26020008 */  addiu $v0, $s0, 8
/* 001634 80026234 AE420000 */  sw    $v0, ($s2)
/* 001638 80026238 0C0187A4 */  jal   osVirtualToPhysical
/* 00163C 8002623C AE060000 */   sw    $a2, ($s0)
/* 001640 80026240 3C050050 */  lui   $a1, 0x50
/* 001644 80026244 34A503C0 */  ori   $a1, $a1, 0x3c0
/* 001648 80026248 3C06D700 */  lui   $a2, 0xd700
/* 00164C 8002624C 34C60002 */  ori   $a2, $a2, 2
/* 001650 80026250 3C07E300 */  lui   $a3, 0xe300
/* 001654 80026254 34E70A01 */  ori   $a3, $a3, 0xa01
/* 001658 80026258 3C08E300 */  lui   $t0, 0xe300
/* 00165C 8002625C 35080C00 */  ori   $t0, $t0, 0xc00
/* 001660 80026260 3C09E300 */  lui   $t1, 0xe300
/* 001664 80026264 35291001 */  ori   $t1, $t1, 0x1001
/* 001668 80026268 3C0BE200 */  lui   $t3, 0xe200
/* 00166C 8002626C 356B001C */  ori   $t3, $t3, 0x1c
/* 001670 80026270 3C0A0F0A */  lui   $t2, 0xf0a
/* 001674 80026274 354A4000 */  ori   $t2, $t2, 0x4000
/* 001678 80026278 3C0CE300 */  lui   $t4, 0xe300
/* 00167C 8002627C 358C1201 */  ori   $t4, $t4, 0x1201
/* 001680 80026280 3C0DFCFF */  lui   $t5, 0xfcff
/* 001684 80026284 35ADFFFF */  ori   $t5, $t5, 0xffff
/* 001688 80026288 3C0EE200 */  lui   $t6, 0xe200
/* 00168C 8002628C 35CE1E01 */  ori   $t6, $t6, 0x1e01
/* 001690 80026290 3C0FFD88 */  lui   $t7, 0xfd88
/* 001694 80026294 35EF003F */  ori   $t7, $t7, 0x3f
/* 001698 80026298 3C11F588 */  lui   $s1, 0xf588
/* 00169C 8002629C 36311000 */  ori   $s1, $s1, 0x1000
/* 0016A0 800262A0 3673E01C */  ori   $s3, $s3, 0xe01c
/* 0016A4 800262A4 3C14F580 */  lui   $s4, 0xf580
/* 0016A8 800262A8 36941000 */  ori   $s4, $s4, 0x1000
/* 0016AC 800262AC 3C15001F */  lui   $s5, 0x1f
/* 0016B0 800262B0 36B5C01C */  ori   $s5, $s5, 0xc01c
/* 0016B4 800262B4 0000B02D */  daddu $s6, $zero, $zero
/* 0016B8 800262B8 3C17E400 */  lui   $s7, 0xe400
/* 0016BC 800262BC 3C19E100 */  lui   $t9, 0xe100
/* 0016C0 800262C0 3C18F100 */  lui   $t8, 0xf100
/* 0016C4 800262C4 8E430000 */  lw    $v1, ($s2)
/* 0016C8 800262C8 241E0098 */  addiu $fp, $zero, 0x98
/* 0016CC 800262CC AE020004 */  sw    $v0, 4($s0)
/* 0016D0 800262D0 3C02ED00 */  lui   $v0, 0xed00
/* 0016D4 800262D4 0060202D */  daddu $a0, $v1, $zero
/* 0016D8 800262D8 24630008 */  addiu $v1, $v1, 8
/* 0016DC 800262DC AE430000 */  sw    $v1, ($s2)
/* 0016E0 800262E0 AC820000 */  sw    $v0, ($a0)
/* 0016E4 800262E4 24620008 */  addiu $v0, $v1, 8
/* 0016E8 800262E8 AC850004 */  sw    $a1, 4($a0)
/* 0016EC 800262EC AE420000 */  sw    $v0, ($s2)
/* 0016F0 800262F0 2402FFFF */  addiu $v0, $zero, -1
/* 0016F4 800262F4 AC620004 */  sw    $v0, 4($v1)
/* 0016F8 800262F8 24620010 */  addiu $v0, $v1, 0x10
/* 0016FC 800262FC AC660000 */  sw    $a2, ($v1)
/* 001700 80026300 AE420000 */  sw    $v0, ($s2)
/* 001704 80026304 24620018 */  addiu $v0, $v1, 0x18
/* 001708 80026308 AC670008 */  sw    $a3, 8($v1)
/* 00170C 8002630C AC60000C */  sw    $zero, 0xc($v1)
/* 001710 80026310 AE420000 */  sw    $v0, ($s2)
/* 001714 80026314 24620020 */  addiu $v0, $v1, 0x20
/* 001718 80026318 AC680010 */  sw    $t0, 0x10($v1)
/* 00171C 8002631C AC600014 */  sw    $zero, 0x14($v1)
/* 001720 80026320 AE420000 */  sw    $v0, ($s2)
/* 001724 80026324 24620028 */  addiu $v0, $v1, 0x28
/* 001728 80026328 AC690018 */  sw    $t1, 0x18($v1)
/* 00172C 8002632C AC60001C */  sw    $zero, 0x1c($v1)
/* 001730 80026330 AE420000 */  sw    $v0, ($s2)
/* 001734 80026334 24620030 */  addiu $v0, $v1, 0x30
/* 001738 80026338 AC6B0020 */  sw    $t3, 0x20($v1)
/* 00173C 8002633C AC6A0024 */  sw    $t2, 0x24($v1)
/* 001740 80026340 AE420000 */  sw    $v0, ($s2)
/* 001744 80026344 24620038 */  addiu $v0, $v1, 0x38
/* 001748 80026348 AC6C0028 */  sw    $t4, 0x28($v1)
/* 00174C 8002634C AC60002C */  sw    $zero, 0x2c($v1)
/* 001750 80026350 AE420000 */  sw    $v0, ($s2)
/* 001754 80026354 2402F3F9 */  addiu $v0, $zero, -0xc07
/* 001758 80026358 AC620034 */  sw    $v0, 0x34($v1)
/* 00175C 8002635C 24620040 */  addiu $v0, $v1, 0x40
/* 001760 80026360 AC6D0030 */  sw    $t5, 0x30($v1)
/* 001764 80026364 AE420000 */  sw    $v0, ($s2)
/* 001768 80026368 24020001 */  addiu $v0, $zero, 1
/* 00176C 8002636C AC62003C */  sw    $v0, 0x3c($v1)
/* 001770 80026370 24620048 */  addiu $v0, $v1, 0x48
/* 001774 80026374 AC6E0038 */  sw    $t6, 0x38($v1)
/* 001778 80026378 AE420000 */  sw    $v0, ($s2)
/* 00177C 8002637C 3C02F900 */  lui   $v0, 0xf900
/* 001780 80026380 AC620040 */  sw    $v0, 0x40($v1)
/* 001784 80026384 2402007F */  addiu $v0, $zero, 0x7f
/* 001788 80026388 AC620044 */  sw    $v0, 0x44($v1)
/* 00178C 8002638C 24620050 */  addiu $v0, $v1, 0x50
/* 001790 80026390 AE420000 */  sw    $v0, ($s2)
/* 001794 80026394 3C028007 */  lui   $v0, 0x8007
/* 001798 80026398 24423E10 */  addiu $v0, $v0, 0x3e10
/* 00179C 8002639C AC6F0048 */  sw    $t7, 0x48($v1)
/* 0017A0 800263A0 AC62004C */  sw    $v0, 0x4c($v1)
/* 0017A4 800263A4 24620058 */  addiu $v0, $v1, 0x58
/* 0017A8 800263A8 AE420000 */  sw    $v0, ($s2)
/* 0017AC 800263AC 3C020700 */  lui   $v0, 0x700
/* 0017B0 800263B0 AC620054 */  sw    $v0, 0x54($v1)
/* 0017B4 800263B4 24620060 */  addiu $v0, $v1, 0x60
/* 0017B8 800263B8 AC710050 */  sw    $s1, 0x50($v1)
/* 0017BC 800263BC AE420000 */  sw    $v0, ($s2)
/* 0017C0 800263C0 3C02E600 */  lui   $v0, 0xe600
/* 0017C4 800263C4 AC620058 */  sw    $v0, 0x58($v1)
/* 0017C8 800263C8 24620068 */  addiu $v0, $v1, 0x68
/* 0017CC 800263CC AC60005C */  sw    $zero, 0x5c($v1)
/* 0017D0 800263D0 AE420000 */  sw    $v0, ($s2)
/* 0017D4 800263D4 3C02F400 */  lui   $v0, 0xf400
/* 0017D8 800263D8 AC620060 */  sw    $v0, 0x60($v1)
/* 0017DC 800263DC 24620070 */  addiu $v0, $v1, 0x70
/* 0017E0 800263E0 AC730064 */  sw    $s3, 0x64($v1)
/* 0017E4 800263E4 AE420000 */  sw    $v0, ($s2)
/* 0017E8 800263E8 3C02E700 */  lui   $v0, 0xe700
/* 0017EC 800263EC AC620068 */  sw    $v0, 0x68($v1)
/* 0017F0 800263F0 24620078 */  addiu $v0, $v1, 0x78
/* 0017F4 800263F4 AC60006C */  sw    $zero, 0x6c($v1)
/* 0017F8 800263F8 AE420000 */  sw    $v0, ($s2)
/* 0017FC 800263FC 24620080 */  addiu $v0, $v1, 0x80
/* 001800 80026400 AC740070 */  sw    $s4, 0x70($v1)
/* 001804 80026404 AC600074 */  sw    $zero, 0x74($v1)
/* 001808 80026408 AE420000 */  sw    $v0, ($s2)
/* 00180C 8002640C 3C02F200 */  lui   $v0, 0xf200
/* 001810 80026410 AC620078 */  sw    $v0, 0x78($v1)
/* 001814 80026414 AC75007C */  sw    $s5, 0x7c($v1)
/* 001818 80026418 0000702D */  daddu $t6, $zero, $zero
.L8002641C:
/* 00181C 8002641C 00161C00 */  sll   $v1, $s6, 0x10
/* 001820 80026420 00031C03 */  sra   $v1, $v1, 0x10
/* 001824 80026424 2474000E */  addiu $s4, $v1, 0xe
/* 001828 80026428 000318C0 */  sll   $v1, $v1, 3
/* 00182C 8002642C 246200A8 */  addiu $v0, $v1, 0xa8
/* 001830 80026430 00021080 */  sll   $v0, $v0, 2
/* 001834 80026434 30420FFF */  andi  $v0, $v0, 0xfff
/* 001838 80026438 00029B00 */  sll   $s3, $v0, 0xc
/* 00183C 8002643C 246200A0 */  addiu $v0, $v1, 0xa0
/* 001840 80026440 00021080 */  sll   $v0, $v0, 2
/* 001844 80026444 30420FFF */  andi  $v0, $v0, 0xfff
/* 001848 80026448 00028B00 */  sll   $s1, $v0, 0xc
/* 00184C 8002644C 241500A0 */  addiu $s5, $zero, 0xa0
/* 001850 80026450 02A31023 */  subu  $v0, $s5, $v1
/* 001854 80026454 00021080 */  sll   $v0, $v0, 2
/* 001858 80026458 30420FFF */  andi  $v0, $v0, 0xfff
/* 00185C 8002645C 00028300 */  sll   $s0, $v0, 0xc
/* 001860 80026460 03C31823 */  subu  $v1, $fp, $v1
/* 001864 80026464 00031880 */  sll   $v1, $v1, 2
/* 001868 80026468 30630FFF */  andi  $v1, $v1, 0xfff
/* 00186C 8002646C 00037B00 */  sll   $t7, $v1, 0xc
/* 001870 80026470 000E1400 */  sll   $v0, $t6, 0x10
.L80026474:
/* 001874 80026474 00023C03 */  sra   $a3, $v0, 0x10
/* 001878 80026478 02871823 */  subu  $v1, $s4, $a3
/* 00187C 8002647C 24020021 */  addiu $v0, $zero, 0x21
/* 001880 80026480 00431023 */  subu  $v0, $v0, $v1
/* 001884 80026484 00021FC2 */  srl   $v1, $v0, 0x1f
/* 001888 80026488 00431021 */  addu  $v0, $v0, $v1
/* 00188C 8002648C 3C038007 */  lui   $v1, 0x8007
/* 001890 80026490 94634010 */  lhu   $v1, 0x4010($v1)
/* 001894 80026494 00021043 */  sra   $v0, $v0, 1
/* 001898 80026498 2463FFF1 */  addiu $v1, $v1, -0xf
/* 00189C 8002649C 00431023 */  subu  $v0, $v0, $v1
/* 0018A0 800264A0 00021400 */  sll   $v0, $v0, 0x10
/* 0018A4 800264A4 00026C03 */  sra   $t5, $v0, 0x10
/* 0018A8 800264A8 29A20010 */  slti  $v0, $t5, 0x10
/* 0018AC 800264AC 1040005C */  beqz  $v0, .L80026620
/* 0018B0 800264B0 25C20001 */   addiu $v0, $t6, 1
/* 0018B4 800264B4 05A2005B */  bltzl $t5, .L80026624
/* 0018B8 800264B8 0040702D */   daddu $t6, $v0, $zero
/* 0018BC 800264BC 3C060400 */  lui   $a2, 0x400
/* 0018C0 800264C0 34C60400 */  ori   $a2, $a2, 0x400
/* 0018C4 800264C4 3C0A0400 */  lui   $t2, 0x400
/* 0018C8 800264C8 354AFC00 */  ori   $t2, $t2, 0xfc00
/* 0018CC 800264CC 3C0BFC00 */  lui   $t3, 0xfc00
/* 0018D0 800264D0 356B0400 */  ori   $t3, $t3, 0x400
/* 0018D4 800264D4 3C0CFC00 */  lui   $t4, 0xfc00
/* 0018D8 800264D8 358CFC00 */  ori   $t4, $t4, 0xfc00
/* 0018DC 800264DC 000748C0 */  sll   $t1, $a3, 3
/* 0018E0 800264E0 25240008 */  addiu $a0, $t1, 8
/* 0018E4 800264E4 00042080 */  sll   $a0, $a0, 2
/* 0018E8 800264E8 30840FFF */  andi  $a0, $a0, 0xfff
/* 0018EC 800264EC 00972025 */  or    $a0, $a0, $s7
/* 0018F0 800264F0 02641025 */  or    $v0, $s3, $a0
/* 0018F4 800264F4 00073940 */  sll   $a3, $a3, 5
/* 0018F8 800264F8 30E70FFF */  andi  $a3, $a3, 0xfff
/* 0018FC 800264FC 000D4600 */  sll   $t0, $t5, 0x18
/* 001900 80026500 8E430000 */  lw    $v1, ($s2)
/* 001904 80026504 02042025 */  or    $a0, $s0, $a0
/* 001908 80026508 0060282D */  daddu $a1, $v1, $zero
/* 00190C 8002650C 24630008 */  addiu $v1, $v1, 8
/* 001910 80026510 AE430000 */  sw    $v1, ($s2)
/* 001914 80026514 ACA20000 */  sw    $v0, ($a1)
/* 001918 80026518 02271025 */  or    $v0, $s1, $a3
/* 00191C 8002651C ACA20004 */  sw    $v0, 4($a1)
/* 001920 80026520 24620008 */  addiu $v0, $v1, 8
/* 001924 80026524 AE420000 */  sw    $v0, ($s2)
/* 001928 80026528 24620010 */  addiu $v0, $v1, 0x10
/* 00192C 8002652C AC790000 */  sw    $t9, ($v1)
/* 001930 80026530 AC680004 */  sw    $t0, 4($v1)
/* 001934 80026534 AE420000 */  sw    $v0, ($s2)
/* 001938 80026538 24620018 */  addiu $v0, $v1, 0x18
/* 00193C 8002653C 240500F0 */  addiu $a1, $zero, 0xf0
/* 001940 80026540 00A92823 */  subu  $a1, $a1, $t1
/* 001944 80026544 00052880 */  sll   $a1, $a1, 2
/* 001948 80026548 30A50FFF */  andi  $a1, $a1, 0xfff
/* 00194C 8002654C 00B72825 */  or    $a1, $a1, $s7
/* 001950 80026550 AC780008 */  sw    $t8, 8($v1)
/* 001954 80026554 AC66000C */  sw    $a2, 0xc($v1)
/* 001958 80026558 AE420000 */  sw    $v0, ($s2)
/* 00195C 8002655C 02651025 */  or    $v0, $s3, $a1
/* 001960 80026560 240600E8 */  addiu $a2, $zero, 0xe8
/* 001964 80026564 00C93023 */  subu  $a2, $a2, $t1
/* 001968 80026568 00063080 */  sll   $a2, $a2, 2
/* 00196C 8002656C 30C60FFF */  andi  $a2, $a2, 0xfff
/* 001970 80026570 AC620010 */  sw    $v0, 0x10($v1)
/* 001974 80026574 02261025 */  or    $v0, $s1, $a2
/* 001978 80026578 AC620014 */  sw    $v0, 0x14($v1)
/* 00197C 8002657C 24620020 */  addiu $v0, $v1, 0x20
/* 001980 80026580 350800E0 */  ori   $t0, $t0, 0xe0
/* 001984 80026584 AE420000 */  sw    $v0, ($s2)
/* 001988 80026588 24620028 */  addiu $v0, $v1, 0x28
/* 00198C 8002658C AC790018 */  sw    $t9, 0x18($v1)
/* 001990 80026590 AC68001C */  sw    $t0, 0x1c($v1)
/* 001994 80026594 AE420000 */  sw    $v0, ($s2)
/* 001998 80026598 24620030 */  addiu $v0, $v1, 0x30
/* 00199C 8002659C 01E73825 */  or    $a3, $t7, $a3
/* 0019A0 800265A0 AC780020 */  sw    $t8, 0x20($v1)
/* 0019A4 800265A4 AC6A0024 */  sw    $t2, 0x24($v1)
/* 0019A8 800265A8 AE420000 */  sw    $v0, ($s2)
/* 0019AC 800265AC 24620038 */  addiu $v0, $v1, 0x38
/* 0019B0 800265B0 AC640028 */  sw    $a0, 0x28($v1)
/* 0019B4 800265B4 000D2200 */  sll   $a0, $t5, 8
/* 0019B8 800265B8 348400E0 */  ori   $a0, $a0, 0xe0
/* 0019BC 800265BC 00042400 */  sll   $a0, $a0, 0x10
/* 0019C0 800265C0 AC67002C */  sw    $a3, 0x2c($v1)
/* 0019C4 800265C4 AE420000 */  sw    $v0, ($s2)
/* 0019C8 800265C8 24620040 */  addiu $v0, $v1, 0x40
/* 0019CC 800265CC AC790030 */  sw    $t9, 0x30($v1)
/* 0019D0 800265D0 AC640034 */  sw    $a0, 0x34($v1)
/* 0019D4 800265D4 AE420000 */  sw    $v0, ($s2)
/* 0019D8 800265D8 24620048 */  addiu $v0, $v1, 0x48
/* 0019DC 800265DC 02052825 */  or    $a1, $s0, $a1
/* 0019E0 800265E0 01E63025 */  or    $a2, $t7, $a2
/* 0019E4 800265E4 AC780038 */  sw    $t8, 0x38($v1)
/* 0019E8 800265E8 AC6B003C */  sw    $t3, 0x3c($v1)
/* 0019EC 800265EC AE420000 */  sw    $v0, ($s2)
/* 0019F0 800265F0 24620050 */  addiu $v0, $v1, 0x50
/* 0019F4 800265F4 348400E0 */  ori   $a0, $a0, 0xe0
/* 0019F8 800265F8 AC650040 */  sw    $a1, 0x40($v1)
/* 0019FC 800265FC AC660044 */  sw    $a2, 0x44($v1)
/* 001A00 80026600 AE420000 */  sw    $v0, ($s2)
/* 001A04 80026604 24620058 */  addiu $v0, $v1, 0x58
/* 001A08 80026608 AC790048 */  sw    $t9, 0x48($v1)
/* 001A0C 8002660C AC64004C */  sw    $a0, 0x4c($v1)
/* 001A10 80026610 AE420000 */  sw    $v0, ($s2)
/* 001A14 80026614 AC780050 */  sw    $t8, 0x50($v1)
/* 001A18 80026618 AC6C0054 */  sw    $t4, 0x54($v1)
/* 001A1C 8002661C 25C20001 */  addiu $v0, $t6, 1
.L80026620:
/* 001A20 80026620 0040702D */  daddu $t6, $v0, $zero
.L80026624:
/* 001A24 80026624 00021400 */  sll   $v0, $v0, 0x10
/* 001A28 80026628 00021403 */  sra   $v0, $v0, 0x10
/* 001A2C 8002662C 2842000F */  slti  $v0, $v0, 0xf
/* 001A30 80026630 1440FF90 */  bnez  $v0, .L80026474
/* 001A34 80026634 000E1400 */   sll   $v0, $t6, 0x10
/* 001A38 80026638 26C20001 */  addiu $v0, $s6, 1
/* 001A3C 8002663C 0040B02D */  daddu $s6, $v0, $zero
/* 001A40 80026640 00021400 */  sll   $v0, $v0, 0x10
/* 001A44 80026644 00021403 */  sra   $v0, $v0, 0x10
/* 001A48 80026648 28420014 */  slti  $v0, $v0, 0x14
/* 001A4C 8002664C 1440FF73 */  bnez  $v0, .L8002641C
/* 001A50 80026650 0000702D */   daddu $t6, $zero, $zero
/* 001A54 80026654 3C06800A */  lui   $a2, 0x800a
/* 001A58 80026658 24C6A66C */  addiu $a2, $a2, -0x5994
/* 001A5C 8002665C 3C038007 */  lui   $v1, 0x8007
/* 001A60 80026660 24634010 */  addiu $v1, $v1, 0x4010
/* 001A64 80026664 8CC50000 */  lw    $a1, ($a2)
/* 001A68 80026668 3C08800A */  lui   $t0, 0x800a
/* 001A6C 8002666C 8D08A674 */  lw    $t0, -0x598c($t0)
/* 001A70 80026670 94620000 */  lhu   $v0, ($v1)
/* 001A74 80026674 00A0382D */  daddu $a3, $a1, $zero
/* 001A78 80026678 24A50008 */  addiu $a1, $a1, 8
/* 001A7C 8002667C 25040230 */  addiu $a0, $t0, 0x230
/* 001A80 80026680 24420001 */  addiu $v0, $v0, 1
/* 001A84 80026684 A4620000 */  sh    $v0, ($v1)
/* 001A88 80026688 3C02E900 */  lui   $v0, 0xe900
/* 001A8C 8002668C ACC50000 */  sw    $a1, ($a2)
/* 001A90 80026690 ACE20000 */  sw    $v0, ($a3)
/* 001A94 80026694 24A20008 */  addiu $v0, $a1, 8
/* 001A98 80026698 ACE00004 */  sw    $zero, 4($a3)
/* 001A9C 8002669C ACC20000 */  sw    $v0, ($a2)
/* 001AA0 800266A0 3C02DF00 */  lui   $v0, 0xdf00
/* 001AA4 800266A4 ACA20000 */  sw    $v0, ($a1)
/* 001AA8 800266A8 ACA00004 */  sw    $zero, 4($a1)
/* 001AAC 800266AC 24A5FDD8 */  addiu $a1, $a1, -0x228
/* 001AB0 800266B0 00A82823 */  subu  $a1, $a1, $t0
/* 001AB4 800266B4 000528C3 */  sra   $a1, $a1, 3
/* 001AB8 800266B8 000528C0 */  sll   $a1, $a1, 3
/* 001ABC 800266BC 0000302D */  daddu $a2, $zero, $zero
/* 001AC0 800266C0 0C00B331 */  jal   nuGfxTaskStart
/* 001AC4 800266C4 3C070004 */   lui   $a3, 4
/* 001AC8 800266C8 3C038007 */  lui   $v1, 0x8007
/* 001ACC 800266CC 246341F4 */  addiu $v1, $v1, 0x41f4
/* 001AD0 800266D0 8C620000 */  lw    $v0, ($v1)
/* 001AD4 800266D4 38420001 */  xori  $v0, $v0, 1
/* 001AD8 800266D8 AC620000 */  sw    $v0, ($v1)
/* 001ADC 800266DC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 001AE0 800266E0 8FBE0038 */  lw    $fp, 0x38($sp)
/* 001AE4 800266E4 8FB70034 */  lw    $s7, 0x34($sp)
/* 001AE8 800266E8 8FB60030 */  lw    $s6, 0x30($sp)
/* 001AEC 800266EC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 001AF0 800266F0 8FB40028 */  lw    $s4, 0x28($sp)
/* 001AF4 800266F4 8FB30024 */  lw    $s3, 0x24($sp)
/* 001AF8 800266F8 8FB20020 */  lw    $s2, 0x20($sp)
/* 001AFC 800266FC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 001B00 80026700 8FB00018 */  lw    $s0, 0x18($sp)
/* 001B04 80026704 03E00008 */  jr    $ra
/* 001B08 80026708 27BD0040 */   addiu $sp, $sp, 0x40

gfxPreNMI_Callback:
/* 001B0C 8002670C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001B10 80026710 24020001 */  addiu $v0, $zero, 1
/* 001B14 80026714 AFBF0010 */  sw    $ra, 0x10($sp)
/* 001B18 80026718 3C018007 */  lui   $at, 0x8007
/* 001B1C 8002671C AC223E00 */  sw    $v0, 0x3e00($at)
/* 001B20 80026720 0C018028 */  jal   nuContRmbForceStop
/* 001B24 80026724 00000000 */   nop   
/* 001B28 80026728 8FBF0010 */  lw    $ra, 0x10($sp)
/* 001B2C 8002672C 03E00008 */  jr    $ra
/* 001B30 80026730 27BD0018 */   addiu $sp, $sp, 0x18

/* 001B34 80026734 00000000 */  nop   
/* 001B38 80026738 00000000 */  nop   
/* 001B3C 8002673C 00000000 */  nop   
