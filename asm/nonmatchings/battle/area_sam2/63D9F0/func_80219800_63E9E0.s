.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80219800_63E9E0
/* 63E9E0 80219800 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 63E9E4 80219804 AFB60038 */  sw        $s6, 0x38($sp)
/* 63E9E8 80219808 0080B02D */  daddu     $s6, $a0, $zero
/* 63E9EC 8021980C 27A50010 */  addiu     $a1, $sp, 0x10
/* 63E9F0 80219810 27A60014 */  addiu     $a2, $sp, 0x14
/* 63E9F4 80219814 27A70018 */  addiu     $a3, $sp, 0x18
/* 63E9F8 80219818 AFBF003C */  sw        $ra, 0x3c($sp)
/* 63E9FC 8021981C AFB50034 */  sw        $s5, 0x34($sp)
/* 63EA00 80219820 AFB40030 */  sw        $s4, 0x30($sp)
/* 63EA04 80219824 AFB3002C */  sw        $s3, 0x2c($sp)
/* 63EA08 80219828 AFB20028 */  sw        $s2, 0x28($sp)
/* 63EA0C 8021982C AFB10024 */  sw        $s1, 0x24($sp)
/* 63EA10 80219830 0C0470AC */  jal       func_8011C2B0
/* 63EA14 80219834 AFB00020 */   sw       $s0, 0x20($sp)
/* 63EA18 80219838 8FA20018 */  lw        $v0, 0x18($sp)
/* 63EA1C 8021983C 18400052 */  blez      $v0, .L80219988
/* 63EA20 80219840 0000802D */   daddu    $s0, $zero, $zero
/* 63EA24 80219844 3C038022 */  lui       $v1, %hi(D_80222D00)
/* 63EA28 80219848 24632D00 */  addiu     $v1, $v1, %lo(D_80222D00)
/* 63EA2C 8021984C 00161040 */  sll       $v0, $s6, 1
/* 63EA30 80219850 0043A021 */  addu      $s4, $v0, $v1
/* 63EA34 80219854 3C135555 */  lui       $s3, 0x5555
/* 63EA38 80219858 36735556 */  ori       $s3, $s3, 0x5556
/* 63EA3C 8021985C 34158000 */  ori       $s5, $zero, 0x8000
/* 63EA40 80219860 02130018 */  mult      $s0, $s3
.L80219864:
/* 63EA44 80219864 001097C3 */  sra       $s2, $s0, 0x1f
/* 63EA48 80219868 00001810 */  mfhi      $v1
/* 63EA4C 8021986C 00721823 */  subu      $v1, $v1, $s2
/* 63EA50 80219870 00031040 */  sll       $v0, $v1, 1
/* 63EA54 80219874 00431021 */  addu      $v0, $v0, $v1
/* 63EA58 80219878 02021023 */  subu      $v0, $s0, $v0
/* 63EA5C 8021987C 96830000 */  lhu       $v1, ($s4)
/* 63EA60 80219880 24420001 */  addiu     $v0, $v0, 1
/* 63EA64 80219884 00620018 */  mult      $v1, $v0
/* 63EA68 80219888 00101100 */  sll       $v0, $s0, 4
/* 63EA6C 8021988C 00001812 */  mflo      $v1
/* 63EA70 80219890 00702021 */  addu      $a0, $v1, $s0
/* 63EA74 80219894 8FA30014 */  lw        $v1, 0x14($sp)
/* 63EA78 80219898 3084FFFF */  andi      $a0, $a0, 0xffff
/* 63EA7C 8021989C 0C01917C */  jal       sins
/* 63EA80 802198A0 00628821 */   addu     $s1, $v1, $v0
/* 63EA84 802198A4 00021400 */  sll       $v0, $v0, 0x10
/* 63EA88 802198A8 00021403 */  sra       $v0, $v0, 0x10
/* 63EA8C 802198AC 00551021 */  addu      $v0, $v0, $s5
/* 63EA90 802198B0 00021FC2 */  srl       $v1, $v0, 0x1f
/* 63EA94 802198B4 00431021 */  addu      $v0, $v0, $v1
/* 63EA98 802198B8 000213C0 */  sll       $v0, $v0, 0xf
/* 63EA9C 802198BC 00021403 */  sra       $v0, $v0, 0x10
/* 63EAA0 802198C0 00021880 */  sll       $v1, $v0, 2
/* 63EAA4 802198C4 00621821 */  addu      $v1, $v1, $v0
/* 63EAA8 802198C8 00031140 */  sll       $v0, $v1, 5
/* 63EAAC 802198CC 00431823 */  subu      $v1, $v0, $v1
/* 63EAB0 802198D0 04610002 */  bgez      $v1, .L802198DC
/* 63EAB4 802198D4 0060102D */   daddu    $v0, $v1, $zero
/* 63EAB8 802198D8 24627FFF */  addiu     $v0, $v1, 0x7fff
.L802198DC:
/* 63EABC 802198DC 000223C3 */  sra       $a0, $v0, 0xf
/* 63EAC0 802198E0 24820064 */  addiu     $v0, $a0, 0x64
/* 63EAC4 802198E4 A222000E */  sb        $v0, 0xe($s1)
/* 63EAC8 802198E8 24820032 */  addiu     $v0, $a0, 0x32
/* 63EACC 802198EC 02121823 */  subu      $v1, $s0, $s2
/* 63EAD0 802198F0 00032843 */  sra       $a1, $v1, 1
/* 63EAD4 802198F4 00B30018 */  mult      $a1, $s3
/* 63EAD8 802198F8 A222000D */  sb        $v0, 0xd($s1)
/* 63EADC 802198FC 96840000 */  lhu       $a0, ($s4)
/* 63EAE0 80219900 00031FC3 */  sra       $v1, $v1, 0x1f
/* 63EAE4 80219904 000433C2 */  srl       $a2, $a0, 0xf
/* 63EAE8 80219908 00004810 */  mfhi      $t1
/* 63EAEC 8021990C 01231823 */  subu      $v1, $t1, $v1
/* 63EAF0 80219910 00031040 */  sll       $v0, $v1, 1
/* 63EAF4 80219914 00431021 */  addu      $v0, $v0, $v1
/* 63EAF8 80219918 00A22823 */  subu      $a1, $a1, $v0
/* 63EAFC 8021991C 24A50001 */  addiu     $a1, $a1, 1
/* 63EB00 80219920 00052BC0 */  sll       $a1, $a1, 0xf
/* 63EB04 80219924 00C50018 */  mult      $a2, $a1
/* 63EB08 80219928 00042382 */  srl       $a0, $a0, 0xe
/* 63EB0C 8021992C 000423C0 */  sll       $a0, $a0, 0xf
/* 63EB10 80219930 00001812 */  mflo      $v1
/* 63EB14 80219934 00642021 */  addu      $a0, $v1, $a0
/* 63EB18 80219938 00902021 */  addu      $a0, $a0, $s0
/* 63EB1C 8021993C 0C01917C */  jal       sins
/* 63EB20 80219940 3084FFFF */   andi     $a0, $a0, 0xffff
/* 63EB24 80219944 00021400 */  sll       $v0, $v0, 0x10
/* 63EB28 80219948 00021403 */  sra       $v0, $v0, 0x10
/* 63EB2C 8021994C 9223000C */  lbu       $v1, 0xc($s1)
/* 63EB30 80219950 00551021 */  addu      $v0, $v0, $s5
/* 63EB34 80219954 00620018 */  mult      $v1, $v0
/* 63EB38 80219958 00001812 */  mflo      $v1
/* 63EB3C 8021995C 04610004 */  bgez      $v1, .L80219970
/* 63EB40 80219960 00031403 */   sra      $v0, $v1, 0x10
/* 63EB44 80219964 3402FFFF */  ori       $v0, $zero, 0xffff
/* 63EB48 80219968 00621821 */  addu      $v1, $v1, $v0
/* 63EB4C 8021996C 00031403 */  sra       $v0, $v1, 0x10
.L80219970:
/* 63EB50 80219970 A222000C */  sb        $v0, 0xc($s1)
/* 63EB54 80219974 8FA20018 */  lw        $v0, 0x18($sp)
/* 63EB58 80219978 26100001 */  addiu     $s0, $s0, 1
/* 63EB5C 8021997C 0202102A */  slt       $v0, $s0, $v0
/* 63EB60 80219980 1440FFB8 */  bnez      $v0, .L80219864
/* 63EB64 80219984 02130018 */   mult     $s0, $s3
.L80219988:
/* 63EB68 80219988 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* 63EB6C 8021998C 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 63EB70 80219990 8C620000 */  lw        $v0, ($v1)
/* 63EB74 80219994 02C0202D */  daddu     $a0, $s6, $zero
/* 63EB78 80219998 0040802D */  daddu     $s0, $v0, $zero
/* 63EB7C 8021999C 24420008 */  addiu     $v0, $v0, 8
/* 63EB80 802199A0 AC620000 */  sw        $v0, ($v1)
/* 63EB84 802199A4 3C02DE00 */  lui       $v0, 0xde00
/* 63EB88 802199A8 0C0470BB */  jal       func_8011C2EC
/* 63EB8C 802199AC AE020000 */   sw       $v0, ($s0)
/* 63EB90 802199B0 AE020004 */  sw        $v0, 4($s0)
/* 63EB94 802199B4 3C028022 */  lui       $v0, %hi(D_80222D00)
/* 63EB98 802199B8 24422D00 */  addiu     $v0, $v0, %lo(D_80222D00)
/* 63EB9C 802199BC 00161840 */  sll       $v1, $s6, 1
/* 63EBA0 802199C0 00621821 */  addu      $v1, $v1, $v0
/* 63EBA4 802199C4 94620000 */  lhu       $v0, ($v1)
/* 63EBA8 802199C8 24420253 */  addiu     $v0, $v0, 0x253
/* 63EBAC 802199CC A4620000 */  sh        $v0, ($v1)
/* 63EBB0 802199D0 8FBF003C */  lw        $ra, 0x3c($sp)
/* 63EBB4 802199D4 8FB60038 */  lw        $s6, 0x38($sp)
/* 63EBB8 802199D8 8FB50034 */  lw        $s5, 0x34($sp)
/* 63EBBC 802199DC 8FB40030 */  lw        $s4, 0x30($sp)
/* 63EBC0 802199E0 8FB3002C */  lw        $s3, 0x2c($sp)
/* 63EBC4 802199E4 8FB20028 */  lw        $s2, 0x28($sp)
/* 63EBC8 802199E8 8FB10024 */  lw        $s1, 0x24($sp)
/* 63EBCC 802199EC 8FB00020 */  lw        $s0, 0x20($sp)
/* 63EBD0 802199F0 03E00008 */  jr        $ra
/* 63EBD4 802199F4 27BD0040 */   addiu    $sp, $sp, 0x40
