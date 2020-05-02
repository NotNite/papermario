# %s disassembly and split file
# generated by n64split v%s - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.include "globals.inc"


.section .text80066A70, "ax"

osCreateViManager:
/* 041E70 80066A70 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 041E74 80066A74 AFB40028 */  sw    $s4, 0x28($sp)
/* 041E78 80066A78 3C148009 */  lui   $s4, 0x8009
/* 041E7C 80066A7C 26944680 */  addiu $s4, $s4, 0x4680
/* 041E80 80066A80 AFBF002C */  sw    $ra, 0x2c($sp)
/* 041E84 80066A84 AFB30024 */  sw    $s3, 0x24($sp)
/* 041E88 80066A88 AFB20020 */  sw    $s2, 0x20($sp)
/* 041E8C 80066A8C AFB1001C */  sw    $s1, 0x1c($sp)
/* 041E90 80066A90 AFB00018 */  sw    $s0, 0x18($sp)
/* 041E94 80066A94 8E820000 */  lw    $v0, ($s4)
/* 041E98 80066A98 14400055 */  bnez  $v0, .L80066BF0
/* 041E9C 80066A9C 00808821 */   addu  $s1, $a0, $zero
/* 041EA0 80066AA0 0C019920 */  jal   osTimerServicesInit
/* 041EA4 80066AA4 2412FFFF */   addiu $s2, $zero, -1
/* 041EA8 80066AA8 3C13800B */  lui   $s3, 0x800b
/* 041EAC 80066AAC 26730AD0 */  addiu $s3, $s3, 0xad0
/* 041EB0 80066AB0 02602021 */  addu  $a0, $s3, $zero
/* 041EB4 80066AB4 3C05800B */  lui   $a1, 0x800b
/* 041EB8 80066AB8 24A50AE8 */  addiu $a1, $a1, 0xae8
/* 041EBC 80066ABC 3C018009 */  lui   $at, 0x8009
/* 041EC0 80066AC0 AC20469C */  sw    $zero, 0x469c($at)
/* 041EC4 80066AC4 0C019560 */  jal   osCreateMesgQueue
/* 041EC8 80066AC8 24060005 */   addiu $a2, $zero, 5
/* 041ECC 80066ACC 24040007 */  addiu $a0, $zero, 7
/* 041ED0 80066AD0 3C06800B */  lui   $a2, 0x800b
/* 041ED4 80066AD4 24C60B00 */  addiu $a2, $a2, 0xb00
/* 041ED8 80066AD8 2402000D */  addiu $v0, $zero, 0xd
/* 041EDC 80066ADC 3C10800B */  lui   $s0, 0x800b
/* 041EE0 80066AE0 26100B18 */  addiu $s0, $s0, 0xb18
/* 041EE4 80066AE4 A4C20000 */  sh    $v0, ($a2)
/* 041EE8 80066AE8 2402000E */  addiu $v0, $zero, 0xe
/* 041EEC 80066AEC 3C01800B */  lui   $at, 0x800b
/* 041EF0 80066AF0 A0200B02 */  sb    $zero, 0xb02($at)
/* 041EF4 80066AF4 3C01800B */  lui   $at, 0x800b
/* 041EF8 80066AF8 AC200B04 */  sw    $zero, 0xb04($at)
/* 041EFC 80066AFC A6020000 */  sh    $v0, ($s0)
/* 041F00 80066B00 3C01800B */  lui   $at, 0x800b
/* 041F04 80066B04 A0200B1A */  sb    $zero, 0xb1a($at)
/* 041F08 80066B08 3C01800B */  lui   $at, 0x800b
/* 041F0C 80066B0C AC200B1C */  sw    $zero, 0xb1c($at)
/* 041F10 80066B10 0C019654 */  jal   osSetEventMesg
/* 041F14 80066B14 02602821 */   addu  $a1, $s3, $zero
/* 041F18 80066B18 24040003 */  addiu $a0, $zero, 3
/* 041F1C 80066B1C 02602821 */  addu  $a1, $s3, $zero
/* 041F20 80066B20 0C019654 */  jal   osSetEventMesg
/* 041F24 80066B24 02003021 */   addu  $a2, $s0, $zero
/* 041F28 80066B28 0C0197CC */  jal   osGetThreadPri
/* 041F2C 80066B2C 00002021 */   addu  $a0, $zero, $zero
/* 041F30 80066B30 00401821 */  addu  $v1, $v0, $zero
/* 041F34 80066B34 0071102A */  slt   $v0, $v1, $s1
/* 041F38 80066B38 10400005 */  beqz  $v0, .L80066B50
/* 041F3C 80066B3C 00000000 */   nop   
/* 041F40 80066B40 00609021 */  addu  $s2, $v1, $zero
/* 041F44 80066B44 00002021 */  addu  $a0, $zero, $zero
/* 041F48 80066B48 0C0197D4 */  jal   osSetThreadPri
/* 041F4C 80066B4C 02202821 */   addu  $a1, $s1, $zero
.L80066B50:
/* 041F50 80066B50 0C01ACD8 */  jal   osDisableInt
/* 041F54 80066B54 00000000 */   nop   
/* 041F58 80066B58 3C10800B */  lui   $s0, 0x800b
/* 041F5C 80066B5C 2610F918 */  addiu $s0, $s0, -0x6e8
/* 041F60 80066B60 02002021 */  addu  $a0, $s0, $zero
/* 041F64 80066B64 00002821 */  addu  $a1, $zero, $zero
/* 041F68 80066B68 3C068006 */  lui   $a2, 0x8006
/* 041F6C 80066B6C 24C66C10 */  addiu $a2, $a2, 0x6c10
/* 041F70 80066B70 24030001 */  addiu $v1, $zero, 1
/* 041F74 80066B74 AE830000 */  sw    $v1, ($s4)
/* 041F78 80066B78 3C03800B */  lui   $v1, 0x800b
/* 041F7C 80066B7C 24630AD0 */  addiu $v1, $v1, 0xad0
/* 041F80 80066B80 AFB10014 */  sw    $s1, 0x14($sp)
/* 041F84 80066B84 00408821 */  addu  $s1, $v0, $zero
/* 041F88 80066B88 02803821 */  addu  $a3, $s4, $zero
/* 041F8C 80066B8C 3C018009 */  lui   $at, 0x8009
/* 041F90 80066B90 AC304684 */  sw    $s0, 0x4684($at)
/* 041F94 80066B94 3C018009 */  lui   $at, 0x8009
/* 041F98 80066B98 AC334688 */  sw    $s3, 0x4688($at)
/* 041F9C 80066B9C 3C018009 */  lui   $at, 0x8009
/* 041FA0 80066BA0 AC33468C */  sw    $s3, 0x468c($at)
/* 041FA4 80066BA4 3C018009 */  lui   $at, 0x8009
/* 041FA8 80066BA8 AC204690 */  sw    $zero, 0x4690($at)
/* 041FAC 80066BAC 3C018009 */  lui   $at, 0x8009
/* 041FB0 80066BB0 AC204694 */  sw    $zero, 0x4694($at)
/* 041FB4 80066BB4 3C018009 */  lui   $at, 0x8009
/* 041FB8 80066BB8 AC204698 */  sw    $zero, 0x4698($at)
/* 041FBC 80066BBC 0C019798 */  jal   osCreateThread
/* 041FC0 80066BC0 AFA30010 */   sw    $v1, 0x10($sp)
/* 041FC4 80066BC4 0C01B2A4 */  jal   osViInit
/* 041FC8 80066BC8 00000000 */   nop   
/* 041FCC 80066BCC 0C019808 */  jal   osStartThread
/* 041FD0 80066BD0 02002021 */   addu  $a0, $s0, $zero
/* 041FD4 80066BD4 0C01ACF4 */  jal   osRestoreInt
/* 041FD8 80066BD8 02202021 */   addu  $a0, $s1, $zero
/* 041FDC 80066BDC 2402FFFF */  addiu $v0, $zero, -1
/* 041FE0 80066BE0 12420003 */  beq   $s2, $v0, .L80066BF0
/* 041FE4 80066BE4 00002021 */   addu  $a0, $zero, $zero
/* 041FE8 80066BE8 0C0197D4 */  jal   osSetThreadPri
/* 041FEC 80066BEC 02402821 */   addu  $a1, $s2, $zero
.L80066BF0:
/* 041FF0 80066BF0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 041FF4 80066BF4 8FB40028 */  lw    $s4, 0x28($sp)
/* 041FF8 80066BF8 8FB30024 */  lw    $s3, 0x24($sp)
/* 041FFC 80066BFC 8FB20020 */  lw    $s2, 0x20($sp)
/* 042000 80066C00 8FB1001C */  lw    $s1, 0x1c($sp)
/* 042004 80066C04 8FB00018 */  lw    $s0, 0x18($sp)
/* 042008 80066C08 03E00008 */  jr    $ra
/* 04200C 80066C0C 27BD0030 */   addiu $sp, $sp, 0x30

