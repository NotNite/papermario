.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A96F4_4231C4
/* 4231C4 802A96F4 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 4231C8 802A96F8 AFB20020 */  sw        $s2, 0x20($sp)
/* 4231CC 802A96FC 3C1251EB */  lui       $s2, 0x51eb
/* 4231D0 802A9700 3652851F */  ori       $s2, $s2, 0x851f
/* 4231D4 802A9704 AFB1001C */  sw        $s1, 0x1c($sp)
/* 4231D8 802A9708 3C11802A */  lui       $s1, %hi(D_8029FBE0)
/* 4231DC 802A970C 2631FBE0 */  addiu     $s1, $s1, %lo(D_8029FBE0)
/* 4231E0 802A9710 AFBF0024 */  sw        $ra, 0x24($sp)
/* 4231E4 802A9714 AFB00018 */  sw        $s0, 0x18($sp)
/* 4231E8 802A9718 86230046 */  lh        $v1, 0x46($s1)
/* 4231EC 802A971C 24020064 */  addiu     $v0, $zero, 0x64
/* 4231F0 802A9720 00431023 */  subu      $v0, $v0, $v1
/* 4231F4 802A9724 00021900 */  sll       $v1, $v0, 4
/* 4231F8 802A9728 00621823 */  subu      $v1, $v1, $v0
/* 4231FC 802A972C 00031880 */  sll       $v1, $v1, 2
/* 423200 802A9730 00720018 */  mult      $v1, $s2
/* 423204 802A9734 86260058 */  lh        $a2, 0x58($s1)
/* 423208 802A9738 8E240010 */  lw        $a0, 0x10($s1)
/* 42320C 802A973C 24C60011 */  addiu     $a2, $a2, 0x11
/* 423210 802A9740 00031FC3 */  sra       $v1, $v1, 0x1f
/* 423214 802A9744 00004010 */  mfhi      $t0
/* 423218 802A9748 00081143 */  sra       $v0, $t0, 5
/* 42321C 802A974C 00431023 */  subu      $v0, $v0, $v1
/* 423220 802A9750 2403003C */  addiu     $v1, $zero, 0x3c
/* 423224 802A9754 00621823 */  subu      $v1, $v1, $v0
/* 423228 802A9758 86220056 */  lh        $v0, 0x56($s1)
/* 42322C 802A975C 2465FFE1 */  addiu     $a1, $v1, -0x1f
/* 423230 802A9760 AFA30010 */  sw        $v1, 0x10($sp)
/* 423234 802A9764 0C051261 */  jal       set_icon_render_pos
/* 423238 802A9768 00452823 */   subu     $a1, $v0, $a1
/* 42323C 802A976C 8FA50010 */  lw        $a1, 0x10($sp)
/* 423240 802A9770 8E24000C */  lw        $a0, 0xc($s1)
/* 423244 802A9774 86220056 */  lh        $v0, 0x56($s1)
/* 423248 802A9778 86260058 */  lh        $a2, 0x58($s1)
/* 42324C 802A977C 24A5FFE1 */  addiu     $a1, $a1, -0x1f
/* 423250 802A9780 00452823 */  subu      $a1, $v0, $a1
/* 423254 802A9784 0C051261 */  jal       set_icon_render_pos
/* 423258 802A9788 24C6FFFF */   addiu    $a2, $a2, -1
/* 42325C 802A978C 3C02800E */  lui       $v0, %hi(gBattleStatus+0x83)
/* 423260 802A9790 8042C0F3 */  lb        $v0, %lo(gBattleStatus+0x83)($v0)
/* 423264 802A9794 10400003 */  beqz      $v0, .L802A97A4
/* 423268 802A9798 00000000 */   nop
/* 42326C 802A979C 0C0511EA */  jal       draw_icon_0
/* 423270 802A97A0 8E240004 */   lw       $a0, 4($s1)
.L802A97A4:
/* 423274 802A97A4 8E300008 */  lw        $s0, 8($s1)
/* 423278 802A97A8 0C0511EA */  jal       draw_icon_0
/* 42327C 802A97AC 0200202D */   daddu    $a0, $s0, $zero
/* 423280 802A97B0 0200202D */  daddu     $a0, $s0, $zero
/* 423284 802A97B4 27A50010 */  addiu     $a1, $sp, 0x10
/* 423288 802A97B8 0C05126B */  jal       get_icon_render_pos
/* 42328C 802A97BC 27A60014 */   addiu    $a2, $sp, 0x14
/* 423290 802A97C0 3C02802B */  lui       $v0, %hi(D_802A9920)
/* 423294 802A97C4 8C429920 */  lw        $v0, %lo(D_802A9920)($v0)
/* 423298 802A97C8 14400006 */  bnez      $v0, .L802A97E4
/* 42329C 802A97CC 24070001 */   addiu    $a3, $zero, 1
/* 4232A0 802A97D0 96230044 */  lhu       $v1, 0x44($s1)
/* 4232A4 802A97D4 00031C00 */  sll       $v1, $v1, 0x10
/* 4232A8 802A97D8 00031403 */  sra       $v0, $v1, 0x10
/* 4232AC 802A97DC 080AA600 */  j         .L802A9800
/* 4232B0 802A97E0 00520018 */   mult     $v0, $s2
.L802A97E4:
/* 4232B4 802A97E4 86220068 */  lh        $v0, 0x68($s1)
/* 4232B8 802A97E8 14400010 */  bnez      $v0, .L802A982C
/* 4232BC 802A97EC 24070004 */   addiu    $a3, $zero, 4
/* 4232C0 802A97F0 96230044 */  lhu       $v1, 0x44($s1)
/* 4232C4 802A97F4 00031C00 */  sll       $v1, $v1, 0x10
/* 4232C8 802A97F8 00031403 */  sra       $v0, $v1, 0x10
/* 4232CC 802A97FC 00520018 */  mult      $v0, $s2
.L802A9800:
/* 4232D0 802A9800 8FA40010 */  lw        $a0, 0x10($sp)
/* 4232D4 802A9804 8FA50014 */  lw        $a1, 0x14($sp)
/* 4232D8 802A9808 00031FC3 */  sra       $v1, $v1, 0x1f
/* 4232DC 802A980C 00004010 */  mfhi      $t0
/* 4232E0 802A9810 00083143 */  sra       $a2, $t0, 5
/* 4232E4 802A9814 00C33023 */  subu      $a2, $a2, $v1
/* 4232E8 802A9818 00063400 */  sll       $a2, $a2, 0x10
/* 4232EC 802A981C 0C09A1E6 */  jal       func_80268798
/* 4232F0 802A9820 00063403 */   sra      $a2, $a2, 0x10
/* 4232F4 802A9824 080AA618 */  j         .L802A9860
/* 4232F8 802A9828 00000000 */   nop
.L802A982C:
/* 4232FC 802A982C 96230044 */  lhu       $v1, 0x44($s1)
/* 423300 802A9830 00031C00 */  sll       $v1, $v1, 0x10
/* 423304 802A9834 00031403 */  sra       $v0, $v1, 0x10
/* 423308 802A9838 00520018 */  mult      $v0, $s2
/* 42330C 802A983C 8FA40010 */  lw        $a0, 0x10($sp)
/* 423310 802A9840 8FA50014 */  lw        $a1, 0x14($sp)
/* 423314 802A9844 00031FC3 */  sra       $v1, $v1, 0x1f
/* 423318 802A9848 00004010 */  mfhi      $t0
/* 42331C 802A984C 00083143 */  sra       $a2, $t0, 5
/* 423320 802A9850 00C33023 */  subu      $a2, $a2, $v1
/* 423324 802A9854 00063400 */  sll       $a2, $a2, 0x10
/* 423328 802A9858 0C09A203 */  jal       func_8026880C
/* 42332C 802A985C 00063403 */   sra      $a2, $a2, 0x10
.L802A9860:
/* 423330 802A9860 8E24000C */  lw        $a0, 0xc($s1)
/* 423334 802A9864 0C0511EA */  jal       draw_icon_0
/* 423338 802A9868 00000000 */   nop
/* 42333C 802A986C 0C0511EA */  jal       draw_icon_0
/* 423340 802A9870 8E240010 */   lw       $a0, 0x10($s1)
/* 423344 802A9874 0C0511EA */  jal       draw_icon_0
/* 423348 802A9878 8E240014 */   lw       $a0, 0x14($s1)
/* 42334C 802A987C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 423350 802A9880 8FB20020 */  lw        $s2, 0x20($sp)
/* 423354 802A9884 8FB1001C */  lw        $s1, 0x1c($sp)
/* 423358 802A9888 8FB00018 */  lw        $s0, 0x18($sp)
/* 42335C 802A988C 03E00008 */  jr        $ra
/* 423360 802A9890 27BD0028 */   addiu    $sp, $sp, 0x28
