.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218700_685130
/* 685130 80218700 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 685134 80218704 AFB20020 */  sw        $s2, 0x20($sp)
/* 685138 80218708 0080902D */  daddu     $s2, $a0, $zero
/* 68513C 8021870C AFBF0024 */  sw        $ra, 0x24($sp)
/* 685140 80218710 AFB1001C */  sw        $s1, 0x1c($sp)
/* 685144 80218714 AFB00018 */  sw        $s0, 0x18($sp)
/* 685148 80218718 8E440148 */  lw        $a0, 0x148($s2)
/* 68514C 8021871C 0C09A75B */  jal       get_actor
/* 685150 80218720 00A0802D */   daddu    $s0, $a1, $zero
/* 685154 80218724 1200002D */  beqz      $s0, .L802187DC
/* 685158 80218728 0040882D */   daddu    $s1, $v0, $zero
/* 68515C 8021872C C6220018 */  lwc1      $f2, 0x18($s1)
/* 685160 80218730 C6200144 */  lwc1      $f0, 0x144($s1)
/* 685164 80218734 46001081 */  sub.s     $f2, $f2, $f0
/* 685168 80218738 46021082 */  mul.s     $f2, $f2, $f2
/* 68516C 8021873C 00000000 */  nop       
/* 685170 80218740 C626001C */  lwc1      $f6, 0x1c($s1)
/* 685174 80218744 C6200148 */  lwc1      $f0, 0x148($s1)
/* 685178 80218748 46003181 */  sub.s     $f6, $f6, $f0
/* 68517C 8021874C 46063182 */  mul.s     $f6, $f6, $f6
/* 685180 80218750 00000000 */  nop       
/* 685184 80218754 C624014C */  lwc1      $f4, 0x14c($s1)
/* 685188 80218758 C6200020 */  lwc1      $f0, 0x20($s1)
/* 68518C 8021875C 46040001 */  sub.s     $f0, $f0, $f4
/* 685190 80218760 46000002 */  mul.s     $f0, $f0, $f0
/* 685194 80218764 00000000 */  nop       
/* 685198 80218768 46061080 */  add.s     $f2, $f2, $f6
/* 68519C 8021876C 46001300 */  add.s     $f12, $f2, $f0
/* 6851A0 80218770 46006104 */  sqrt.s    $f4, $f12
/* 6851A4 80218774 46042032 */  c.eq.s    $f4, $f4
/* 6851A8 80218778 00000000 */  nop       
/* 6851AC 8021877C 45010004 */  bc1t      .L80218790
/* 6851B0 80218780 00000000 */   nop      
/* 6851B4 80218784 0C0187BC */  jal       sqrtf
/* 6851B8 80218788 00000000 */   nop      
/* 6851BC 8021878C 46000106 */  mov.s     $f4, $f0
.L80218790:
/* 6851C0 80218790 C620004C */  lwc1      $f0, 0x4c($s1)
/* 6851C4 80218794 3C013F00 */  lui       $at, 0x3f00
/* 6851C8 80218798 44811000 */  mtc1      $at, $f2
/* 6851CC 8021879C 46002003 */  div.s     $f0, $f4, $f0
/* 6851D0 802187A0 46020002 */  mul.s     $f0, $f0, $f2
/* 6851D4 802187A4 00000000 */  nop       
/* 6851D8 802187A8 3C013F80 */  lui       $at, 0x3f80
/* 6851DC 802187AC 44811000 */  mtc1      $at, $f2
/* 6851E0 802187B0 00000000 */  nop       
/* 6851E4 802187B4 46020000 */  add.s     $f0, $f0, $f2
/* 6851E8 802187B8 4600020D */  trunc.w.s $f8, $f0
/* 6851EC 802187BC E6480070 */  swc1      $f8, 0x70($s2)
/* 6851F0 802187C0 C620014C */  lwc1      $f0, 0x14c($s1)
/* 6851F4 802187C4 24040359 */  addiu     $a0, $zero, 0x359
/* 6851F8 802187C8 E7A00010 */  swc1      $f0, 0x10($sp)
/* 6851FC 802187CC 8E260144 */  lw        $a2, 0x144($s1)
/* 685200 802187D0 8E270148 */  lw        $a3, 0x148($s1)
/* 685204 802187D4 0C052757 */  jal       play_sound_at_position
/* 685208 802187D8 0000282D */   daddu    $a1, $zero, $zero
.L802187DC:
/* 68520C 802187DC 8E420070 */  lw        $v0, 0x70($s2)
/* 685210 802187E0 0040182D */  daddu     $v1, $v0, $zero
/* 685214 802187E4 2442FFFF */  addiu     $v0, $v0, -1
/* 685218 802187E8 1C60000A */  bgtz      $v1, .L80218814
/* 68521C 802187EC AE420070 */   sw       $v0, 0x70($s2)
/* 685220 802187F0 C620014C */  lwc1      $f0, 0x14c($s1)
/* 685224 802187F4 24040759 */  addiu     $a0, $zero, 0x759
/* 685228 802187F8 E7A00010 */  swc1      $f0, 0x10($sp)
/* 68522C 802187FC 8E260144 */  lw        $a2, 0x144($s1)
/* 685230 80218800 8E270148 */  lw        $a3, 0x148($s1)
/* 685234 80218804 0C052757 */  jal       play_sound_at_position
/* 685238 80218808 0000282D */   daddu    $a1, $zero, $zero
/* 68523C 8021880C 08086206 */  j         .L80218818
/* 685240 80218810 24020002 */   addiu    $v0, $zero, 2
.L80218814:
/* 685244 80218814 0000102D */  daddu     $v0, $zero, $zero
.L80218818:
/* 685248 80218818 8FBF0024 */  lw        $ra, 0x24($sp)
/* 68524C 8021881C 8FB20020 */  lw        $s2, 0x20($sp)
/* 685250 80218820 8FB1001C */  lw        $s1, 0x1c($sp)
/* 685254 80218824 8FB00018 */  lw        $s0, 0x18($sp)
/* 685258 80218828 03E00008 */  jr        $ra
/* 68525C 8021882C 27BD0028 */   addiu    $sp, $sp, 0x28