viMgrMain:
/* 042010 80066C10 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 042014 80066C14 AFB00018 */  sw    $s0, 0x18($sp)
/* 042018 80066C18 00808021 */  addu  $s0, $a0, $zero
/* 04201C 80066C1C AFBF002C */  sw    $ra, 0x2c($sp)
/* 042020 80066C20 AFB40028 */  sw    $s4, 0x28($sp)
/* 042024 80066C24 AFB30024 */  sw    $s3, 0x24($sp)
/* 042028 80066C28 AFB20020 */  sw    $s2, 0x20($sp)
/* 04202C 80066C2C AFB1001C */  sw    $s1, 0x1c($sp)
/* 042030 80066C30 0C01B2E8 */  jal   osViGetCurrentContext
/* 042034 80066C34 AFA00010 */   sw    $zero, 0x10($sp)
/* 042038 80066C38 94420002 */  lhu   $v0, 2($v0)
/* 04203C 80066C3C 3C01800B */  lui   $at, 0x800b
/* 042040 80066C40 A422F910 */  sh    $v0, -0x6f0($at)
/* 042044 80066C44 14400004 */  bnez  $v0, .L80066C58
/* 042048 80066C48 00008821 */   addu  $s1, $zero, $zero
/* 04204C 80066C4C 24020001 */  addiu $v0, $zero, 1
/* 042050 80066C50 3C01800B */  lui   $at, 0x800b
/* 042054 80066C54 A422F910 */  sh    $v0, -0x6f0($at)
.L80066C58:
/* 042058 80066C58 02009021 */  addu  $s2, $s0, $zero
/* 04205C 80066C5C 2414000D */  addiu $s4, $zero, 0xd
/* 042060 80066C60 2413000E */  addiu $s3, $zero, 0xe
.L80066C64:
/* 042064 80066C64 8E44000C */  lw    $a0, 0xc($s2)
/* 042068 80066C68 27A50010 */  addiu $a1, $sp, 0x10
/* 04206C 80066C6C 0C0195BC */  jal   osRecvMesg
/* 042070 80066C70 24060001 */   addiu $a2, $zero, 1
/* 042074 80066C74 8FA20010 */  lw    $v0, 0x10($sp)
/* 042078 80066C78 94420000 */  lhu   $v0, ($v0)
/* 04207C 80066C7C 10540005 */  beq   $v0, $s4, .L80066C94
/* 042080 80066C80 00000000 */   nop   
/* 042084 80066C84 1053003C */  beq   $v0, $s3, .L80066D78
/* 042088 80066C88 00000000 */   nop   
/* 04208C 80066C8C 08019B19 */  j     .L80066C64
/* 042090 80066C90 00000000 */   nop   

