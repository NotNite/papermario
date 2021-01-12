.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238000_707CA0
/* 707CA0 80238000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 707CA4 80238004 AFB00010 */  sw        $s0, 0x10($sp)
/* 707CA8 80238008 3C10800E */  lui       $s0, %hi(gBattleStatus+0xDC)
/* 707CAC 8023800C 8E10C14C */  lw        $s0, %lo(gBattleStatus+0xDC)($s0)
/* 707CB0 80238010 AFBF0014 */  sw        $ra, 0x14($sp)
/* 707CB4 80238014 86050428 */  lh        $a1, 0x428($s0)
/* 707CB8 80238018 82060426 */  lb        $a2, 0x426($s0)
/* 707CBC 8023801C 0C09A5D5 */  jal       set_goal_pos_to_part
/* 707CC0 80238020 2604000C */   addiu    $a0, $s0, 0xc
/* 707CC4 80238024 86040428 */  lh        $a0, 0x428($s0)
/* 707CC8 80238028 0C09A75B */  jal       get_actor
/* 707CCC 8023802C 00000000 */   nop      
/* 707CD0 80238030 82050426 */  lb        $a1, 0x426($s0)
/* 707CD4 80238034 0C099117 */  jal       get_actor_part
/* 707CD8 80238038 0040202D */   daddu    $a0, $v0, $zero
/* 707CDC 8023803C 80430075 */  lb        $v1, 0x75($v0)
/* 707CE0 80238040 C6020018 */  lwc1      $f2, 0x18($s0)
/* 707CE4 80238044 C6060144 */  lwc1      $f6, 0x144($s0)
/* 707CE8 80238048 44830000 */  mtc1      $v1, $f0
/* 707CEC 8023804C 00000000 */  nop       
/* 707CF0 80238050 46800020 */  cvt.s.w   $f0, $f0
/* 707CF4 80238054 46001080 */  add.s     $f2, $f2, $f0
/* 707CF8 80238058 3C014100 */  lui       $at, 0x4100
/* 707CFC 8023805C 44810000 */  mtc1      $at, $f0
/* 707D00 80238060 C6040148 */  lwc1      $f4, 0x148($s0)
/* 707D04 80238064 46003180 */  add.s     $f6, $f6, $f0
/* 707D08 80238068 3C014180 */  lui       $at, 0x4180
/* 707D0C 8023806C 44810000 */  mtc1      $at, $f0
/* 707D10 80238070 00000000 */  nop       
/* 707D14 80238074 46002100 */  add.s     $f4, $f4, $f0
/* 707D18 80238078 E6020018 */  swc1      $f2, 0x18($s0)
/* 707D1C 8023807C 44061000 */  mfc1      $a2, $f2
/* 707D20 80238080 80420076 */  lb        $v0, 0x76($v0)
/* 707D24 80238084 C602001C */  lwc1      $f2, 0x1c($s0)
/* 707D28 80238088 44820000 */  mtc1      $v0, $f0
/* 707D2C 8023808C 00000000 */  nop       
/* 707D30 80238090 46800020 */  cvt.s.w   $f0, $f0
/* 707D34 80238094 46001080 */  add.s     $f2, $f2, $f0
/* 707D38 80238098 C6000020 */  lwc1      $f0, 0x20($s0)
/* 707D3C 8023809C E606000C */  swc1      $f6, 0xc($s0)
/* 707D40 802380A0 46003306 */  mov.s     $f12, $f6
/* 707D44 802380A4 E6040010 */  swc1      $f4, 0x10($s0)
/* 707D48 802380A8 E602001C */  swc1      $f2, 0x1c($s0)
/* 707D4C 802380AC C602014C */  lwc1      $f2, 0x14c($s0)
/* 707D50 802380B0 8E07001C */  lw        $a3, 0x1c($s0)
/* 707D54 802380B4 46002386 */  mov.s     $f14, $f4
/* 707D58 802380B8 0C00A720 */  jal       atan2
/* 707D5C 802380BC E6020014 */   swc1     $f2, 0x14($s0)
/* 707D60 802380C0 3C0142B4 */  lui       $at, 0x42b4
/* 707D64 802380C4 44812000 */  mtc1      $at, $f4
/* 707D68 802380C8 00000000 */  nop       
/* 707D6C 802380CC 46040101 */  sub.s     $f4, $f0, $f4
/* 707D70 802380D0 3C013E80 */  lui       $at, 0x3e80
/* 707D74 802380D4 44811000 */  mtc1      $at, $f2
/* 707D78 802380D8 00000000 */  nop       
/* 707D7C 802380DC 46022102 */  mul.s     $f4, $f4, $f2
/* 707D80 802380E0 00000000 */  nop       
/* 707D84 802380E4 44801000 */  mtc1      $zero, $f2
/* 707D88 802380E8 E6000054 */  swc1      $f0, 0x54($s0)
/* 707D8C 802380EC 4602203C */  c.lt.s    $f4, $f2
/* 707D90 802380F0 00000000 */  nop       
/* 707D94 802380F4 45000002 */  bc1f      .L80238100
/* 707D98 802380F8 E6040164 */   swc1     $f4, 0x164($s0)
/* 707D9C 802380FC E6020164 */  swc1      $f2, 0x164($s0)
.L80238100:
/* 707DA0 80238100 8FBF0014 */  lw        $ra, 0x14($sp)
/* 707DA4 80238104 8FB00010 */  lw        $s0, 0x10($sp)
/* 707DA8 80238108 24020002 */  addiu     $v0, $zero, 2
/* 707DAC 8023810C 03E00008 */  jr        $ra
/* 707DB0 80238110 27BD0018 */   addiu    $sp, $sp, 0x18
