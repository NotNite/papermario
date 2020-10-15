.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel update_player_action
/* 1743B0 80245AD0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 1743B4 80245AD4 AFB40020 */  sw        $s4, 0x20($sp)
/* 1743B8 80245AD8 3C14800E */  lui       $s4, %hi(gBattleStatus)
/* 1743BC 80245ADC 2694C070 */  addiu     $s4, $s4, %lo(gBattleStatus)
/* 1743C0 80245AE0 AFBF0028 */  sw        $ra, 0x28($sp)
/* 1743C4 80245AE4 AFB50024 */  sw        $s5, 0x24($sp)
/* 1743C8 80245AE8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 1743CC 80245AEC AFB20018 */  sw        $s2, 0x18($sp)
/* 1743D0 80245AF0 AFB10014 */  sw        $s1, 0x14($sp)
/* 1743D4 80245AF4 AFB00010 */  sw        $s0, 0x10($sp)
/* 1743D8 80245AF8 8E9500D8 */  lw        $s5, 0xd8($s4)
/* 1743DC 80245AFC 3C02800E */  lui       $v0, 0x800e
/* 1743E0 80245B00 8C42C4DC */  lw        $v0, -0x3b24($v0)
/* 1743E4 80245B04 8E9200DC */  lw        $s2, 0xdc($s4)
/* 1743E8 80245B08 14400068 */  bnez      $v0, .L80245CAC
/* 1743EC 80245B0C 2402007F */   addiu    $v0, $zero, 0x7f
/* 1743F0 80245B10 A2820086 */  sb        $v0, 0x86($s4)
/* 1743F4 80245B14 A2820087 */  sb        $v0, 0x87($s4)
/* 1743F8 80245B18 8E820000 */  lw        $v0, ($s4)
/* 1743FC 80245B1C 2403EFFF */  addiu     $v1, $zero, -0x1001
/* 174400 80245B20 A280008C */  sb        $zero, 0x8c($s4)
/* 174404 80245B24 A6800180 */  sh        $zero, 0x180($s4)
/* 174408 80245B28 A280019A */  sb        $zero, 0x19a($s4)
/* 17440C 80245B2C 00431024 */  and       $v0, $v0, $v1
/* 174410 80245B30 2403FFFD */  addiu     $v1, $zero, -3
/* 174414 80245B34 00431024 */  and       $v0, $v0, $v1
/* 174418 80245B38 0C098F18 */  jal       func_80263C60
/* 17441C 80245B3C AE820000 */   sw       $v0, ($s4)
/* 174420 80245B40 3C03F7FF */  lui       $v1, 0xf7ff
/* 174424 80245B44 8EA20000 */  lw        $v0, ($s5)
/* 174428 80245B48 3463FFFF */  ori       $v1, $v1, 0xffff
/* 17442C 80245B4C 00431024 */  and       $v0, $v0, $v1
/* 174430 80245B50 12400004 */  beqz      $s2, .L80245B64
/* 174434 80245B54 AEA20000 */   sw       $v0, ($s5)
/* 174438 80245B58 8E420000 */  lw        $v0, ($s2)
/* 17443C 80245B5C 00431024 */  and       $v0, $v0, $v1
/* 174440 80245B60 AE420000 */  sw        $v0, ($s2)
.L80245B64:
/* 174444 80245B64 0C09390F */  jal       cam_target_actor
/* 174448 80245B68 0000202D */   daddu    $a0, $zero, $zero
/* 17444C 80245B6C 3C04FFDF */  lui       $a0, 0xffdf
/* 174450 80245B70 3484FFFF */  ori       $a0, $a0, 0xffff
/* 174454 80245B74 0000882D */  daddu     $s1, $zero, $zero
/* 174458 80245B78 0280282D */  daddu     $a1, $s4, $zero
/* 17445C 80245B7C 8E820000 */  lw        $v0, ($s4)
/* 174460 80245B80 2403FFF7 */  addiu     $v1, $zero, -9
/* 174464 80245B84 00431024 */  and       $v0, $v0, $v1
/* 174468 80245B88 AE820000 */  sw        $v0, ($s4)
/* 17446C 80245B8C A2A0021C */  sb        $zero, 0x21c($s5)
/* 174470 80245B90 8E820004 */  lw        $v0, 4($s4)
/* 174474 80245B94 8E830000 */  lw        $v1, ($s4)
/* 174478 80245B98 34420008 */  ori       $v0, $v0, 8
/* 17447C 80245B9C 00641824 */  and       $v1, $v1, $a0
/* 174480 80245BA0 AE820004 */  sw        $v0, 4($s4)
/* 174484 80245BA4 AE830000 */  sw        $v1, ($s4)
.L80245BA8:
/* 174488 80245BA8 8CB000E0 */  lw        $s0, 0xe0($a1)
/* 17448C 80245BAC 56000001 */  bnel      $s0, $zero, .L80245BB4
/* 174490 80245BB0 A200021C */   sb       $zero, 0x21c($s0)
.L80245BB4:
/* 174494 80245BB4 26310001 */  addiu     $s1, $s1, 1
/* 174498 80245BB8 2A220018 */  slti      $v0, $s1, 0x18
/* 17449C 80245BBC 1440FFFA */  bnez      $v0, .L80245BA8
/* 1744A0 80245BC0 24A50004 */   addiu    $a1, $a1, 4
/* 1744A4 80245BC4 0000882D */  daddu     $s1, $zero, $zero
/* 1744A8 80245BC8 3C05FFF7 */  lui       $a1, 0xfff7
/* 1744AC 80245BCC 34A5FFFF */  ori       $a1, $a1, 0xffff
/* 1744B0 80245BD0 3C04F7FF */  lui       $a0, 0xf7ff
/* 1744B4 80245BD4 3484FFFF */  ori       $a0, $a0, 0xffff
/* 1744B8 80245BD8 0280182D */  daddu     $v1, $s4, $zero
.L80245BDC:
/* 1744BC 80245BDC 8C7000E0 */  lw        $s0, 0xe0($v1)
/* 1744C0 80245BE0 12000005 */  beqz      $s0, .L80245BF8
/* 1744C4 80245BE4 26310001 */   addiu    $s1, $s1, 1
/* 1744C8 80245BE8 8E020000 */  lw        $v0, ($s0)
/* 1744CC 80245BEC 00451024 */  and       $v0, $v0, $a1
/* 1744D0 80245BF0 00441024 */  and       $v0, $v0, $a0
/* 1744D4 80245BF4 AE020000 */  sw        $v0, ($s0)
.L80245BF8:
/* 1744D8 80245BF8 2A220018 */  slti      $v0, $s1, 0x18
/* 1744DC 80245BFC 1440FFF7 */  bnez      $v0, .L80245BDC
/* 1744E0 80245C00 24630004 */   addiu    $v1, $v1, 4
/* 1744E4 80245C04 92820178 */  lbu       $v0, 0x178($s4)
/* 1744E8 80245C08 2C420002 */  sltiu     $v0, $v0, 2
/* 1744EC 80245C0C 1040001E */  beqz      $v0, .L80245C88
/* 1744F0 80245C10 24020001 */   addiu    $v0, $zero, 1
/* 1744F4 80245C14 8290008A */  lb        $s0, 0x8a($s4)
/* 1744F8 80245C18 1602001C */  bne       $s0, $v0, .L80245C8C
/* 1744FC 80245C1C 24020003 */   addiu    $v0, $zero, 3
/* 174500 80245C20 3C048028 */  lui       $a0, %hi(PlayerScriptDispatcher)
/* 174504 80245C24 24844EBC */  addiu     $a0, $a0, %lo(PlayerScriptDispatcher)
/* 174508 80245C28 2405000A */  addiu     $a1, $zero, 0xa
/* 17450C 80245C2C 0000302D */  daddu     $a2, $zero, $zero
/* 174510 80245C30 24020003 */  addiu     $v0, $zero, 3
/* 174514 80245C34 A28200AC */  sb        $v0, 0xac($s4)
/* 174518 80245C38 24020014 */  addiu     $v0, $zero, 0x14
/* 17451C 80245C3C A280008A */  sb        $zero, 0x8a($s4)
/* 174520 80245C40 0C0B0CF8 */  jal       start_script
/* 174524 80245C44 A28201A7 */   sb       $v0, 0x1a7($s4)
/* 174528 80245C48 0040202D */  daddu     $a0, $v0, $zero
/* 17452C 80245C4C AEA401D4 */  sw        $a0, 0x1d4($s5)
/* 174530 80245C50 8C820144 */  lw        $v0, 0x144($a0)
/* 174534 80245C54 AEA201E4 */  sw        $v0, 0x1e4($s5)
/* 174538 80245C58 AC800148 */  sw        $zero, 0x148($a0)
/* 17453C 80245C5C 3C04800E */  lui       $a0, %hi(gBattleStatus)
/* 174540 80245C60 2484C070 */  addiu     $a0, $a0, %lo(gBattleStatus)
/* 174544 80245C64 8C820000 */  lw        $v0, ($a0)
/* 174548 80245C68 3C030001 */  lui       $v1, 1
/* 17454C 80245C6C 00431025 */  or        $v0, $v0, $v1
/* 174550 80245C70 0C093EC3 */  jal       close_action_command_instruction_popup
/* 174554 80245C74 AC820000 */   sw       $v0, ($a0)
/* 174558 80245C78 3C01800E */  lui       $at, 0x800e
/* 17455C 80245C7C AC30C4DC */  sw        $s0, -0x3b24($at)
/* 174560 80245C80 0809172B */  j         .L80245CAC
/* 174564 80245C84 00000000 */   nop      
.L80245C88:
/* 174568 80245C88 24020003 */  addiu     $v0, $zero, 3
.L80245C8C:
/* 17456C 80245C8C 3C04800E */  lui       $a0, %hi(gBattleStatus)
/* 174570 80245C90 2484C070 */  addiu     $a0, $a0, %lo(gBattleStatus)
/* 174574 80245C94 3C01800E */  lui       $at, 0x800e
/* 174578 80245C98 AC22C4DC */  sw        $v0, -0x3b24($at)
/* 17457C 80245C9C 8C820000 */  lw        $v0, ($a0)
/* 174580 80245CA0 2403FFFD */  addiu     $v1, $zero, -3
/* 174584 80245CA4 00431024 */  and       $v0, $v0, $v1
/* 174588 80245CA8 AC820000 */  sw        $v0, ($a0)
.L80245CAC:
/* 17458C 80245CAC 3C04800E */  lui       $a0, 0x800e
/* 174590 80245CB0 2484C4DC */  addiu     $a0, $a0, -0x3b24
/* 174594 80245CB4 8C830000 */  lw        $v1, ($a0)
/* 174598 80245CB8 24020001 */  addiu     $v0, $zero, 1
/* 17459C 80245CBC 10620005 */  beq       $v1, $v0, .L80245CD4
/* 1745A0 80245CC0 24020002 */   addiu    $v0, $zero, 2
/* 1745A4 80245CC4 10620023 */  beq       $v1, $v0, .L80245D54
/* 1745A8 80245CC8 00000000 */   nop      
/* 1745AC 80245CCC 0809175E */  j         .L80245D78
/* 1745B0 80245CD0 00000000 */   nop      
.L80245CD4:
/* 1745B4 80245CD4 8EA201D4 */  lw        $v0, 0x1d4($s5)
/* 1745B8 80245CD8 50400007 */  beql      $v0, $zero, .L80245CF8
/* 1745BC 80245CDC AEA001D4 */   sw       $zero, 0x1d4($s5)
/* 1745C0 80245CE0 8EA401E4 */  lw        $a0, 0x1e4($s5)
/* 1745C4 80245CE4 0C0B1059 */  jal       does_script_exist
/* 1745C8 80245CE8 00000000 */   nop      
/* 1745CC 80245CEC 14400022 */  bnez      $v0, .L80245D78
/* 1745D0 80245CF0 00000000 */   nop      
/* 1745D4 80245CF4 AEA001D4 */  sw        $zero, 0x1d4($s5)
.L80245CF8:
/* 1745D8 80245CF8 0C03A752 */  jal       is_ability_active
/* 1745DC 80245CFC 24040015 */   addiu    $a0, $zero, 0x15
/* 1745E0 80245D00 1440000E */  bnez      $v0, .L80245D3C
/* 1745E4 80245D04 24020002 */   addiu    $v0, $zero, 2
/* 1745E8 80245D08 8683017C */  lh        $v1, 0x17c($s4)
/* 1745EC 80245D0C 1060000A */  beqz      $v1, .L80245D38
/* 1745F0 80245D10 00031080 */   sll      $v0, $v1, 2
/* 1745F4 80245D14 00431021 */  addu      $v0, $v0, $v1
/* 1745F8 80245D18 00021080 */  sll       $v0, $v0, 2
/* 1745FC 80245D1C 3C048009 */  lui       $a0, 0x8009
/* 174600 80245D20 00822021 */  addu      $a0, $a0, $v0
/* 174604 80245D24 8084F073 */  lb        $a0, -0xf8d($a0)
/* 174608 80245D28 04800003 */  bltz      $a0, .L80245D38
/* 17460C 80245D2C 2484002E */   addiu    $a0, $a0, 0x2e
/* 174610 80245D30 0C093E58 */  jal       show_battle_message
/* 174614 80245D34 2405003C */   addiu    $a1, $zero, 0x3c
.L80245D38:
/* 174618 80245D38 24020002 */  addiu     $v0, $zero, 2
.L80245D3C:
/* 17461C 80245D3C 3C01802A */  lui       $at, 0x802a
/* 174620 80245D40 AC22F248 */  sw        $v0, -0xdb8($at)
/* 174624 80245D44 3C01800E */  lui       $at, 0x800e
/* 174628 80245D48 AC22C4DC */  sw        $v0, -0x3b24($at)
/* 17462C 80245D4C 0809175E */  j         .L80245D78
/* 174630 80245D50 00000000 */   nop      
.L80245D54:
/* 174634 80245D54 3C03802A */  lui       $v1, 0x802a
/* 174638 80245D58 2463F248 */  addiu     $v1, $v1, -0xdb8
/* 17463C 80245D5C 8C620000 */  lw        $v0, ($v1)
/* 174640 80245D60 10400003 */  beqz      $v0, .L80245D70
/* 174644 80245D64 2442FFFF */   addiu    $v0, $v0, -1
/* 174648 80245D68 0809175E */  j         .L80245D78
/* 17464C 80245D6C AC620000 */   sw       $v0, ($v1)
.L80245D70:
/* 174650 80245D70 24020003 */  addiu     $v0, $zero, 3
/* 174654 80245D74 AC820000 */  sw        $v0, ($a0)
.L80245D78:
/* 174658 80245D78 3C10800E */  lui       $s0, 0x800e
/* 17465C 80245D7C 2610C4DC */  addiu     $s0, $s0, -0x3b24
/* 174660 80245D80 8E030000 */  lw        $v1, ($s0)
/* 174664 80245D84 24020004 */  addiu     $v0, $zero, 4
/* 174668 80245D88 10620031 */  beq       $v1, $v0, .L80245E50
/* 17466C 80245D8C 28620005 */   slti     $v0, $v1, 5
/* 174670 80245D90 10400005 */  beqz      $v0, .L80245DA8
/* 174674 80245D94 24020003 */   addiu    $v0, $zero, 3
/* 174678 80245D98 1062000A */  beq       $v1, $v0, .L80245DC4
/* 17467C 80245D9C 24020015 */   addiu    $v0, $zero, 0x15
/* 174680 80245DA0 080918A6 */  j         .L80246298
/* 174684 80245DA4 00000000 */   nop      
.L80245DA8:
/* 174688 80245DA8 2402000B */  addiu     $v0, $zero, 0xb
/* 17468C 80245DAC 10620120 */  beq       $v1, $v0, .L80246230
/* 174690 80245DB0 2402000C */   addiu    $v0, $zero, 0xc
/* 174694 80245DB4 1062012B */  beq       $v1, $v0, .L80246264
/* 174698 80245DB8 00000000 */   nop      
/* 17469C 80245DBC 080918A2 */  j         .L80246288
/* 1746A0 80245DC0 00000000 */   nop      
.L80245DC4:
/* 1746A4 80245DC4 3C04FFFE */  lui       $a0, 0xfffe
/* 1746A8 80245DC8 3484FFFF */  ori       $a0, $a0, 0xffff
/* 1746AC 80245DCC 3C10800E */  lui       $s0, %hi(gBattleStatus)
/* 1746B0 80245DD0 2610C070 */  addiu     $s0, $s0, %lo(gBattleStatus)
/* 1746B4 80245DD4 8E020000 */  lw        $v0, ($s0)
/* 1746B8 80245DD8 2403BFFF */  addiu     $v1, $zero, -0x4001
/* 1746BC 80245DDC 00431024 */  and       $v0, $v0, $v1
/* 1746C0 80245DE0 00441024 */  and       $v0, $v0, $a0
/* 1746C4 80245DE4 0C03A6D5 */  jal       increment_status_menu_disabled
/* 1746C8 80245DE8 AE020000 */   sw       $v0, ($s0)
/* 1746CC 80245DEC 8E020000 */  lw        $v0, ($s0)
/* 1746D0 80245DF0 02A0202D */  daddu     $a0, $s5, $zero
/* 1746D4 80245DF4 34420100 */  ori       $v0, $v0, 0x100
/* 1746D8 80245DF8 0C099EA7 */  jal       reset_all_actor_sounds
/* 1746DC 80245DFC AE020000 */   sw       $v0, ($s0)
/* 1746E0 80245E00 8E020004 */  lw        $v0, 4($s0)
/* 1746E4 80245E04 30420040 */  andi      $v0, $v0, 0x40
/* 1746E8 80245E08 3C048028 */  lui       $a0, %hi(PlayerScriptDispatcher)
/* 1746EC 80245E0C 24844EBC */  addiu     $a0, $a0, %lo(PlayerScriptDispatcher)
/* 1746F0 80245E10 10400003 */  beqz      $v0, .L80245E20
/* 1746F4 80245E14 A28001A7 */   sb       $zero, 0x1a7($s4)
/* 1746F8 80245E18 3C048028 */  lui       $a0, %hi(PeachScriptDispatcher)
/* 1746FC 80245E1C 24845010 */  addiu     $a0, $a0, %lo(PeachScriptDispatcher)
.L80245E20:
/* 174700 80245E20 2405000A */  addiu     $a1, $zero, 0xa
/* 174704 80245E24 0C0B0CF8 */  jal       start_script
/* 174708 80245E28 0000302D */   daddu    $a2, $zero, $zero
/* 17470C 80245E2C 0040202D */  daddu     $a0, $v0, $zero
/* 174710 80245E30 AEA401D4 */  sw        $a0, 0x1d4($s5)
/* 174714 80245E34 8C830144 */  lw        $v1, 0x144($a0)
/* 174718 80245E38 24020004 */  addiu     $v0, $zero, 4
/* 17471C 80245E3C 3C01800E */  lui       $at, 0x800e
/* 174720 80245E40 AC22C4DC */  sw        $v0, -0x3b24($at)
/* 174724 80245E44 AEA301E4 */  sw        $v1, 0x1e4($s5)
/* 174728 80245E48 080918A2 */  j         .L80246288
/* 17472C 80245E4C AC800148 */   sw       $zero, 0x148($a0)
.L80245E50:
/* 174730 80245E50 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 174734 80245E54 8C42C070 */  lw        $v0, %lo(gBattleStatus)($v0)
/* 174738 80245E58 3C030020 */  lui       $v1, 0x20
/* 17473C 80245E5C 00431024 */  and       $v0, $v0, $v1
/* 174740 80245E60 1440000A */  bnez      $v0, .L80245E8C
/* 174744 80245E64 00000000 */   nop      
/* 174748 80245E68 8EA201D4 */  lw        $v0, 0x1d4($s5)
/* 17474C 80245E6C 50400007 */  beql      $v0, $zero, .L80245E8C
/* 174750 80245E70 AEA001D4 */   sw       $zero, 0x1d4($s5)
/* 174754 80245E74 8EA401E4 */  lw        $a0, 0x1e4($s5)
/* 174758 80245E78 0C0B1059 */  jal       does_script_exist
/* 17475C 80245E7C 00000000 */   nop      
/* 174760 80245E80 14400101 */  bnez      $v0, .L80246288
/* 174764 80245E84 00000000 */   nop      
/* 174768 80245E88 AEA001D4 */  sw        $zero, 0x1d4($s5)
.L80245E8C:
/* 17476C 80245E8C 3C04800E */  lui       $a0, %hi(gBattleStatus)
/* 174770 80245E90 2484C070 */  addiu     $a0, $a0, %lo(gBattleStatus)
/* 174774 80245E94 8C820000 */  lw        $v0, ($a0)
/* 174778 80245E98 2403FEFF */  addiu     $v1, $zero, -0x101
/* 17477C 80245E9C 00431024 */  and       $v0, $v0, $v1
/* 174780 80245EA0 AC820000 */  sw        $v0, ($a0)
/* 174784 80245EA4 8EA201D8 */  lw        $v0, 0x1d8($s5)
/* 174788 80245EA8 10400005 */  beqz      $v0, .L80245EC0
/* 17478C 80245EAC 00000000 */   nop      
/* 174790 80245EB0 0C0B1059 */  jal       does_script_exist
/* 174794 80245EB4 8EA401E8 */   lw       $a0, 0x1e8($s5)
/* 174798 80245EB8 144000F3 */  bnez      $v0, .L80246288
/* 17479C 80245EBC 00000000 */   nop      
.L80245EC0:
/* 1747A0 80245EC0 1240000A */  beqz      $s2, .L80245EEC
/* 1747A4 80245EC4 AEA001D8 */   sw       $zero, 0x1d8($s5)
/* 1747A8 80245EC8 8E4201D8 */  lw        $v0, 0x1d8($s2)
/* 1747AC 80245ECC 50400007 */  beql      $v0, $zero, .L80245EEC
/* 1747B0 80245ED0 AE4001D8 */   sw       $zero, 0x1d8($s2)
/* 1747B4 80245ED4 8E4401E8 */  lw        $a0, 0x1e8($s2)
/* 1747B8 80245ED8 0C0B1059 */  jal       does_script_exist
/* 1747BC 80245EDC 00000000 */   nop      
/* 1747C0 80245EE0 144000E9 */  bnez      $v0, .L80246288
/* 1747C4 80245EE4 00000000 */   nop      
/* 1747C8 80245EE8 AE4001D8 */  sw        $zero, 0x1d8($s2)
.L80245EEC:
/* 1747CC 80245EEC 0000982D */  daddu     $s3, $zero, $zero
/* 1747D0 80245EF0 0260882D */  daddu     $s1, $s3, $zero
/* 1747D4 80245EF4 0280902D */  daddu     $s2, $s4, $zero
.L80245EF8:
/* 1747D8 80245EF8 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 1747DC 80245EFC 5200000B */  beql      $s0, $zero, .L80245F2C
/* 1747E0 80245F00 26310001 */   addiu    $s1, $s1, 1
/* 1747E4 80245F04 8E0201D4 */  lw        $v0, 0x1d4($s0)
/* 1747E8 80245F08 50400008 */  beql      $v0, $zero, .L80245F2C
/* 1747EC 80245F0C 26310001 */   addiu    $s1, $s1, 1
/* 1747F0 80245F10 8E0401E4 */  lw        $a0, 0x1e4($s0)
/* 1747F4 80245F14 0C0B1059 */  jal       does_script_exist
/* 1747F8 80245F18 00000000 */   nop      
/* 1747FC 80245F1C 50400002 */  beql      $v0, $zero, .L80245F28
/* 174800 80245F20 AE0001D4 */   sw       $zero, 0x1d4($s0)
/* 174804 80245F24 24130001 */  addiu     $s3, $zero, 1
.L80245F28:
/* 174808 80245F28 26310001 */  addiu     $s1, $s1, 1
.L80245F2C:
/* 17480C 80245F2C 2A220018 */  slti      $v0, $s1, 0x18
/* 174810 80245F30 1440FFF1 */  bnez      $v0, .L80245EF8
/* 174814 80245F34 26520004 */   addiu    $s2, $s2, 4
/* 174818 80245F38 166000D3 */  bnez      $s3, .L80246288
/* 17481C 80245F3C 0000882D */   daddu    $s1, $zero, $zero
/* 174820 80245F40 0280902D */  daddu     $s2, $s4, $zero
.L80245F44:
/* 174824 80245F44 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 174828 80245F48 5200000B */  beql      $s0, $zero, .L80245F78
/* 17482C 80245F4C 26310001 */   addiu    $s1, $s1, 1
/* 174830 80245F50 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 174834 80245F54 50400008 */  beql      $v0, $zero, .L80245F78
/* 174838 80245F58 26310001 */   addiu    $s1, $s1, 1
/* 17483C 80245F5C 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 174840 80245F60 0C0B1059 */  jal       does_script_exist
/* 174844 80245F64 00000000 */   nop      
/* 174848 80245F68 50400002 */  beql      $v0, $zero, .L80245F74
/* 17484C 80245F6C AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 174850 80245F70 24130001 */  addiu     $s3, $zero, 1
.L80245F74:
/* 174854 80245F74 26310001 */  addiu     $s1, $s1, 1
.L80245F78:
/* 174858 80245F78 2A220018 */  slti      $v0, $s1, 0x18
/* 17485C 80245F7C 1440FFF1 */  bnez      $v0, .L80245F44
/* 174860 80245F80 26520004 */   addiu    $s2, $s2, 4
/* 174864 80245F84 166000C0 */  bnez      $s3, .L80246288
/* 174868 80245F88 0000882D */   daddu    $s1, $zero, $zero
/* 17486C 80245F8C 3C04FFF7 */  lui       $a0, 0xfff7
/* 174870 80245F90 3484FFFF */  ori       $a0, $a0, 0xffff
/* 174874 80245F94 0280182D */  daddu     $v1, $s4, $zero
.L80245F98:
/* 174878 80245F98 8C7000E0 */  lw        $s0, 0xe0($v1)
/* 17487C 80245F9C 12000004 */  beqz      $s0, .L80245FB0
/* 174880 80245FA0 26310001 */   addiu    $s1, $s1, 1
/* 174884 80245FA4 8E020000 */  lw        $v0, ($s0)
/* 174888 80245FA8 00441024 */  and       $v0, $v0, $a0
/* 17488C 80245FAC AE020000 */  sw        $v0, ($s0)
.L80245FB0:
/* 174890 80245FB0 2A220018 */  slti      $v0, $s1, 0x18
/* 174894 80245FB4 1440FFF8 */  bnez      $v0, .L80245F98
/* 174898 80245FB8 24630004 */   addiu    $v1, $v1, 4
/* 17489C 80245FBC 8282008C */  lb        $v0, 0x8c($s4)
/* 1748A0 80245FC0 144000B1 */  bnez      $v0, .L80246288
/* 1748A4 80245FC4 00000000 */   nop      
/* 1748A8 80245FC8 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 1748AC 80245FCC 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 1748B0 80245FD0 904200AA */  lbu       $v0, 0xaa($v0)
/* 1748B4 80245FD4 30420001 */  andi      $v0, $v0, 1
/* 1748B8 80245FD8 10400005 */  beqz      $v0, .L80245FF0
/* 1748BC 80245FDC 00000000 */   nop      
/* 1748C0 80245FE0 0C090464 */  jal       func_80241190
/* 1748C4 80245FE4 24040023 */   addiu    $a0, $zero, 0x23
/* 1748C8 80245FE8 080918A2 */  j         .L80246288
/* 1748CC 80245FEC 00000000 */   nop      
.L80245FF0:
/* 1748D0 80245FF0 0C03A6CC */  jal       decrement_status_menu_disabled
/* 1748D4 80245FF4 00000000 */   nop      
/* 1748D8 80245FF8 3C10800E */  lui       $s0, %hi(gBattleStatus)
/* 1748DC 80245FFC 2610C070 */  addiu     $s0, $s0, %lo(gBattleStatus)
/* 1748E0 80246000 8E020000 */  lw        $v0, ($s0)
/* 1748E4 80246004 34420008 */  ori       $v0, $v0, 8
/* 1748E8 80246008 AE020000 */  sw        $v0, ($s0)
/* 1748EC 8024600C 8E020004 */  lw        $v0, 4($s0)
/* 1748F0 80246010 2403FFF7 */  addiu     $v1, $zero, -9
/* 1748F4 80246014 00431024 */  and       $v0, $v0, $v1
/* 1748F8 80246018 0C098D19 */  jal       func_80263464
/* 1748FC 8024601C AE020004 */   sw       $v0, 4($s0)
/* 174900 80246020 14400100 */  bnez      $v0, .L80246424
/* 174904 80246024 24020001 */   addiu    $v0, $zero, 1
/* 174908 80246028 82830178 */  lb        $v1, 0x178($s4)
/* 17490C 8024602C 1462000C */  bne       $v1, $v0, .L80246060
/* 174910 80246030 2402000B */   addiu    $v0, $zero, 0xb
/* 174914 80246034 8683017C */  lh        $v1, 0x17c($s4)
/* 174918 80246038 10620009 */  beq       $v1, $v0, .L80246060
/* 17491C 8024603C 2402000F */   addiu    $v0, $zero, 0xf
/* 174920 80246040 10620007 */  beq       $v1, $v0, .L80246060
/* 174924 80246044 24020011 */   addiu    $v0, $zero, 0x11
/* 174928 80246048 10620005 */  beq       $v1, $v0, .L80246060
/* 17492C 8024604C 3C03EFFF */   lui      $v1, 0xefff
/* 174930 80246050 8E020000 */  lw        $v0, ($s0)
/* 174934 80246054 3463FFFF */  ori       $v1, $v1, 0xffff
/* 174938 80246058 00431024 */  and       $v0, $v0, $v1
/* 17493C 8024605C AE020000 */  sw        $v0, ($s0)
.L80246060:
/* 174940 80246060 82820178 */  lb        $v0, 0x178($s4)
/* 174944 80246064 1440000E */  bnez      $v0, .L802460A0
/* 174948 80246068 24020023 */   addiu    $v0, $zero, 0x23
/* 17494C 8024606C 8683017C */  lh        $v1, 0x17c($s4)
/* 174950 80246070 1062000B */  beq       $v1, $v0, .L802460A0
/* 174954 80246074 24020025 */   addiu    $v0, $zero, 0x25
/* 174958 80246078 10620009 */  beq       $v1, $v0, .L802460A0
/* 17495C 8024607C 24020027 */   addiu    $v0, $zero, 0x27
/* 174960 80246080 10620007 */  beq       $v1, $v0, .L802460A0
/* 174964 80246084 3C04DFFF */   lui      $a0, 0xdfff
/* 174968 80246088 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 17496C 8024608C 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 174970 80246090 8C620000 */  lw        $v0, ($v1)
/* 174974 80246094 3484FFFF */  ori       $a0, $a0, 0xffff
/* 174978 80246098 00441024 */  and       $v0, $v0, $a0
/* 17497C 8024609C AC620000 */  sw        $v0, ($v1)
.L802460A0:
/* 174980 802460A0 3C04800E */  lui       $a0, %hi(gBattleStatus)
/* 174984 802460A4 2484C070 */  addiu     $a0, $a0, %lo(gBattleStatus)
/* 174988 802460A8 8C820000 */  lw        $v0, ($a0)
/* 17498C 802460AC 3C032000 */  lui       $v1, 0x2000
/* 174990 802460B0 00431024 */  and       $v0, $v0, $v1
/* 174994 802460B4 50400001 */  beql      $v0, $zero, .L802460BC
/* 174998 802460B8 A2800097 */   sb       $zero, 0x97($s4)
.L802460BC:
/* 17499C 802460BC 8C820000 */  lw        $v0, ($a0)
/* 1749A0 802460C0 3C031000 */  lui       $v1, 0x1000
/* 1749A4 802460C4 00431024 */  and       $v0, $v0, $v1
/* 1749A8 802460C8 50400001 */  beql      $v0, $zero, .L802460D0
/* 1749AC 802460CC A2800096 */   sb       $zero, 0x96($s4)
.L802460D0:
/* 1749B0 802460D0 0000882D */  daddu     $s1, $zero, $zero
/* 1749B4 802460D4 3C060040 */  lui       $a2, 0x40
/* 1749B8 802460D8 3C050C00 */  lui       $a1, 0xc00
/* 1749BC 802460DC 0280202D */  daddu     $a0, $s4, $zero
.L802460E0:
/* 1749C0 802460E0 8C9000E0 */  lw        $s0, 0xe0($a0)
/* 1749C4 802460E4 12000007 */  beqz      $s0, .L80246104
/* 1749C8 802460E8 26310001 */   addiu    $s1, $s1, 1
/* 1749CC 802460EC 8E030000 */  lw        $v1, ($s0)
/* 1749D0 802460F0 00661024 */  and       $v0, $v1, $a2
/* 1749D4 802460F4 14400003 */  bnez      $v0, .L80246104
/* 1749D8 802460F8 00000000 */   nop      
/* 1749DC 802460FC 00651025 */  or        $v0, $v1, $a1
/* 1749E0 80246100 AE020000 */  sw        $v0, ($s0)
.L80246104:
/* 1749E4 80246104 2A220018 */  slti      $v0, $s1, 0x18
/* 1749E8 80246108 1440FFF5 */  bnez      $v0, .L802460E0
/* 1749EC 8024610C 24840004 */   addiu    $a0, $a0, 4
/* 1749F0 80246110 0C099DDF */  jal       func_8026777C
/* 1749F4 80246114 0000982D */   daddu    $s3, $zero, $zero
/* 1749F8 80246118 0260882D */  daddu     $s1, $s3, $zero
/* 1749FC 8024611C 0280182D */  daddu     $v1, $s4, $zero
.L80246120:
/* 174A00 80246120 8C7000E0 */  lw        $s0, 0xe0($v1)
/* 174A04 80246124 12000004 */  beqz      $s0, .L80246138
/* 174A08 80246128 26310001 */   addiu    $s1, $s1, 1
/* 174A0C 8024612C 8202021C */  lb        $v0, 0x21c($s0)
/* 174A10 80246130 54400004 */  bnel      $v0, $zero, .L80246144
/* 174A14 80246134 24130001 */   addiu    $s3, $zero, 1
.L80246138:
/* 174A18 80246138 2A220018 */  slti      $v0, $s1, 0x18
/* 174A1C 8024613C 1440FFF8 */  bnez      $v0, .L80246120
/* 174A20 80246140 24630004 */   addiu    $v1, $v1, 4
.L80246144:
/* 174A24 80246144 16600005 */  bnez      $s3, .L8024615C
/* 174A28 80246148 24020014 */   addiu    $v0, $zero, 0x14
/* 174A2C 8024614C 3C01800E */  lui       $at, 0x800e
/* 174A30 80246150 AC22C4DC */  sw        $v0, -0x3b24($at)
/* 174A34 80246154 080918A2 */  j         .L80246288
/* 174A38 80246158 00000000 */   nop      
.L8024615C:
/* 174A3C 8024615C 0C093903 */  jal       func_8024E40C
/* 174A40 80246160 24040003 */   addiu    $a0, $zero, 3
/* 174A44 80246164 9202021C */  lbu       $v0, 0x21c($s0)
/* 174A48 80246168 2442FFFC */  addiu     $v0, $v0, -4
/* 174A4C 8024616C 00021600 */  sll       $v0, $v0, 0x18
/* 174A50 80246170 00021E03 */  sra       $v1, $v0, 0x18
/* 174A54 80246174 2C620008 */  sltiu     $v0, $v1, 8
/* 174A58 80246178 10400016 */  beqz      $v0, .L802461D4
/* 174A5C 8024617C 00031080 */   sll      $v0, $v1, 2
/* 174A60 80246180 3C01802A */  lui       $at, 0x802a
/* 174A64 80246184 00220821 */  addu      $at, $at, $v0
/* 174A68 80246188 8C22CAF0 */  lw        $v0, -0x3510($at)
/* 174A6C 8024618C 00400008 */  jr        $v0
/* 174A70 80246190 00000000 */   nop      
/* 174A74 80246194 08091879 */  j         .L802461E4
/* 174A78 80246198 24100012 */   addiu    $s0, $zero, 0x12
/* 174A7C 8024619C 08091879 */  j         .L802461E4
/* 174A80 802461A0 24100013 */   addiu    $s0, $zero, 0x13
/* 174A84 802461A4 08091879 */  j         .L802461E4
/* 174A88 802461A8 24100014 */   addiu    $s0, $zero, 0x14
/* 174A8C 802461AC 08091879 */  j         .L802461E4
/* 174A90 802461B0 24100015 */   addiu    $s0, $zero, 0x15
/* 174A94 802461B4 08091879 */  j         .L802461E4
/* 174A98 802461B8 24100016 */   addiu    $s0, $zero, 0x16
/* 174A9C 802461BC 08091879 */  j         .L802461E4
/* 174AA0 802461C0 24100017 */   addiu    $s0, $zero, 0x17
/* 174AA4 802461C4 08091879 */  j         .L802461E4
/* 174AA8 802461C8 24100018 */   addiu    $s0, $zero, 0x18
/* 174AAC 802461CC 08091879 */  j         .L802461E4
/* 174AB0 802461D0 24100019 */   addiu    $s0, $zero, 0x19
.L802461D4:
/* 174AB4 802461D4 0000802D */  daddu     $s0, $zero, $zero
/* 174AB8 802461D8 24020014 */  addiu     $v0, $zero, 0x14
/* 174ABC 802461DC 3C01800E */  lui       $at, 0x800e
/* 174AC0 802461E0 AC22C4DC */  sw        $v0, -0x3b24($at)
.L802461E4:
/* 174AC4 802461E4 0C05272D */  jal       play_sound
/* 174AC8 802461E8 24042107 */   addiu    $a0, $zero, 0x2107
/* 174ACC 802461EC 0200202D */  daddu     $a0, $s0, $zero
/* 174AD0 802461F0 0C093E58 */  jal       show_battle_message
/* 174AD4 802461F4 2405003C */   addiu    $a1, $zero, 0x3c
/* 174AD8 802461F8 0000882D */  daddu     $s1, $zero, $zero
/* 174ADC 802461FC 0280182D */  daddu     $v1, $s4, $zero
.L80246200:
/* 174AE0 80246200 8C7000E0 */  lw        $s0, 0xe0($v1)
/* 174AE4 80246204 56000001 */  bnel      $s0, $zero, .L8024620C
/* 174AE8 80246208 A200021C */   sb       $zero, 0x21c($s0)
.L8024620C:
/* 174AEC 8024620C 26310001 */  addiu     $s1, $s1, 1
/* 174AF0 80246210 2A220018 */  slti      $v0, $s1, 0x18
/* 174AF4 80246214 1440FFFA */  bnez      $v0, .L80246200
/* 174AF8 80246218 24630004 */   addiu    $v1, $v1, 4
/* 174AFC 8024621C 2402000B */  addiu     $v0, $zero, 0xb
/* 174B00 80246220 3C01800E */  lui       $at, 0x800e
/* 174B04 80246224 AC22C4DC */  sw        $v0, -0x3b24($at)
/* 174B08 80246228 080918A2 */  j         .L80246288
/* 174B0C 8024622C 00000000 */   nop      
.L80246230:
/* 174B10 80246230 0C093EAD */  jal       is_popup_displayed
/* 174B14 80246234 00000000 */   nop      
/* 174B18 80246238 14400013 */  bnez      $v0, .L80246288
/* 174B1C 8024623C 00000000 */   nop      
/* 174B20 80246240 0C093903 */  jal       func_8024E40C
/* 174B24 80246244 24040002 */   addiu    $a0, $zero, 2
/* 174B28 80246248 0C093936 */  jal       move_cam_over
/* 174B2C 8024624C 2404000F */   addiu    $a0, $zero, 0xf
/* 174B30 80246250 2402000A */  addiu     $v0, $zero, 0xa
/* 174B34 80246254 3C01802A */  lui       $at, 0x802a
/* 174B38 80246258 AC22F248 */  sw        $v0, -0xdb8($at)
/* 174B3C 8024625C 080918A1 */  j         .L80246284
/* 174B40 80246260 2402000C */   addiu    $v0, $zero, 0xc
.L80246264:
/* 174B44 80246264 3C03802A */  lui       $v1, 0x802a
/* 174B48 80246268 2463F248 */  addiu     $v1, $v1, -0xdb8
/* 174B4C 8024626C 8C620000 */  lw        $v0, ($v1)
/* 174B50 80246270 10400003 */  beqz      $v0, .L80246280
/* 174B54 80246274 2442FFFF */   addiu    $v0, $v0, -1
/* 174B58 80246278 080918A2 */  j         .L80246288
/* 174B5C 8024627C AC620000 */   sw       $v0, ($v1)
.L80246280:
/* 174B60 80246280 24020014 */  addiu     $v0, $zero, 0x14
.L80246284:
/* 174B64 80246284 AE020000 */  sw        $v0, ($s0)
.L80246288:
/* 174B68 80246288 3C10800E */  lui       $s0, 0x800e
/* 174B6C 8024628C 2610C4DC */  addiu     $s0, $s0, -0x3b24
/* 174B70 80246290 8E030000 */  lw        $v1, ($s0)
/* 174B74 80246294 24020015 */  addiu     $v0, $zero, 0x15
.L80246298:
/* 174B78 80246298 1062003C */  beq       $v1, $v0, .L8024638C
/* 174B7C 8024629C 28620016 */   slti     $v0, $v1, 0x16
/* 174B80 802462A0 10400005 */  beqz      $v0, .L802462B8
/* 174B84 802462A4 24020014 */   addiu    $v0, $zero, 0x14
/* 174B88 802462A8 10620008 */  beq       $v1, $v0, .L802462CC
/* 174B8C 802462AC 00000000 */   nop      
/* 174B90 802462B0 080918F9 */  j         .L802463E4
/* 174B94 802462B4 00000000 */   nop      
.L802462B8:
/* 174B98 802462B8 24020016 */  addiu     $v0, $zero, 0x16
/* 174B9C 802462BC 10620040 */  beq       $v1, $v0, .L802463C0
/* 174BA0 802462C0 00000000 */   nop      
/* 174BA4 802462C4 080918F9 */  j         .L802463E4
/* 174BA8 802462C8 00000000 */   nop      
.L802462CC:
/* 174BAC 802462CC 82A2021C */  lb        $v0, 0x21c($s5)
/* 174BB0 802462D0 10400043 */  beqz      $v0, .L802463E0
/* 174BB4 802462D4 2402001E */   addiu    $v0, $zero, 0x1e
/* 174BB8 802462D8 0C093903 */  jal       func_8024E40C
/* 174BBC 802462DC 24040021 */   addiu    $a0, $zero, 0x21
/* 174BC0 802462E0 92A2021C */  lbu       $v0, 0x21c($s5)
/* 174BC4 802462E4 2442FFFC */  addiu     $v0, $v0, -4
/* 174BC8 802462E8 00021600 */  sll       $v0, $v0, 0x18
/* 174BCC 802462EC 00021E03 */  sra       $v1, $v0, 0x18
/* 174BD0 802462F0 2C620008 */  sltiu     $v0, $v1, 8
/* 174BD4 802462F4 10400014 */  beqz      $v0, .L80246348
/* 174BD8 802462F8 00031080 */   sll      $v0, $v1, 2
/* 174BDC 802462FC 3C01802A */  lui       $at, 0x802a
/* 174BE0 80246300 00220821 */  addu      $at, $at, $v0
/* 174BE4 80246304 8C22CB10 */  lw        $v0, -0x34f0($at)
/* 174BE8 80246308 00400008 */  jr        $v0
/* 174BEC 8024630C 00000000 */   nop      
/* 174BF0 80246310 080918D6 */  j         .L80246358
/* 174BF4 80246314 2410000A */   addiu    $s0, $zero, 0xa
/* 174BF8 80246318 080918D6 */  j         .L80246358
/* 174BFC 8024631C 2410000B */   addiu    $s0, $zero, 0xb
/* 174C00 80246320 080918D6 */  j         .L80246358
/* 174C04 80246324 2410000C */   addiu    $s0, $zero, 0xc
/* 174C08 80246328 080918D6 */  j         .L80246358
/* 174C0C 8024632C 2410000D */   addiu    $s0, $zero, 0xd
/* 174C10 80246330 080918D6 */  j         .L80246358
/* 174C14 80246334 2410000E */   addiu    $s0, $zero, 0xe
/* 174C18 80246338 080918D6 */  j         .L80246358
/* 174C1C 8024633C 2410000F */   addiu    $s0, $zero, 0xf
/* 174C20 80246340 080918D6 */  j         .L80246358
/* 174C24 80246344 24100010 */   addiu    $s0, $zero, 0x10
.L80246348:
/* 174C28 80246348 0000802D */  daddu     $s0, $zero, $zero
/* 174C2C 8024634C 2402001E */  addiu     $v0, $zero, 0x1e
/* 174C30 80246350 3C01800E */  lui       $at, 0x800e
/* 174C34 80246354 AC22C4DC */  sw        $v0, -0x3b24($at)
.L80246358:
/* 174C38 80246358 0200202D */  daddu     $a0, $s0, $zero
/* 174C3C 8024635C 0C093E58 */  jal       show_battle_message
/* 174C40 80246360 2405003C */   addiu    $a1, $zero, 0x3c
/* 174C44 80246364 24020015 */  addiu     $v0, $zero, 0x15
/* 174C48 80246368 A2A0021C */  sb        $zero, 0x21c($s5)
/* 174C4C 8024636C A2A0021D */  sb        $zero, 0x21d($s5)
/* 174C50 80246370 3C01800E */  lui       $at, 0x800e
/* 174C54 80246374 AC22C4DC */  sw        $v0, -0x3b24($at)
/* 174C58 80246378 8EA20000 */  lw        $v0, ($s5)
/* 174C5C 8024637C 3C030800 */  lui       $v1, 0x800
/* 174C60 80246380 00431025 */  or        $v0, $v0, $v1
/* 174C64 80246384 080918F9 */  j         .L802463E4
/* 174C68 80246388 AEA20000 */   sw       $v0, ($s5)
.L8024638C:
/* 174C6C 8024638C 0C093EAD */  jal       is_popup_displayed
/* 174C70 80246390 00000000 */   nop      
/* 174C74 80246394 14400013 */  bnez      $v0, .L802463E4
/* 174C78 80246398 00000000 */   nop      
/* 174C7C 8024639C 0C093903 */  jal       func_8024E40C
/* 174C80 802463A0 24040002 */   addiu    $a0, $zero, 2
/* 174C84 802463A4 0C093936 */  jal       move_cam_over
/* 174C88 802463A8 2404000F */   addiu    $a0, $zero, 0xf
/* 174C8C 802463AC 2402000A */  addiu     $v0, $zero, 0xa
/* 174C90 802463B0 3C01802A */  lui       $at, 0x802a
/* 174C94 802463B4 AC22F248 */  sw        $v0, -0xdb8($at)
/* 174C98 802463B8 080918F8 */  j         .L802463E0
/* 174C9C 802463BC 24020016 */   addiu    $v0, $zero, 0x16
.L802463C0:
/* 174CA0 802463C0 3C03802A */  lui       $v1, 0x802a
/* 174CA4 802463C4 2463F248 */  addiu     $v1, $v1, -0xdb8
/* 174CA8 802463C8 8C620000 */  lw        $v0, ($v1)
/* 174CAC 802463CC 10400003 */  beqz      $v0, .L802463DC
/* 174CB0 802463D0 2442FFFF */   addiu    $v0, $v0, -1
/* 174CB4 802463D4 080918F9 */  j         .L802463E4
/* 174CB8 802463D8 AC620000 */   sw       $v0, ($v1)
.L802463DC:
/* 174CBC 802463DC 2402001E */  addiu     $v0, $zero, 0x1e
.L802463E0:
/* 174CC0 802463E0 AE020000 */  sw        $v0, ($s0)
.L802463E4:
/* 174CC4 802463E4 3C03800E */  lui       $v1, 0x800e
/* 174CC8 802463E8 8C63C4DC */  lw        $v1, -0x3b24($v1)
/* 174CCC 802463EC 2402001E */  addiu     $v0, $zero, 0x1e
/* 174CD0 802463F0 1462000C */  bne       $v1, $v0, .L80246424
/* 174CD4 802463F4 00000000 */   nop      
/* 174CD8 802463F8 8EA201D4 */  lw        $v0, 0x1d4($s5)
/* 174CDC 802463FC 50400007 */  beql      $v0, $zero, .L8024641C
/* 174CE0 80246400 AEA001D4 */   sw       $zero, 0x1d4($s5)
/* 174CE4 80246404 8EA401E4 */  lw        $a0, 0x1e4($s5)
/* 174CE8 80246408 0C0B1059 */  jal       does_script_exist
/* 174CEC 8024640C 00000000 */   nop      
/* 174CF0 80246410 14400004 */  bnez      $v0, .L80246424
/* 174CF4 80246414 00000000 */   nop      
/* 174CF8 80246418 AEA001D4 */  sw        $zero, 0x1d4($s5)
.L8024641C:
/* 174CFC 8024641C 0C090464 */  jal       func_80241190
/* 174D00 80246420 24040016 */   addiu    $a0, $zero, 0x16
.L80246424:
/* 174D04 80246424 8FBF0028 */  lw        $ra, 0x28($sp)
/* 174D08 80246428 8FB50024 */  lw        $s5, 0x24($sp)
/* 174D0C 8024642C 8FB40020 */  lw        $s4, 0x20($sp)
/* 174D10 80246430 8FB3001C */  lw        $s3, 0x1c($sp)
/* 174D14 80246434 8FB20018 */  lw        $s2, 0x18($sp)
/* 174D18 80246438 8FB10014 */  lw        $s1, 0x14($sp)
/* 174D1C 8024643C 8FB00010 */  lw        $s0, 0x10($sp)
/* 174D20 80246440 03E00008 */  jr        $ra
/* 174D24 80246444 27BD0030 */   addiu    $sp, $sp, 0x30
