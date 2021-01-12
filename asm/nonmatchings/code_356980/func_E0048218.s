.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0048218
/* 356B98 E0048218 27BDFF20 */  addiu     $sp, $sp, -0xe0
/* 356B9C E004821C 0080302D */  daddu     $a2, $a0, $zero
/* 356BA0 E0048220 3C07DB06 */  lui       $a3, 0xdb06
/* 356BA4 E0048224 34E70024 */  ori       $a3, $a3, 0x24
/* 356BA8 E0048228 27A40020 */  addiu     $a0, $sp, 0x20
/* 356BAC E004822C AFB500BC */  sw        $s5, 0xbc($sp)
/* 356BB0 E0048230 3C15800A */  lui       $s5, %hi(gMasterGfxPos)
/* 356BB4 E0048234 26B5A66C */  addiu     $s5, $s5, %lo(gMasterGfxPos)
/* 356BB8 E0048238 AFB300B4 */  sw        $s3, 0xb4($sp)
/* 356BBC E004823C 3C130001 */  lui       $s3, 1
/* 356BC0 E0048240 36731630 */  ori       $s3, $s3, 0x1630
/* 356BC4 E0048244 AFBF00CC */  sw        $ra, 0xcc($sp)
/* 356BC8 E0048248 AFBE00C8 */  sw        $fp, 0xc8($sp)
/* 356BCC E004824C AFB700C4 */  sw        $s7, 0xc4($sp)
/* 356BD0 E0048250 AFB600C0 */  sw        $s6, 0xc0($sp)
/* 356BD4 E0048254 AFB400B8 */  sw        $s4, 0xb8($sp)
/* 356BD8 E0048258 AFB200B0 */  sw        $s2, 0xb0($sp)
/* 356BDC E004825C AFB100AC */  sw        $s1, 0xac($sp)
/* 356BE0 E0048260 AFB000A8 */  sw        $s0, 0xa8($sp)
/* 356BE4 E0048264 F7B600D8 */  sdc1      $f22, 0xd8($sp)
/* 356BE8 E0048268 F7B400D0 */  sdc1      $f20, 0xd0($sp)
/* 356BEC E004826C 8EA80000 */  lw        $t0, ($s5)
/* 356BF0 E0048270 8CD4000C */  lw        $s4, 0xc($a2)
/* 356BF4 E0048274 4480A000 */  mtc1      $zero, $f20
/* 356BF8 E0048278 3C014380 */  lui       $at, 0x4380
/* 356BFC E004827C 44812000 */  mtc1      $at, $f4
/* 356C00 E0048280 3C013F80 */  lui       $at, 0x3f80
/* 356C04 E0048284 4481B000 */  mtc1      $at, $f22
/* 356C08 E0048288 0100182D */  daddu     $v1, $t0, $zero
/* 356C0C E004828C 96920000 */  lhu       $s2, ($s4)
/* 356C10 E0048290 4405A000 */  mfc1      $a1, $f20
/* 356C14 E0048294 C6860020 */  lwc1      $f6, 0x20($s4)
/* 356C18 E0048298 00121080 */  sll       $v0, $s2, 2
/* 356C1C E004829C 3C0AE005 */  lui       $t2, %hi(D_E0048A00)
/* 356C20 E00482A0 01425021 */  addu      $t2, $t2, $v0
/* 356C24 E00482A4 8D4A8A00 */  lw        $t2, %lo(D_E0048A00)($t2)
/* 356C28 E00482A8 25080008 */  addiu     $t0, $t0, 8
/* 356C2C E00482AC AFAA00A0 */  sw        $t2, 0xa0($sp)
/* 356C30 E00482B0 3C09E005 */  lui       $t1, %hi(D_E0048A08)
/* 356C34 E00482B4 01224821 */  addu      $t1, $t1, $v0
/* 356C38 E00482B8 8D298A08 */  lw        $t1, %lo(D_E0048A08)($t1)
/* 356C3C E00482BC 3C02E700 */  lui       $v0, 0xe700
/* 356C40 E00482C0 4600328D */  trunc.w.s $f10, $f6
/* 356C44 E00482C4 44165000 */  mfc1      $s6, $f10
/* 356C48 E00482C8 00000000 */  nop       
/* 356C4C E00482CC 44961000 */  mtc1      $s6, $f2
/* 356C50 E00482D0 00000000 */  nop       
/* 356C54 E00482D4 468010A0 */  cvt.s.w   $f2, $f2
/* 356C58 E00482D8 46023181 */  sub.s     $f6, $f6, $f2
/* 356C5C E00482DC AC620000 */  sw        $v0, ($v1)
/* 356C60 E00482E0 AC600004 */  sw        $zero, 4($v1)
/* 356C64 E00482E4 AD070000 */  sw        $a3, ($t0)
/* 356C68 E00482E8 8CC20010 */  lw        $v0, 0x10($a2)
/* 356C6C E00482EC 4407A000 */  mfc1      $a3, $f20
/* 356C70 E00482F0 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 356C74 E00482F4 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 356C78 E00482F8 8C46001C */  lw        $a2, 0x1c($v0)
/* 356C7C E00482FC 3C02DE00 */  lui       $v0, 0xde00
/* 356C80 E0048300 AD020008 */  sw        $v0, 8($t0)
/* 356C84 E0048304 3C028000 */  lui       $v0, 0x8000
/* 356C88 E0048308 AD09000C */  sw        $t1, 0xc($t0)
/* 356C8C E004830C 00C23021 */  addu      $a2, $a2, $v0
/* 356C90 E0048310 00031080 */  sll       $v0, $v1, 2
/* 356C94 E0048314 00431021 */  addu      $v0, $v0, $v1
/* 356C98 E0048318 00021080 */  sll       $v0, $v0, 2
/* 356C9C E004831C 00431023 */  subu      $v0, $v0, $v1
/* 356CA0 E0048320 000218C0 */  sll       $v1, $v0, 3
/* 356CA4 E0048324 00431021 */  addu      $v0, $v0, $v1
/* 356CA8 E0048328 000210C0 */  sll       $v0, $v0, 3
/* 356CAC E004832C AD060004 */  sw        $a2, 4($t0)
/* 356CB0 E0048330 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* 356CB4 E0048334 00220821 */  addu      $at, $at, $v0
/* 356CB8 E0048338 C4281DEC */  lwc1      $f8, %lo(D_800B1DEC)($at)
/* 356CBC E004833C C6800010 */  lwc1      $f0, 0x10($s4)
/* 356CC0 E0048340 25020008 */  addiu     $v0, $t0, 8
/* 356CC4 E0048344 AEA80000 */  sw        $t0, ($s5)
/* 356CC8 E0048348 25080010 */  addiu     $t0, $t0, 0x10
/* 356CCC E004834C 46004207 */  neg.s     $f8, $f8
/* 356CD0 E0048350 E7A00010 */  swc1      $f0, 0x10($sp)
/* 356CD4 E0048354 C6800004 */  lwc1      $f0, 4($s4)
/* 356CD8 E0048358 44064000 */  mfc1      $a2, $f8
/* 356CDC E004835C 46043182 */  mul.s     $f6, $f6, $f4
/* 356CE0 E0048360 00000000 */  nop       
/* 356CE4 E0048364 AEA20000 */  sw        $v0, ($s5)
/* 356CE8 E0048368 3AC20007 */  xori      $v0, $s6, 7
/* 356CEC E004836C E7A00014 */  swc1      $f0, 0x14($sp)
/* 356CF0 E0048370 C6800008 */  lwc1      $f0, 8($s4)
/* 356CF4 E0048374 2C5E0001 */  sltiu     $fp, $v0, 1
/* 356CF8 E0048378 AEA80000 */  sw        $t0, ($s5)
/* 356CFC E004837C E7A00018 */  swc1      $f0, 0x18($sp)
/* 356D00 E0048380 C680000C */  lwc1      $f0, 0xc($s4)
/* 356D04 E0048384 4600328D */  trunc.w.s $f10, $f6
/* 356D08 E0048388 44175000 */  mfc1      $s7, $f10
/* 356D0C E004838C 0C080180 */  jal       func_E0200600
/* 356D10 E0048390 E7A0001C */   swc1     $f0, 0x1c($sp)
/* 356D14 E0048394 27B00060 */  addiu     $s0, $sp, 0x60
/* 356D18 E0048398 E7B60010 */  swc1      $f22, 0x10($sp)
/* 356D1C E004839C 8E850024 */  lw        $a1, 0x24($s4)
/* 356D20 E00483A0 4406A000 */  mfc1      $a2, $f20
/* 356D24 E00483A4 4407A000 */  mfc1      $a3, $f20
/* 356D28 E00483A8 0C080104 */  jal       func_E0200410
/* 356D2C E00483AC 0200202D */   daddu    $a0, $s0, $zero
/* 356D30 E00483B0 0200202D */  daddu     $a0, $s0, $zero
/* 356D34 E00483B4 27A50020 */  addiu     $a1, $sp, 0x20
/* 356D38 E00483B8 0C080114 */  jal       func_E0200450
/* 356D3C E00483BC 00A0302D */   daddu    $a2, $a1, $zero
/* 356D40 E00483C0 27A40020 */  addiu     $a0, $sp, 0x20
/* 356D44 E00483C4 3C108007 */  lui       $s0, %hi(gMatrixListPos)
/* 356D48 E00483C8 261041F0 */  addiu     $s0, $s0, %lo(gMatrixListPos)
/* 356D4C E00483CC 3C11800A */  lui       $s1, %hi(gDisplayContext)
/* 356D50 E00483D0 2631A674 */  addiu     $s1, $s1, %lo(gDisplayContext)
/* 356D54 E00483D4 96050000 */  lhu       $a1, ($s0)
/* 356D58 E00483D8 8E220000 */  lw        $v0, ($s1)
/* 356D5C E00483DC 00052980 */  sll       $a1, $a1, 6
/* 356D60 E00483E0 00B32821 */  addu      $a1, $a1, $s3
/* 356D64 E00483E4 0C080118 */  jal       func_E0200460
/* 356D68 E00483E8 00452821 */   addu     $a1, $v0, $a1
/* 356D6C E00483EC 8EA60000 */  lw        $a2, ($s5)
/* 356D70 E00483F0 00C0202D */  daddu     $a0, $a2, $zero
/* 356D74 E00483F4 24C60008 */  addiu     $a2, $a2, 8
/* 356D78 E00483F8 AEA60000 */  sw        $a2, ($s5)
/* 356D7C E00483FC 96020000 */  lhu       $v0, ($s0)
/* 356D80 E0048400 3C03DA38 */  lui       $v1, 0xda38
/* 356D84 E0048404 AC830000 */  sw        $v1, ($a0)
/* 356D88 E0048408 24430001 */  addiu     $v1, $v0, 1
/* 356D8C E004840C 3042FFFF */  andi      $v0, $v0, 0xffff
/* 356D90 E0048410 00021180 */  sll       $v0, $v0, 6
/* 356D94 E0048414 A6030000 */  sh        $v1, ($s0)
/* 356D98 E0048418 8E230000 */  lw        $v1, ($s1)
/* 356D9C E004841C 00531021 */  addu      $v0, $v0, $s3
/* 356DA0 E0048420 00621821 */  addu      $v1, $v1, $v0
/* 356DA4 E0048424 1640010F */  bnez      $s2, .LE0048864
/* 356DA8 E0048428 AC830004 */   sw       $v1, 4($a0)
/* 356DAC E004842C C6800020 */  lwc1      $f0, 0x20($s4)
/* 356DB0 E0048430 3C0140A0 */  lui       $at, 0x40a0
/* 356DB4 E0048434 44811000 */  mtc1      $at, $f2
/* 356DB8 E0048438 00000000 */  nop       
/* 356DBC E004843C 4600103C */  c.lt.s    $f2, $f0
/* 356DC0 E0048440 00000000 */  nop       
/* 356DC4 E0048444 45000007 */  bc1f      .LE0048464
/* 356DC8 E0048448 4600B106 */   mov.s    $f4, $f22
/* 356DCC E004844C 46020001 */  sub.s     $f0, $f0, $f2
/* 356DD0 E0048450 46002101 */  sub.s     $f4, $f4, $f0
/* 356DD4 E0048454 4614203C */  c.lt.s    $f4, $f20
/* 356DD8 E0048458 00000000 */  nop       
/* 356DDC E004845C 45030001 */  bc1tl     .LE0048464
/* 356DE0 E0048460 4600A106 */   mov.s    $f4, $f20
.LE0048464:
/* 356DE4 E0048464 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* 356DE8 E0048468 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 356DEC E004846C 8C620000 */  lw        $v0, ($v1)
/* 356DF0 E0048470 3C01437F */  lui       $at, 0x437f
/* 356DF4 E0048474 44810000 */  mtc1      $at, $f0
/* 356DF8 E0048478 3C014F00 */  lui       $at, 0x4f00
/* 356DFC E004847C 44811000 */  mtc1      $at, $f2
/* 356E00 E0048480 0040202D */  daddu     $a0, $v0, $zero
/* 356E04 E0048484 24420008 */  addiu     $v0, $v0, 8
/* 356E08 E0048488 46002002 */  mul.s     $f0, $f4, $f0
/* 356E0C E004848C 00000000 */  nop       
/* 356E10 E0048490 AC620000 */  sw        $v0, ($v1)
/* 356E14 E0048494 3C02FA00 */  lui       $v0, 0xfa00
/* 356E18 E0048498 AC820000 */  sw        $v0, ($a0)
/* 356E1C E004849C 4600103E */  c.le.s    $f2, $f0
/* 356E20 E00484A0 00000000 */  nop       
/* 356E24 E00484A4 45010005 */  bc1t      .LE00484BC
/* 356E28 E00484A8 24840004 */   addiu    $a0, $a0, 4
/* 356E2C E00484AC 4600028D */  trunc.w.s $f10, $f0
/* 356E30 E00484B0 44035000 */  mfc1      $v1, $f10
/* 356E34 E00484B4 08012135 */  j         .LE00484D4
/* 356E38 E00484B8 00000000 */   nop      
.LE00484BC:
/* 356E3C E00484BC 46020001 */  sub.s     $f0, $f0, $f2
/* 356E40 E00484C0 3C028000 */  lui       $v0, 0x8000
/* 356E44 E00484C4 4600028D */  trunc.w.s $f10, $f0
/* 356E48 E00484C8 44035000 */  mfc1      $v1, $f10
/* 356E4C E00484CC 00000000 */  nop       
/* 356E50 E00484D0 00621825 */  or        $v1, $v1, $v0
.LE00484D4:
/* 356E54 E00484D4 3C014190 */  lui       $at, 0x4190
/* 356E58 E00484D8 44810000 */  mtc1      $at, $f0
/* 356E5C E00484DC 00000000 */  nop       
/* 356E60 E00484E0 46002002 */  mul.s     $f0, $f4, $f0
/* 356E64 E00484E4 00000000 */  nop       
/* 356E68 E00484E8 3C014F00 */  lui       $at, 0x4f00
/* 356E6C E00484EC 44811000 */  mtc1      $at, $f2
/* 356E70 E00484F0 00000000 */  nop       
/* 356E74 E00484F4 4600103E */  c.le.s    $f2, $f0
/* 356E78 E00484F8 00000000 */  nop       
/* 356E7C E00484FC 45010005 */  bc1t      .LE0048514
/* 356E80 E0048500 00032E00 */   sll      $a1, $v1, 0x18
/* 356E84 E0048504 4600028D */  trunc.w.s $f10, $f0
/* 356E88 E0048508 44035000 */  mfc1      $v1, $f10
/* 356E8C E004850C 0801214B */  j         .LE004852C
/* 356E90 E0048510 00000000 */   nop      
.LE0048514:
/* 356E94 E0048514 46020001 */  sub.s     $f0, $f0, $f2
/* 356E98 E0048518 3C028000 */  lui       $v0, 0x8000
/* 356E9C E004851C 4600028D */  trunc.w.s $f10, $f0
/* 356EA0 E0048520 44035000 */  mfc1      $v1, $f10
/* 356EA4 E0048524 00000000 */  nop       
/* 356EA8 E0048528 00621825 */  or        $v1, $v1, $v0
.LE004852C:
/* 356EAC E004852C 3C01426C */  lui       $at, 0x426c
/* 356EB0 E0048530 44810000 */  mtc1      $at, $f0
/* 356EB4 E0048534 00000000 */  nop       
/* 356EB8 E0048538 46002002 */  mul.s     $f0, $f4, $f0
/* 356EBC E004853C 00000000 */  nop       
/* 356EC0 E0048540 306200FF */  andi      $v0, $v1, 0xff
/* 356EC4 E0048544 00021400 */  sll       $v0, $v0, 0x10
/* 356EC8 E0048548 3C014F00 */  lui       $at, 0x4f00
/* 356ECC E004854C 44811000 */  mtc1      $at, $f2
/* 356ED0 E0048550 00000000 */  nop       
/* 356ED4 E0048554 4600103E */  c.le.s    $f2, $f0
/* 356ED8 E0048558 00000000 */  nop       
/* 356EDC E004855C 45010005 */  bc1t      .LE0048574
/* 356EE0 E0048560 00A23825 */   or       $a3, $a1, $v0
/* 356EE4 E0048564 4600028D */  trunc.w.s $f10, $f0
/* 356EE8 E0048568 44065000 */  mfc1      $a2, $f10
/* 356EEC E004856C 08012163 */  j         .LE004858C
/* 356EF0 E0048570 00000000 */   nop      
.LE0048574:
/* 356EF4 E0048574 46020001 */  sub.s     $f0, $f0, $f2
/* 356EF8 E0048578 3C028000 */  lui       $v0, 0x8000
/* 356EFC E004857C 4600028D */  trunc.w.s $f10, $f0
/* 356F00 E0048580 44065000 */  mfc1      $a2, $f10
/* 356F04 E0048584 00000000 */  nop       
/* 356F08 E0048588 00C23025 */  or        $a2, $a2, $v0
.LE004858C:
/* 356F0C E004858C 3C05800A */  lui       $a1, %hi(gMasterGfxPos)
/* 356F10 E0048590 24A5A66C */  addiu     $a1, $a1, %lo(gMasterGfxPos)
/* 356F14 E0048594 30C200FF */  andi      $v0, $a2, 0xff
/* 356F18 E0048598 00021200 */  sll       $v0, $v0, 8
/* 356F1C E004859C 8CA30000 */  lw        $v1, ($a1)
/* 356F20 E00485A0 00E21025 */  or        $v0, $a3, $v0
/* 356F24 E00485A4 AC820000 */  sw        $v0, ($a0)
/* 356F28 E00485A8 3C02FB00 */  lui       $v0, 0xfb00
/* 356F2C E00485AC 3C01437F */  lui       $at, 0x437f
/* 356F30 E00485B0 44810000 */  mtc1      $at, $f0
/* 356F34 E00485B4 3C014F00 */  lui       $at, 0x4f00
/* 356F38 E00485B8 44811000 */  mtc1      $at, $f2
/* 356F3C E00485BC 0060202D */  daddu     $a0, $v1, $zero
/* 356F40 E00485C0 46002002 */  mul.s     $f0, $f4, $f0
/* 356F44 E00485C4 00000000 */  nop       
/* 356F48 E00485C8 24630008 */  addiu     $v1, $v1, 8
/* 356F4C E00485CC 24870004 */  addiu     $a3, $a0, 4
/* 356F50 E00485D0 ACA30000 */  sw        $v1, ($a1)
/* 356F54 E00485D4 4600103E */  c.le.s    $f2, $f0
/* 356F58 E00485D8 00000000 */  nop       
/* 356F5C E00485DC 45010005 */  bc1t      .LE00485F4
/* 356F60 E00485E0 AC820000 */   sw       $v0, ($a0)
/* 356F64 E00485E4 4600028D */  trunc.w.s $f10, $f0
/* 356F68 E00485E8 44035000 */  mfc1      $v1, $f10
/* 356F6C E00485EC 08012183 */  j         .LE004860C
/* 356F70 E00485F0 00000000 */   nop      
.LE00485F4:
/* 356F74 E00485F4 46020001 */  sub.s     $f0, $f0, $f2
/* 356F78 E00485F8 3C028000 */  lui       $v0, 0x8000
/* 356F7C E00485FC 4600028D */  trunc.w.s $f10, $f0
/* 356F80 E0048600 44035000 */  mfc1      $v1, $f10
/* 356F84 E0048604 00000000 */  nop       
/* 356F88 E0048608 00621825 */  or        $v1, $v1, $v0
.LE004860C:
/* 356F8C E004860C 3C014254 */  lui       $at, 0x4254
/* 356F90 E0048610 44810000 */  mtc1      $at, $f0
/* 356F94 E0048614 00000000 */  nop       
/* 356F98 E0048618 46002002 */  mul.s     $f0, $f4, $f0
/* 356F9C E004861C 00000000 */  nop       
/* 356FA0 E0048620 3C014F00 */  lui       $at, 0x4f00
/* 356FA4 E0048624 44811000 */  mtc1      $at, $f2
/* 356FA8 E0048628 00000000 */  nop       
/* 356FAC E004862C 4600103E */  c.le.s    $f2, $f0
/* 356FB0 E0048630 00000000 */  nop       
/* 356FB4 E0048634 45010005 */  bc1t      .LE004864C
/* 356FB8 E0048638 00032600 */   sll      $a0, $v1, 0x18
/* 356FBC E004863C 4600028D */  trunc.w.s $f10, $f0
/* 356FC0 E0048640 44035000 */  mfc1      $v1, $f10
/* 356FC4 E0048644 08012199 */  j         .LE0048664
/* 356FC8 E0048648 00000000 */   nop      
.LE004864C:
/* 356FCC E004864C 46020001 */  sub.s     $f0, $f0, $f2
/* 356FD0 E0048650 3C028000 */  lui       $v0, 0x8000
/* 356FD4 E0048654 4600028D */  trunc.w.s $f10, $f0
/* 356FD8 E0048658 44035000 */  mfc1      $v1, $f10
/* 356FDC E004865C 00000000 */  nop       
/* 356FE0 E0048660 00621825 */  or        $v1, $v1, $v0
.LE0048664:
/* 356FE4 E0048664 3C0141C0 */  lui       $at, 0x41c0
/* 356FE8 E0048668 44810000 */  mtc1      $at, $f0
/* 356FEC E004866C 00000000 */  nop       
/* 356FF0 E0048670 46002002 */  mul.s     $f0, $f4, $f0
/* 356FF4 E0048674 00000000 */  nop       
/* 356FF8 E0048678 306200FF */  andi      $v0, $v1, 0xff
/* 356FFC E004867C 00021400 */  sll       $v0, $v0, 0x10
/* 357000 E0048680 3C014F00 */  lui       $at, 0x4f00
/* 357004 E0048684 44811000 */  mtc1      $at, $f2
/* 357008 E0048688 00000000 */  nop       
/* 35700C E004868C 4600103E */  c.le.s    $f2, $f0
/* 357010 E0048690 00000000 */  nop       
/* 357014 E0048694 45010005 */  bc1t      .LE00486AC
/* 357018 E0048698 00823025 */   or       $a2, $a0, $v0
/* 35701C E004869C 4600028D */  trunc.w.s $f10, $f0
/* 357020 E00486A0 44035000 */  mfc1      $v1, $f10
/* 357024 E00486A4 080121B1 */  j         .LE00486C4
/* 357028 E00486A8 00000000 */   nop      
.LE00486AC:
/* 35702C E00486AC 46020001 */  sub.s     $f0, $f0, $f2
/* 357030 E00486B0 3C028000 */  lui       $v0, 0x8000
/* 357034 E00486B4 4600028D */  trunc.w.s $f10, $f0
/* 357038 E00486B8 44035000 */  mfc1      $v1, $f10
/* 35703C E00486BC 00000000 */  nop       
/* 357040 E00486C0 00621825 */  or        $v1, $v1, $v0
.LE00486C4:
/* 357044 E00486C4 3C05800A */  lui       $a1, %hi(gMasterGfxPos)
/* 357048 E00486C8 24A5A66C */  addiu     $a1, $a1, %lo(gMasterGfxPos)
/* 35704C E00486CC 306200FF */  andi      $v0, $v1, 0xff
/* 357050 E00486D0 00021200 */  sll       $v0, $v0, 8
/* 357054 E00486D4 00C21025 */  or        $v0, $a2, $v0
/* 357058 E00486D8 32E300FF */  andi      $v1, $s7, 0xff
/* 35705C E00486DC 8CA40000 */  lw        $a0, ($a1)
/* 357060 E00486E0 00431025 */  or        $v0, $v0, $v1
/* 357064 E00486E4 ACE20000 */  sw        $v0, ($a3)
/* 357068 E00486E8 3C02EB00 */  lui       $v0, 0xeb00
/* 35706C E00486EC 3C014353 */  lui       $at, 0x4353
/* 357070 E00486F0 44810000 */  mtc1      $at, $f0
/* 357074 E00486F4 3C014F00 */  lui       $at, 0x4f00
/* 357078 E00486F8 44811000 */  mtc1      $at, $f2
/* 35707C E00486FC 0080182D */  daddu     $v1, $a0, $zero
/* 357080 E0048700 46002002 */  mul.s     $f0, $f4, $f0
/* 357084 E0048704 00000000 */  nop       
/* 357088 E0048708 24840008 */  addiu     $a0, $a0, 8
/* 35708C E004870C 24660004 */  addiu     $a2, $v1, 4
/* 357090 E0048710 ACA40000 */  sw        $a0, ($a1)
/* 357094 E0048714 4600103E */  c.le.s    $f2, $f0
/* 357098 E0048718 00000000 */  nop       
/* 35709C E004871C 45010005 */  bc1t      .LE0048734
/* 3570A0 E0048720 AC620000 */   sw       $v0, ($v1)
/* 3570A4 E0048724 4600028D */  trunc.w.s $f10, $f0
/* 3570A8 E0048728 44055000 */  mfc1      $a1, $f10
/* 3570AC E004872C 080121D3 */  j         .LE004874C
/* 3570B0 E0048730 00000000 */   nop      
.LE0048734:
/* 3570B4 E0048734 46020001 */  sub.s     $f0, $f0, $f2
/* 3570B8 E0048738 3C028000 */  lui       $v0, 0x8000
/* 3570BC E004873C 4600028D */  trunc.w.s $f10, $f0
/* 3570C0 E0048740 44055000 */  mfc1      $a1, $f10
/* 3570C4 E0048744 00000000 */  nop       
/* 3570C8 E0048748 00A22825 */  or        $a1, $a1, $v0
.LE004874C:
/* 3570CC E004874C 3C04800A */  lui       $a0, %hi(gMasterGfxPos)
/* 3570D0 E0048750 2484A66C */  addiu     $a0, $a0, %lo(gMasterGfxPos)
/* 3570D4 E0048754 30A200FF */  andi      $v0, $a1, 0xff
/* 3570D8 E0048758 8C830000 */  lw        $v1, ($a0)
/* 3570DC E004875C 00021200 */  sll       $v0, $v0, 8
/* 3570E0 E0048760 ACC20000 */  sw        $v0, ($a2)
/* 3570E4 E0048764 3C02EA00 */  lui       $v0, 0xea00
/* 3570E8 E0048768 3C01437F */  lui       $at, 0x437f
/* 3570EC E004876C 44810000 */  mtc1      $at, $f0
/* 3570F0 E0048770 3C014F00 */  lui       $at, 0x4f00
/* 3570F4 E0048774 44811000 */  mtc1      $at, $f2
/* 3570F8 E0048778 0060282D */  daddu     $a1, $v1, $zero
/* 3570FC E004877C 46002002 */  mul.s     $f0, $f4, $f0
/* 357100 E0048780 00000000 */  nop       
/* 357104 E0048784 24630008 */  addiu     $v1, $v1, 8
/* 357108 E0048788 24A90004 */  addiu     $t1, $a1, 4
/* 35710C E004878C AC830000 */  sw        $v1, ($a0)
/* 357110 E0048790 4600103E */  c.le.s    $f2, $f0
/* 357114 E0048794 00000000 */  nop       
/* 357118 E0048798 45010005 */  bc1t      .LE00487B0
/* 35711C E004879C ACA20000 */   sw       $v0, ($a1)
/* 357120 E00487A0 4600028D */  trunc.w.s $f10, $f0
/* 357124 E00487A4 44035000 */  mfc1      $v1, $f10
/* 357128 E00487A8 080121F2 */  j         .LE00487C8
/* 35712C E00487AC 00000000 */   nop      
.LE00487B0:
/* 357130 E00487B0 46020001 */  sub.s     $f0, $f0, $f2
/* 357134 E00487B4 3C028000 */  lui       $v0, 0x8000
/* 357138 E00487B8 4600028D */  trunc.w.s $f10, $f0
/* 35713C E00487BC 44035000 */  mfc1      $v1, $f10
/* 357140 E00487C0 00000000 */  nop       
/* 357144 E00487C4 00621825 */  or        $v1, $v1, $v0
.LE00487C8:
/* 357148 E00487C8 3C014358 */  lui       $at, 0x4358
/* 35714C E00487CC 44810000 */  mtc1      $at, $f0
/* 357150 E00487D0 00000000 */  nop       
/* 357154 E00487D4 46002002 */  mul.s     $f0, $f4, $f0
/* 357158 E00487D8 00000000 */  nop       
/* 35715C E00487DC 3C014F00 */  lui       $at, 0x4f00
/* 357160 E00487E0 44811000 */  mtc1      $at, $f2
/* 357164 E00487E4 00000000 */  nop       
/* 357168 E00487E8 4600103E */  c.le.s    $f2, $f0
/* 35716C E00487EC 00000000 */  nop       
/* 357170 E00487F0 45010005 */  bc1t      .LE0048808
/* 357174 E00487F4 00034600 */   sll      $t0, $v1, 0x18
/* 357178 E00487F8 4600028D */  trunc.w.s $f10, $f0
/* 35717C E00487FC 44075000 */  mfc1      $a3, $f10
/* 357180 E0048800 08012209 */  j         .LE0048824
/* 357184 E0048804 3C06FC26 */   lui      $a2, 0xfc26
.LE0048808:
/* 357188 E0048808 46020001 */  sub.s     $f0, $f0, $f2
/* 35718C E004880C 3C028000 */  lui       $v0, 0x8000
/* 357190 E0048810 4600028D */  trunc.w.s $f10, $f0
/* 357194 E0048814 44075000 */  mfc1      $a3, $f10
/* 357198 E0048818 00000000 */  nop       
/* 35719C E004881C 00E23825 */  or        $a3, $a3, $v0
/* 3571A0 E0048820 3C06FC26 */  lui       $a2, 0xfc26
.LE0048824:
/* 3571A4 E0048824 34C62A60 */  ori       $a2, $a2, 0x2a60
/* 3571A8 E0048828 3C0516FC */  lui       $a1, 0x16fc
/* 3571AC E004882C 34A59378 */  ori       $a1, $a1, 0x9378
/* 3571B0 E0048830 3C04800A */  lui       $a0, %hi(gMasterGfxPos)
/* 3571B4 E0048834 2484A66C */  addiu     $a0, $a0, %lo(gMasterGfxPos)
/* 3571B8 E0048838 30E200FF */  andi      $v0, $a3, 0xff
/* 3571BC E004883C 00021200 */  sll       $v0, $v0, 8
/* 3571C0 E0048840 8C830000 */  lw        $v1, ($a0)
/* 3571C4 E0048844 01021025 */  or        $v0, $t0, $v0
/* 3571C8 E0048848 AD220000 */  sw        $v0, ($t1)
/* 3571CC E004884C 0060102D */  daddu     $v0, $v1, $zero
/* 3571D0 E0048850 24630008 */  addiu     $v1, $v1, 8
/* 3571D4 E0048854 AC830000 */  sw        $v1, ($a0)
/* 3571D8 E0048858 AC460000 */  sw        $a2, ($v0)
/* 3571DC E004885C 08012230 */  j         .LE00488C0
/* 3571E0 E0048860 AC450004 */   sw       $a1, 4($v0)
.LE0048864:
/* 3571E4 E0048864 3C04FC26 */  lui       $a0, 0xfc26
/* 3571E8 E0048868 34842AC3 */  ori       $a0, $a0, 0x2ac3
/* 3571EC E004886C 3C0310FC */  lui       $v1, 0x10fc
/* 3571F0 E0048870 34639238 */  ori       $v1, $v1, 0x9238
/* 3571F4 E0048874 3C05FFFF */  lui       $a1, 0xffff
/* 3571F8 E0048878 34A5287F */  ori       $a1, $a1, 0x287f
/* 3571FC E004887C 24C20008 */  addiu     $v0, $a2, 8
/* 357200 E0048880 AEA20000 */  sw        $v0, ($s5)
/* 357204 E0048884 24C20010 */  addiu     $v0, $a2, 0x10
/* 357208 E0048888 ACC40000 */  sw        $a0, ($a2)
/* 35720C E004888C ACC30004 */  sw        $v1, 4($a2)
/* 357210 E0048890 AEA20000 */  sw        $v0, ($s5)
/* 357214 E0048894 3C02FA00 */  lui       $v0, 0xfa00
/* 357218 E0048898 ACC20008 */  sw        $v0, 8($a2)
/* 35721C E004889C 24C20018 */  addiu     $v0, $a2, 0x18
/* 357220 E00488A0 ACC5000C */  sw        $a1, 0xc($a2)
/* 357224 E00488A4 AEA20000 */  sw        $v0, ($s5)
/* 357228 E00488A8 3C02FB00 */  lui       $v0, 0xfb00
/* 35722C E00488AC ACC20010 */  sw        $v0, 0x10($a2)
/* 357230 E00488B0 32E200FF */  andi      $v0, $s7, 0xff
/* 357234 E00488B4 24038B00 */  addiu     $v1, $zero, -0x7500
/* 357238 E00488B8 00431025 */  or        $v0, $v0, $v1
/* 35723C E00488BC ACC20014 */  sw        $v0, 0x14($a2)
.LE00488C0:
/* 357240 E00488C0 3C08800A */  lui       $t0, %hi(gMasterGfxPos)
/* 357244 E00488C4 2508A66C */  addiu     $t0, $t0, %lo(gMasterGfxPos)
/* 357248 E00488C8 001611C0 */  sll       $v0, $s6, 7
/* 35724C E00488CC 30420FFF */  andi      $v0, $v0, 0xfff
/* 357250 E00488D0 00021300 */  sll       $v0, $v0, 0xc
/* 357254 E00488D4 3C04F200 */  lui       $a0, 0xf200
/* 357258 E00488D8 00441025 */  or        $v0, $v0, $a0
/* 35725C E00488DC 8D050000 */  lw        $a1, ($t0)
/* 357260 E00488E0 00163940 */  sll       $a3, $s6, 5
/* 357264 E00488E4 00A0182D */  daddu     $v1, $a1, $zero
/* 357268 E00488E8 24A50008 */  addiu     $a1, $a1, 8
/* 35726C E00488EC AD050000 */  sw        $a1, ($t0)
/* 357270 E00488F0 AC620000 */  sw        $v0, ($v1)
/* 357274 E00488F4 24E20020 */  addiu     $v0, $a3, 0x20
/* 357278 E00488F8 00021080 */  sll       $v0, $v0, 2
/* 35727C E00488FC 30420FFF */  andi      $v0, $v0, 0xfff
/* 357280 E0048900 00023300 */  sll       $a2, $v0, 0xc
/* 357284 E0048904 34C20080 */  ori       $v0, $a2, 0x80
/* 357288 E0048908 13C0000F */  beqz      $fp, .LE0048948
/* 35728C E004890C AC620004 */   sw       $v0, 4($v1)
/* 357290 E0048910 0080182D */  daddu     $v1, $a0, $zero
/* 357294 E0048914 34630080 */  ori       $v1, $v1, 0x80
/* 357298 E0048918 3C040100 */  lui       $a0, 0x100
/* 35729C E004891C 34840100 */  ori       $a0, $a0, 0x100
/* 3572A0 E0048920 24A20008 */  addiu     $v0, $a1, 8
/* 3572A4 E0048924 00C31825 */  or        $v1, $a2, $v1
/* 3572A8 E0048928 AD020000 */  sw        $v0, ($t0)
/* 3572AC E004892C 24E20040 */  addiu     $v0, $a3, 0x40
/* 3572B0 E0048930 00021080 */  sll       $v0, $v0, 2
/* 3572B4 E0048934 30420FFF */  andi      $v0, $v0, 0xfff
/* 3572B8 E0048938 00021300 */  sll       $v0, $v0, 0xc
/* 3572BC E004893C 00441025 */  or        $v0, $v0, $a0
/* 3572C0 E0048940 0801225D */  j         .LE0048974
/* 3572C4 E0048944 ACA30000 */   sw       $v1, ($a1)
.LE0048948:
/* 3572C8 E0048948 3C030100 */  lui       $v1, 0x100
/* 3572CC E004894C 34630080 */  ori       $v1, $v1, 0x80
/* 3572D0 E0048950 24A20008 */  addiu     $v0, $a1, 8
/* 3572D4 E0048954 AD020000 */  sw        $v0, ($t0)
/* 3572D8 E0048958 00C41025 */  or        $v0, $a2, $a0
/* 3572DC E004895C ACA20000 */  sw        $v0, ($a1)
/* 3572E0 E0048960 24E20040 */  addiu     $v0, $a3, 0x40
/* 3572E4 E0048964 00021080 */  sll       $v0, $v0, 2
/* 3572E8 E0048968 30420FFF */  andi      $v0, $v0, 0xfff
/* 3572EC E004896C 00021300 */  sll       $v0, $v0, 0xc
/* 3572F0 E0048970 00431025 */  or        $v0, $v0, $v1
.LE0048974:
/* 3572F4 E0048974 ACA20004 */  sw        $v0, 4($a1)
/* 3572F8 E0048978 3C06D838 */  lui       $a2, 0xd838
/* 3572FC E004897C 3C04800A */  lui       $a0, %hi(gMasterGfxPos)
/* 357300 E0048980 2484A66C */  addiu     $a0, $a0, %lo(gMasterGfxPos)
/* 357304 E0048984 34C60002 */  ori       $a2, $a2, 2
/* 357308 E0048988 8C820000 */  lw        $v0, ($a0)
/* 35730C E004898C 3C03DE00 */  lui       $v1, 0xde00
/* 357310 E0048990 0040282D */  daddu     $a1, $v0, $zero
/* 357314 E0048994 24420008 */  addiu     $v0, $v0, 8
/* 357318 E0048998 AC820000 */  sw        $v0, ($a0)
/* 35731C E004899C ACA30000 */  sw        $v1, ($a1)
/* 357320 E00489A0 8FAA00A0 */  lw        $t2, 0xa0($sp)
/* 357324 E00489A4 24430008 */  addiu     $v1, $v0, 8
/* 357328 E00489A8 ACAA0004 */  sw        $t2, 4($a1)
/* 35732C E00489AC AC830000 */  sw        $v1, ($a0)
/* 357330 E00489B0 24030040 */  addiu     $v1, $zero, 0x40
/* 357334 E00489B4 AC460000 */  sw        $a2, ($v0)
/* 357338 E00489B8 AC430004 */  sw        $v1, 4($v0)
/* 35733C E00489BC 8FBF00CC */  lw        $ra, 0xcc($sp)
/* 357340 E00489C0 8FBE00C8 */  lw        $fp, 0xc8($sp)
/* 357344 E00489C4 8FB700C4 */  lw        $s7, 0xc4($sp)
/* 357348 E00489C8 8FB600C0 */  lw        $s6, 0xc0($sp)
/* 35734C E00489CC 8FB500BC */  lw        $s5, 0xbc($sp)
/* 357350 E00489D0 8FB400B8 */  lw        $s4, 0xb8($sp)
/* 357354 E00489D4 8FB300B4 */  lw        $s3, 0xb4($sp)
/* 357358 E00489D8 8FB200B0 */  lw        $s2, 0xb0($sp)
/* 35735C E00489DC 8FB100AC */  lw        $s1, 0xac($sp)
/* 357360 E00489E0 8FB000A8 */  lw        $s0, 0xa8($sp)
/* 357364 E00489E4 D7B600D8 */  ldc1      $f22, 0xd8($sp)
/* 357368 E00489E8 D7B400D0 */  ldc1      $f20, 0xd0($sp)
/* 35736C E00489EC 03E00008 */  jr        $ra
/* 357370 E00489F0 27BD00E0 */   addiu    $sp, $sp, 0xe0
/* 357374 E00489F4 00000000 */  nop       
/* 357378 E00489F8 00000000 */  nop       
/* 35737C E00489FC 00000000 */  nop       
