.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004455C
/* 1F95C 8004455C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 1F960 80044560 AFBF0028 */  sw        $ra, 0x28($sp)
/* 1F964 80044564 AFB50024 */  sw        $s5, 0x24($sp)
/* 1F968 80044568 AFB40020 */  sw        $s4, 0x20($sp)
/* 1F96C 8004456C AFB3001C */  sw        $s3, 0x1c($sp)
/* 1F970 80044570 AFB20018 */  sw        $s2, 0x18($sp)
/* 1F974 80044574 AFB10014 */  sw        $s1, 0x14($sp)
/* 1F978 80044578 AFB00010 */  sw        $s0, 0x10($sp)
/* 1F97C 8004457C 8C82000C */  lw        $v0, 0xc($a0)
/* 1F980 80044580 8C450000 */  lw        $a1, ($v0)
/* 1F984 80044584 0C0B1EAF */  jal       func_802C7ABC
/* 1F988 80044588 8C910148 */   lw       $s1, 0x148($a0)
/* 1F98C 8004458C 24040001 */  addiu     $a0, $zero, 1
/* 1F990 80044590 0C0B1192 */  jal       func_802C4648
/* 1F994 80044594 0040802D */   daddu    $s0, $v0, $zero
/* 1F998 80044598 3C13800B */  lui       $s3, %hi(D_800B0EF0)
/* 1F99C 8004459C 26730EF0 */  addiu     $s3, $s3, %lo(D_800B0EF0)
/* 1F9A0 800445A0 24030001 */  addiu     $v1, $zero, 1
/* 1F9A4 800445A4 A2630005 */  sb        $v1, 5($s3)
/* 1F9A8 800445A8 A2230005 */  sb        $v1, 5($s1)
/* 1F9AC 800445AC AE71008C */  sw        $s1, 0x8c($s3)
/* 1F9B0 800445B0 82220004 */  lb        $v0, 4($s1)
/* 1F9B4 800445B4 00021080 */  sll       $v0, $v0, 2
/* 1F9B8 800445B8 00531021 */  addu      $v0, $v0, $s3
/* 1F9BC 800445BC 8C440028 */  lw        $a0, 0x28($v0)
/* 1F9C0 800445C0 2402FFFF */  addiu     $v0, $zero, -1
/* 1F9C4 800445C4 A2600004 */  sb        $zero, 4($s3)
/* 1F9C8 800445C8 A2630011 */  sb        $v1, 0x11($s3)
/* 1F9CC 800445CC AE700014 */  sw        $s0, 0x14($s3)
/* 1F9D0 800445D0 AE620018 */  sw        $v0, 0x18($s3)
/* 1F9D4 800445D4 AE640088 */  sw        $a0, 0x88($s3)
/* 1F9D8 800445D8 8E22003C */  lw        $v0, 0x3c($s1)
/* 1F9DC 800445DC 10400003 */  beqz      $v0, .L800445EC
/* 1F9E0 800445E0 00000000 */   nop
/* 1F9E4 800445E4 0C0B1108 */  jal       func_802C4420
/* 1F9E8 800445E8 8E240054 */   lw       $a0, 0x54($s1)
.L800445EC:
/* 1F9EC 800445EC 8E220044 */  lw        $v0, 0x44($s1)
/* 1F9F0 800445F0 10400003 */  beqz      $v0, .L80044600
/* 1F9F4 800445F4 00000000 */   nop
/* 1F9F8 800445F8 0C0B1108 */  jal       func_802C4420
/* 1F9FC 800445FC 8E24005C */   lw       $a0, 0x5c($s1)
.L80044600:
/* 1FA00 80044600 0C038056 */  jal       func_800E0158
/* 1FA04 80044604 0000802D */   daddu    $s0, $zero, $zero
/* 1FA08 80044608 0C03BD6F */  jal       func_800EF5BC
/* 1FA0C 8004460C 00000000 */   nop
/* 1FA10 80044610 8E740088 */  lw        $s4, 0x88($s3)
/* 1FA14 80044614 8E820000 */  lw        $v0, ($s4)
/* 1FA18 80044618 18400021 */  blez      $v0, .L800446A0
/* 1FA1C 8004461C 24150001 */   addiu    $s5, $zero, 1
/* 1FA20 80044620 0280902D */  daddu     $s2, $s4, $zero
.L80044624:
/* 1FA24 80044624 8E510004 */  lw        $s1, 4($s2)
/* 1FA28 80044628 12200018 */  beqz      $s1, .L8004468C
/* 1FA2C 8004462C 00000000 */   nop
/* 1FA30 80044630 8E220000 */  lw        $v0, ($s1)
/* 1FA34 80044634 30420008 */  andi      $v0, $v0, 8
/* 1FA38 80044638 10400004 */  beqz      $v0, .L8004464C
/* 1FA3C 8004463C 00000000 */   nop
/* 1FA40 80044640 8E62008C */  lw        $v0, 0x8c($s3)
/* 1FA44 80044644 16220011 */  bne       $s1, $v0, .L8004468C
/* 1FA48 80044648 00000000 */   nop
.L8004464C:
/* 1FA4C 8004464C 8E220028 */  lw        $v0, 0x28($s1)
/* 1FA50 80044650 1040000E */  beqz      $v0, .L8004468C
/* 1FA54 80044654 0040202D */   daddu    $a0, $v0, $zero
/* 1FA58 80044658 2405000A */  addiu     $a1, $zero, 0xa
/* 1FA5C 8004465C 0000302D */  daddu     $a2, $zero, $zero
/* 1FA60 80044660 0C0B0CF8 */  jal       func_802C33E0
/* 1FA64 80044664 A2350005 */   sb       $s5, 5($s1)
/* 1FA68 80044668 0040202D */  daddu     $a0, $v0, $zero
/* 1FA6C 8004466C AE240040 */  sw        $a0, 0x40($s1)
/* 1FA70 80044670 8C820144 */  lw        $v0, 0x144($a0)
/* 1FA74 80044674 AE220058 */  sw        $v0, 0x58($s1)
/* 1FA78 80044678 AC910148 */  sw        $s1, 0x148($a0)
/* 1FA7C 8004467C 86220008 */  lh        $v0, 8($s1)
/* 1FA80 80044680 AC82014C */  sw        $v0, 0x14c($a0)
/* 1FA84 80044684 92220006 */  lbu       $v0, 6($s1)
/* 1FA88 80044688 A0820004 */  sb        $v0, 4($a0)
.L8004468C:
/* 1FA8C 8004468C 8E820000 */  lw        $v0, ($s4)
/* 1FA90 80044690 26100001 */  addiu     $s0, $s0, 1
/* 1FA94 80044694 0202102A */  slt       $v0, $s0, $v0
/* 1FA98 80044698 1440FFE2 */  bnez      $v0, .L80044624
/* 1FA9C 8004469C 26520004 */   addiu    $s2, $s2, 4
.L800446A0:
/* 1FAA0 800446A0 24020001 */  addiu     $v0, $zero, 1
/* 1FAA4 800446A4 0040182D */  daddu     $v1, $v0, $zero
/* 1FAA8 800446A8 AE600090 */  sw        $zero, 0x90($s3)
/* 1FAAC 800446AC AE600094 */  sw        $zero, 0x94($s3)
/* 1FAB0 800446B0 A2630012 */  sb        $v1, 0x12($s3)
/* 1FAB4 800446B4 8FBF0028 */  lw        $ra, 0x28($sp)
/* 1FAB8 800446B8 8FB50024 */  lw        $s5, 0x24($sp)
/* 1FABC 800446BC 8FB40020 */  lw        $s4, 0x20($sp)
/* 1FAC0 800446C0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1FAC4 800446C4 8FB20018 */  lw        $s2, 0x18($sp)
/* 1FAC8 800446C8 8FB10014 */  lw        $s1, 0x14($sp)
/* 1FACC 800446CC 8FB00010 */  lw        $s0, 0x10($sp)
/* 1FAD0 800446D0 24030003 */  addiu     $v1, $zero, 3
/* 1FAD4 800446D4 3C01800A */  lui       $at, %hi(D_8009A5E0)
/* 1FAD8 800446D8 AC23A5E0 */  sw        $v1, %lo(D_8009A5E0)($at)
/* 1FADC 800446DC 0040182D */  daddu     $v1, $v0, $zero
/* 1FAE0 800446E0 3C01800A */  lui       $at, %hi(D_8009A658)
/* 1FAE4 800446E4 AC23A658 */  sw        $v1, %lo(D_8009A658)($at)
/* 1FAE8 800446E8 3C01800A */  lui       $at, %hi(D_8009A5B0)
/* 1FAEC 800446EC AC20A5B0 */  sw        $zero, %lo(D_8009A5B0)($at)
/* 1FAF0 800446F0 03E00008 */  jr        $ra
/* 1FAF4 800446F4 27BD0030 */   addiu    $sp, $sp, 0x30