.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel guFrustumF
/* 3D330 80061F30 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 3D334 80061F34 F7BA0038 */  sdc1      $f26, 0x38($sp)
/* 3D338 80061F38 C7BA0060 */  lwc1      $f26, 0x60($sp)
/* 3D33C 80061F3C F7B60028 */  sdc1      $f22, 0x28($sp)
/* 3D340 80061F40 C7B60064 */  lwc1      $f22, 0x64($sp)
/* 3D344 80061F44 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 3D348 80061F48 C7B40068 */  lwc1      $f20, 0x68($sp)
/* 3D34C 80061F4C AFB10014 */  sw        $s1, 0x14($sp)
/* 3D350 80061F50 8FB1006C */  lw        $s1, 0x6c($sp)
/* 3D354 80061F54 F7BC0040 */  sdc1      $f28, 0x40($sp)
/* 3D358 80061F58 4485E000 */  mtc1      $a1, $f28
/* 3D35C 80061F5C F7B80030 */  sdc1      $f24, 0x30($sp)
/* 3D360 80061F60 4486C000 */  mtc1      $a2, $f24
/* 3D364 80061F64 AFB00010 */  sw        $s0, 0x10($sp)
/* 3D368 80061F68 F7BE0048 */  sdc1      $f30, 0x48($sp)
/* 3D36C 80061F6C 4487F000 */  mtc1      $a3, $f30
/* 3D370 80061F70 AFBF0018 */  sw        $ra, 0x18($sp)
/* 3D374 80061F74 0C019D28 */  jal       guMtxIdentF
/* 3D378 80061F78 00808021 */   addu     $s0, $a0, $zero
/* 3D37C 80061F7C 461CC001 */  sub.s     $f0, $f24, $f28
/* 3D380 80061F80 461CC600 */  add.s     $f24, $f24, $f28
/* 3D384 80061F84 4600C603 */  div.s     $f24, $f24, $f0
/* 3D388 80061F88 4616B180 */  add.s     $f6, $f22, $f22
/* 3D38C 80061F8C 46003203 */  div.s     $f8, $f6, $f0
/* 3D390 80061F90 461ED081 */  sub.s     $f2, $f26, $f30
/* 3D394 80061F94 46023183 */  div.s     $f6, $f6, $f2
/* 3D398 80061F98 461ED680 */  add.s     $f26, $f26, $f30
/* 3D39C 80061F9C 4602D683 */  div.s     $f26, $f26, $f2
/* 3D3A0 80061FA0 4616A101 */  sub.s     $f4, $f20, $f22
/* 3D3A4 80061FA4 4616A080 */  add.s     $f2, $f20, $f22
/* 3D3A8 80061FA8 46001087 */  neg.s     $f2, $f2
/* 3D3AC 80061FAC 46041083 */  div.s     $f2, $f2, $f4
/* 3D3B0 80061FB0 3C01C000 */  lui       $at, 0xc000
/* 3D3B4 80061FB4 44810000 */  mtc1      $at, $f0
/* 3D3B8 80061FB8 00000000 */  nop
/* 3D3BC 80061FBC 4600A502 */  mul.s     $f20, $f20, $f0
/* 3D3C0 80061FC0 00000000 */  nop
/* 3D3C4 80061FC4 4616A502 */  mul.s     $f20, $f20, $f22
/* 3D3C8 80061FC8 4604A503 */  div.s     $f20, $f20, $f4
/* 3D3CC 80061FCC 3C01BF80 */  lui       $at, 0xbf80
/* 3D3D0 80061FD0 44810000 */  mtc1      $at, $f0
/* 3D3D4 80061FD4 00002821 */  addu      $a1, $zero, $zero
/* 3D3D8 80061FD8 AE00003C */  sw        $zero, 0x3c($s0)
/* 3D3DC 80061FDC E600002C */  swc1      $f0, 0x2c($s0)
/* 3D3E0 80061FE0 E6180020 */  swc1      $f24, 0x20($s0)
/* 3D3E4 80061FE4 E6080000 */  swc1      $f8, ($s0)
/* 3D3E8 80061FE8 E6060014 */  swc1      $f6, 0x14($s0)
/* 3D3EC 80061FEC E61A0024 */  swc1      $f26, 0x24($s0)
/* 3D3F0 80061FF0 E6020028 */  swc1      $f2, 0x28($s0)
/* 3D3F4 80061FF4 E6140038 */  swc1      $f20, 0x38($s0)
.L80061FF8:
/* 3D3F8 80061FF8 00002021 */  addu      $a0, $zero, $zero
/* 3D3FC 80061FFC 02001821 */  addu      $v1, $s0, $zero
.L80062000:
/* 3D400 80062000 C4600000 */  lwc1      $f0, ($v1)
/* 3D404 80062004 44915000 */  mtc1      $s1, $f10
/* 3D408 80062008 00000000 */  nop
/* 3D40C 8006200C 460A0002 */  mul.s     $f0, $f0, $f10
/* 3D410 80062010 24840001 */  addiu     $a0, $a0, 1
/* 3D414 80062014 28820004 */  slti      $v0, $a0, 4
/* 3D418 80062018 E4600000 */  swc1      $f0, ($v1)
/* 3D41C 8006201C 1440FFF8 */  bnez      $v0, .L80062000
/* 3D420 80062020 24630004 */   addiu    $v1, $v1, 4
/* 3D424 80062024 24A50001 */  addiu     $a1, $a1, 1
/* 3D428 80062028 28A20004 */  slti      $v0, $a1, 4
/* 3D42C 8006202C 1440FFF2 */  bnez      $v0, .L80061FF8
/* 3D430 80062030 26100010 */   addiu    $s0, $s0, 0x10
/* 3D434 80062034 8FBF0018 */  lw        $ra, 0x18($sp)
/* 3D438 80062038 8FB10014 */  lw        $s1, 0x14($sp)
/* 3D43C 8006203C 8FB00010 */  lw        $s0, 0x10($sp)
/* 3D440 80062040 D7BE0048 */  ldc1      $f30, 0x48($sp)
/* 3D444 80062044 D7BC0040 */  ldc1      $f28, 0x40($sp)
/* 3D448 80062048 D7BA0038 */  ldc1      $f26, 0x38($sp)
/* 3D44C 8006204C D7B80030 */  ldc1      $f24, 0x30($sp)
/* 3D450 80062050 D7B60028 */  ldc1      $f22, 0x28($sp)
/* 3D454 80062054 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 3D458 80062058 03E00008 */  jr        $ra
/* 3D45C 8006205C 27BD0050 */   addiu    $sp, $sp, 0x50