.L80066C94:
/* 042094 80066C94 0C019C1C */  jal   osViSwapContext
/* 042098 80066C98 00000000 */   nop   
/* 04209C 80066C9C 3C02800B */  lui   $v0, 0x800b
/* 0420A0 80066CA0 9442F910 */  lhu   $v0, -0x6f0($v0)
/* 0420A4 80066CA4 2442FFFF */  addiu $v0, $v0, -1
/* 0420A8 80066CA8 3C01800B */  lui   $at, 0x800b
/* 0420AC 80066CAC A422F910 */  sh    $v0, -0x6f0($at)
/* 0420B0 80066CB0 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0420B4 80066CB4 1440000C */  bnez  $v0, .L80066CE8
/* 0420B8 80066CB8 00000000 */   nop   
/* 0420BC 80066CBC 0C01B2E8 */  jal   osViGetCurrentContext
/* 0420C0 80066CC0 00000000 */   nop   
/* 0420C4 80066CC4 8C440010 */  lw    $a0, 0x10($v0)
/* 0420C8 80066CC8 10800004 */  beqz  $a0, .L80066CDC
/* 0420CC 80066CCC 00408021 */   addu  $s0, $v0, $zero
/* 0420D0 80066CD0 8E050014 */  lw    $a1, 0x14($s0)
/* 0420D4 80066CD4 0C019608 */  jal   osSendMesg
/* 0420D8 80066CD8 00003021 */   addu  $a2, $zero, $zero
.L80066CDC:
/* 0420DC 80066CDC 96020002 */  lhu   $v0, 2($s0)
/* 0420E0 80066CE0 3C01800B */  lui   $at, 0x800b
/* 0420E4 80066CE4 A422F910 */  sh    $v0, -0x6f0($at)
.L80066CE8:
/* 0420E8 80066CE8 3C02800A */  lui   $v0, 0x800a
/* 0420EC 80066CEC 8C42A5E4 */  lw    $v0, -0x5a1c($v0)
/* 0420F0 80066CF0 24420001 */  addiu $v0, $v0, 1
/* 0420F4 80066CF4 3C01800A */  lui   $at, 0x800a
/* 0420F8 80066CF8 1220000A */  beqz  $s1, .L80066D24
/* 0420FC 80066CFC AC22A5E4 */   sw    $v0, -0x5a1c($at)
/* 042100 80066D00 0C019680 */  jal   osGetCount
/* 042104 80066D04 00008821 */   addu  $s1, $zero, $zero
/* 042108 80066D08 00408021 */  addu  $s0, $v0, $zero
/* 04210C 80066D0C 02001821 */  addu  $v1, $s0, $zero
/* 042110 80066D10 00001021 */  addu  $v0, $zero, $zero
/* 042114 80066D14 3C01800A */  lui   $at, 0x800a
/* 042118 80066D18 AC22A608 */  sw    $v0, -0x59f8($at)
/* 04211C 80066D1C 3C01800A */  lui   $at, 0x800a
/* 042120 80066D20 AC23A60C */  sw    $v1, -0x59f4($at)
.L80066D24:
/* 042124 80066D24 3C10800A */  lui   $s0, 0x800a
/* 042128 80066D28 0C019680 */  jal   osGetCount
/* 04212C 80066D2C 8E10A5C8 */   lw    $s0, -0x5a38($s0)
/* 042130 80066D30 3C01800A */  lui   $at, 0x800a
/* 042134 80066D34 AC22A5C8 */  sw    $v0, -0x5a38($at)
/* 042138 80066D38 00508023 */  subu  $s0, $v0, $s0
/* 04213C 80066D3C 3C02800A */  lui   $v0, 0x800a
/* 042140 80066D40 8C42A608 */  lw    $v0, -0x59f8($v0)
/* 042144 80066D44 3C03800A */  lui   $v1, 0x800a
/* 042148 80066D48 8C63A60C */  lw    $v1, -0x59f4($v1)
/* 04214C 80066D4C 02002821 */  addu  $a1, $s0, $zero
/* 042150 80066D50 00002021 */  addu  $a0, $zero, $zero
/* 042154 80066D54 00651821 */  addu  $v1, $v1, $a1
/* 042158 80066D58 0065302B */  sltu  $a2, $v1, $a1
/* 04215C 80066D5C 00441021 */  addu  $v0, $v0, $a0
/* 042160 80066D60 00461021 */  addu  $v0, $v0, $a2
/* 042164 80066D64 3C01800A */  lui   $at, 0x800a
/* 042168 80066D68 AC22A608 */  sw    $v0, -0x59f8($at)
/* 04216C 80066D6C 3C01800A */  lui   $at, 0x800a
/* 042170 80066D70 08019B19 */  j     .L80066C64
/* 042174 80066D74 AC23A60C */   sw    $v1, -0x59f4($at)

.L80066D78:
/* 042178 80066D78 0C019935 */  jal   osTimerInterrupt
/* 04217C 80066D7C 00000000 */   nop   
/* 042180 80066D80 08019B19 */  j     .L80066C64
/* 042184 80066D84 00000000 */   nop   

/* 042188 80066D88 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04218C 80066D8C 8FB40028 */  lw    $s4, 0x28($sp)
/* 042190 80066D90 8FB30024 */  lw    $s3, 0x24($sp)
/* 042194 80066D94 8FB20020 */  lw    $s2, 0x20($sp)
/* 042198 80066D98 8FB1001C */  lw    $s1, 0x1c($sp)
/* 04219C 80066D9C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0421A0 80066DA0 03E00008 */  jr    $ra
/* 0421A4 80066DA4 27BD0030 */   addiu $sp, $sp, 0x30

/* 0421A8 80066DA8 00000000 */  nop   
/* 0421AC 80066DAC 00000000 */  nop   
