.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8021A830_6263D0
/* 6263D0 8021A830 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 6263D4 8021A834 AFB60038 */  sw        $s6, 0x38($sp)
/* 6263D8 8021A838 0080B02D */  daddu     $s6, $a0, $zero
/* 6263DC 8021A83C 27A50010 */  addiu     $a1, $sp, 0x10
/* 6263E0 8021A840 27A60014 */  addiu     $a2, $sp, 0x14
/* 6263E4 8021A844 27A70018 */  addiu     $a3, $sp, 0x18
/* 6263E8 8021A848 AFBF003C */  sw        $ra, 0x3c($sp)
/* 6263EC 8021A84C AFB50034 */  sw        $s5, 0x34($sp)
/* 6263F0 8021A850 AFB40030 */  sw        $s4, 0x30($sp)
/* 6263F4 8021A854 AFB3002C */  sw        $s3, 0x2c($sp)
/* 6263F8 8021A858 AFB20028 */  sw        $s2, 0x28($sp)
/* 6263FC 8021A85C AFB10024 */  sw        $s1, 0x24($sp)
/* 626400 8021A860 0C0470AC */  jal       func_8011C2B0
/* 626404 8021A864 AFB00020 */   sw       $s0, 0x20($sp)
/* 626408 8021A868 8FA20018 */  lw        $v0, 0x18($sp)
/* 62640C 8021A86C 18400052 */  blez      $v0, .L8021A9B8
/* 626410 8021A870 0000802D */   daddu    $s0, $zero, $zero
/* 626414 8021A874 3C038023 */  lui       $v1, %hi(D_8022FEE0)
/* 626418 8021A878 2463FEE0 */  addiu     $v1, $v1, %lo(D_8022FEE0)
/* 62641C 8021A87C 00161040 */  sll       $v0, $s6, 1
/* 626420 8021A880 0043A021 */  addu      $s4, $v0, $v1
/* 626424 8021A884 3C135555 */  lui       $s3, 0x5555
/* 626428 8021A888 36735556 */  ori       $s3, $s3, 0x5556
/* 62642C 8021A88C 34158000 */  ori       $s5, $zero, 0x8000
/* 626430 8021A890 02130018 */  mult      $s0, $s3
.L8021A894:
/* 626434 8021A894 001097C3 */  sra       $s2, $s0, 0x1f
/* 626438 8021A898 00001810 */  mfhi      $v1
/* 62643C 8021A89C 00721823 */  subu      $v1, $v1, $s2
/* 626440 8021A8A0 00031040 */  sll       $v0, $v1, 1
/* 626444 8021A8A4 00431021 */  addu      $v0, $v0, $v1
/* 626448 8021A8A8 02021023 */  subu      $v0, $s0, $v0
/* 62644C 8021A8AC 96830000 */  lhu       $v1, ($s4)
/* 626450 8021A8B0 24420001 */  addiu     $v0, $v0, 1
/* 626454 8021A8B4 00620018 */  mult      $v1, $v0
/* 626458 8021A8B8 00101100 */  sll       $v0, $s0, 4
/* 62645C 8021A8BC 00001812 */  mflo      $v1
/* 626460 8021A8C0 00702021 */  addu      $a0, $v1, $s0
/* 626464 8021A8C4 8FA30014 */  lw        $v1, 0x14($sp)
/* 626468 8021A8C8 3084FFFF */  andi      $a0, $a0, 0xffff
/* 62646C 8021A8CC 0C01917C */  jal       sins
/* 626470 8021A8D0 00628821 */   addu     $s1, $v1, $v0
/* 626474 8021A8D4 00021400 */  sll       $v0, $v0, 0x10
/* 626478 8021A8D8 00021403 */  sra       $v0, $v0, 0x10
/* 62647C 8021A8DC 00551021 */  addu      $v0, $v0, $s5
/* 626480 8021A8E0 00021FC2 */  srl       $v1, $v0, 0x1f
/* 626484 8021A8E4 00431021 */  addu      $v0, $v0, $v1
/* 626488 8021A8E8 000213C0 */  sll       $v0, $v0, 0xf
/* 62648C 8021A8EC 00021403 */  sra       $v0, $v0, 0x10
/* 626490 8021A8F0 00021880 */  sll       $v1, $v0, 2
/* 626494 8021A8F4 00621821 */  addu      $v1, $v1, $v0
/* 626498 8021A8F8 00031140 */  sll       $v0, $v1, 5
/* 62649C 8021A8FC 00431823 */  subu      $v1, $v0, $v1
/* 6264A0 8021A900 04610002 */  bgez      $v1, .L8021A90C
/* 6264A4 8021A904 0060102D */   daddu    $v0, $v1, $zero
/* 6264A8 8021A908 24627FFF */  addiu     $v0, $v1, 0x7fff
.L8021A90C:
/* 6264AC 8021A90C 000223C3 */  sra       $a0, $v0, 0xf
/* 6264B0 8021A910 24820064 */  addiu     $v0, $a0, 0x64
/* 6264B4 8021A914 A222000E */  sb        $v0, 0xe($s1)
/* 6264B8 8021A918 24820032 */  addiu     $v0, $a0, 0x32
/* 6264BC 8021A91C 02121823 */  subu      $v1, $s0, $s2
/* 6264C0 8021A920 00032843 */  sra       $a1, $v1, 1
/* 6264C4 8021A924 00B30018 */  mult      $a1, $s3
/* 6264C8 8021A928 A222000D */  sb        $v0, 0xd($s1)
/* 6264CC 8021A92C 96840000 */  lhu       $a0, ($s4)
/* 6264D0 8021A930 00031FC3 */  sra       $v1, $v1, 0x1f
/* 6264D4 8021A934 000433C2 */  srl       $a2, $a0, 0xf
/* 6264D8 8021A938 00004810 */  mfhi      $t1
/* 6264DC 8021A93C 01231823 */  subu      $v1, $t1, $v1
/* 6264E0 8021A940 00031040 */  sll       $v0, $v1, 1
/* 6264E4 8021A944 00431021 */  addu      $v0, $v0, $v1
/* 6264E8 8021A948 00A22823 */  subu      $a1, $a1, $v0
/* 6264EC 8021A94C 24A50001 */  addiu     $a1, $a1, 1
/* 6264F0 8021A950 00052BC0 */  sll       $a1, $a1, 0xf
/* 6264F4 8021A954 00C50018 */  mult      $a2, $a1
/* 6264F8 8021A958 00042382 */  srl       $a0, $a0, 0xe
/* 6264FC 8021A95C 000423C0 */  sll       $a0, $a0, 0xf
/* 626500 8021A960 00001812 */  mflo      $v1
/* 626504 8021A964 00642021 */  addu      $a0, $v1, $a0
/* 626508 8021A968 00902021 */  addu      $a0, $a0, $s0
/* 62650C 8021A96C 0C01917C */  jal       sins
/* 626510 8021A970 3084FFFF */   andi     $a0, $a0, 0xffff
/* 626514 8021A974 00021400 */  sll       $v0, $v0, 0x10
/* 626518 8021A978 00021403 */  sra       $v0, $v0, 0x10
/* 62651C 8021A97C 9223000C */  lbu       $v1, 0xc($s1)
/* 626520 8021A980 00551021 */  addu      $v0, $v0, $s5
/* 626524 8021A984 00620018 */  mult      $v1, $v0
/* 626528 8021A988 00001812 */  mflo      $v1
/* 62652C 8021A98C 04610004 */  bgez      $v1, .L8021A9A0
/* 626530 8021A990 00031403 */   sra      $v0, $v1, 0x10
/* 626534 8021A994 3402FFFF */  ori       $v0, $zero, 0xffff
/* 626538 8021A998 00621821 */  addu      $v1, $v1, $v0
/* 62653C 8021A99C 00031403 */  sra       $v0, $v1, 0x10
.L8021A9A0:
/* 626540 8021A9A0 A222000C */  sb        $v0, 0xc($s1)
/* 626544 8021A9A4 8FA20018 */  lw        $v0, 0x18($sp)
/* 626548 8021A9A8 26100001 */  addiu     $s0, $s0, 1
/* 62654C 8021A9AC 0202102A */  slt       $v0, $s0, $v0
/* 626550 8021A9B0 1440FFB8 */  bnez      $v0, .L8021A894
/* 626554 8021A9B4 02130018 */   mult     $s0, $s3
.L8021A9B8:
/* 626558 8021A9B8 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* 62655C 8021A9BC 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 626560 8021A9C0 8C620000 */  lw        $v0, ($v1)
/* 626564 8021A9C4 02C0202D */  daddu     $a0, $s6, $zero
/* 626568 8021A9C8 0040802D */  daddu     $s0, $v0, $zero
/* 62656C 8021A9CC 24420008 */  addiu     $v0, $v0, 8
/* 626570 8021A9D0 AC620000 */  sw        $v0, ($v1)
/* 626574 8021A9D4 3C02DE00 */  lui       $v0, 0xde00
/* 626578 8021A9D8 0C0470BB */  jal       func_8011C2EC
/* 62657C 8021A9DC AE020000 */   sw       $v0, ($s0)
/* 626580 8021A9E0 AE020004 */  sw        $v0, 4($s0)
/* 626584 8021A9E4 3C028023 */  lui       $v0, %hi(D_8022FEE0)
/* 626588 8021A9E8 2442FEE0 */  addiu     $v0, $v0, %lo(D_8022FEE0)
/* 62658C 8021A9EC 00161840 */  sll       $v1, $s6, 1
/* 626590 8021A9F0 00621821 */  addu      $v1, $v1, $v0
/* 626594 8021A9F4 94620000 */  lhu       $v0, ($v1)
/* 626598 8021A9F8 24420253 */  addiu     $v0, $v0, 0x253
/* 62659C 8021A9FC A4620000 */  sh        $v0, ($v1)
/* 6265A0 8021AA00 8FBF003C */  lw        $ra, 0x3c($sp)
/* 6265A4 8021AA04 8FB60038 */  lw        $s6, 0x38($sp)
/* 6265A8 8021AA08 8FB50034 */  lw        $s5, 0x34($sp)
/* 6265AC 8021AA0C 8FB40030 */  lw        $s4, 0x30($sp)
/* 6265B0 8021AA10 8FB3002C */  lw        $s3, 0x2c($sp)
/* 6265B4 8021AA14 8FB20028 */  lw        $s2, 0x28($sp)
/* 6265B8 8021AA18 8FB10024 */  lw        $s1, 0x24($sp)
/* 6265BC 8021AA1C 8FB00020 */  lw        $s0, 0x20($sp)
/* 6265C0 8021AA20 03E00008 */  jr        $ra
/* 6265C4 8021AA24 27BD0040 */   addiu    $sp, $sp, 0x40
