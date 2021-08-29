.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80243254_8553C4
/* 8553C4 80243254 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 8553C8 80243258 AFB10014 */  sw        $s1, 0x14($sp)
/* 8553CC 8024325C 0080882D */  daddu     $s1, $a0, $zero
/* 8553D0 80243260 AFBF0020 */  sw        $ra, 0x20($sp)
/* 8553D4 80243264 AFB3001C */  sw        $s3, 0x1c($sp)
/* 8553D8 80243268 AFB20018 */  sw        $s2, 0x18($sp)
/* 8553DC 8024326C AFB00010 */  sw        $s0, 0x10($sp)
/* 8553E0 80243270 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 8553E4 80243274 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 8553E8 80243278 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 8553EC 8024327C 8E30000C */  lw        $s0, 0xc($s1)
/* 8553F0 80243280 8E050000 */  lw        $a1, ($s0)
/* 8553F4 80243284 0C0B1EAF */  jal       get_variable
/* 8553F8 80243288 26100004 */   addiu    $s0, $s0, 4
/* 8553FC 8024328C 0220202D */  daddu     $a0, $s1, $zero
/* 855400 80243290 8E120000 */  lw        $s2, ($s0)
/* 855404 80243294 8E130004 */  lw        $s3, 4($s0)
/* 855408 80243298 0C0B36B0 */  jal       resolve_npc
/* 85540C 8024329C 0040282D */   daddu    $a1, $v0, $zero
/* 855410 802432A0 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* 855414 802432A4 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* 855418 802432A8 50400022 */  beql      $v0, $zero, .L80243334
/* 85541C 802432AC 24020002 */   addiu    $v0, $zero, 2
/* 855420 802432B0 C60C0028 */  lwc1      $f12, 0x28($s0)
/* 855424 802432B4 8C460038 */  lw        $a2, 0x38($v0)
/* 855428 802432B8 C60E0030 */  lwc1      $f14, 0x30($s0)
/* 85542C 802432BC 0C00A720 */  jal       atan2
/* 855430 802432C0 8C470040 */   lw       $a3, 0x40($v0)
/* 855434 802432C4 0C00A6C9 */  jal       clamp_angle
/* 855438 802432C8 46000306 */   mov.s    $f12, $f0
/* 85543C 802432CC 46000506 */  mov.s     $f20, $f0
/* 855440 802432D0 3C014220 */  lui       $at, 0x4220
/* 855444 802432D4 4481C000 */  mtc1      $at, $f24
/* 855448 802432D8 0C00A8BB */  jal       sin_deg
/* 85544C 802432DC 4600A306 */   mov.s    $f12, $f20
/* 855450 802432E0 46180002 */  mul.s     $f0, $f0, $f24
/* 855454 802432E4 00000000 */  nop
/* 855458 802432E8 C6160028 */  lwc1      $f22, 0x28($s0)
/* 85545C 802432EC 4600B580 */  add.s     $f22, $f22, $f0
/* 855460 802432F0 0C00A8D4 */  jal       cos_deg
/* 855464 802432F4 4600A306 */   mov.s    $f12, $f20
/* 855468 802432F8 46180002 */  mul.s     $f0, $f0, $f24
/* 85546C 802432FC 00000000 */  nop
/* 855470 80243300 0220202D */  daddu     $a0, $s1, $zero
/* 855474 80243304 0240282D */  daddu     $a1, $s2, $zero
/* 855478 80243308 C6140030 */  lwc1      $f20, 0x30($s0)
/* 85547C 8024330C 4600B08D */  trunc.w.s $f2, $f22
/* 855480 80243310 44061000 */  mfc1      $a2, $f2
/* 855484 80243314 0C0B2026 */  jal       evt_set_variable
/* 855488 80243318 4600A501 */   sub.s    $f20, $f20, $f0
/* 85548C 8024331C 0220202D */  daddu     $a0, $s1, $zero
/* 855490 80243320 4600A08D */  trunc.w.s $f2, $f20
/* 855494 80243324 44061000 */  mfc1      $a2, $f2
/* 855498 80243328 0C0B2026 */  jal       evt_set_variable
/* 85549C 8024332C 0260282D */   daddu    $a1, $s3, $zero
/* 8554A0 80243330 24020002 */  addiu     $v0, $zero, 2
.L80243334:
/* 8554A4 80243334 8FBF0020 */  lw        $ra, 0x20($sp)
/* 8554A8 80243338 8FB3001C */  lw        $s3, 0x1c($sp)
/* 8554AC 8024333C 8FB20018 */  lw        $s2, 0x18($sp)
/* 8554B0 80243340 8FB10014 */  lw        $s1, 0x14($sp)
/* 8554B4 80243344 8FB00010 */  lw        $s0, 0x10($sp)
/* 8554B8 80243348 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 8554BC 8024334C D7B60030 */  ldc1      $f22, 0x30($sp)
/* 8554C0 80243350 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 8554C4 80243354 03E00008 */  jr        $ra
/* 8554C8 80243358 27BD0040 */   addiu    $sp, $sp, 0x40
