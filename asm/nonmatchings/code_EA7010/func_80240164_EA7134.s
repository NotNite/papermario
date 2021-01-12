.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240164_EA7134
/* EA7134 80240164 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* EA7138 80240168 AFB00010 */  sw        $s0, 0x10($sp)
/* EA713C 8024016C 0080802D */  daddu     $s0, $a0, $zero
/* EA7140 80240170 10A00005 */  beqz      $a1, .L80240188
/* EA7144 80240174 AFBF0014 */   sw       $ra, 0x14($sp)
/* EA7148 80240178 AE000070 */  sw        $zero, 0x70($s0)
/* EA714C 8024017C AE000074 */  sw        $zero, 0x74($s0)
/* EA7150 80240180 AE000078 */  sw        $zero, 0x78($s0)
/* EA7154 80240184 AE00007C */  sw        $zero, 0x7c($s0)
.L80240188:
/* EA7158 80240188 8E020070 */  lw        $v0, 0x70($s0)
/* EA715C 8024018C 1440000E */  bnez      $v0, .L802401C8
/* EA7160 80240190 00000000 */   nop      
/* EA7164 80240194 8E0300A8 */  lw        $v1, 0xa8($s0)
/* EA7168 80240198 8E020088 */  lw        $v0, 0x88($s0)
/* EA716C 8024019C 00621821 */  addu      $v1, $v1, $v0
/* EA7170 802401A0 04610004 */  bgez      $v1, .L802401B4
/* EA7174 802401A4 AE0300A8 */   sw       $v1, 0xa8($s0)
/* EA7178 802401A8 3C020002 */  lui       $v0, 2
/* EA717C 802401AC 08090071 */  j         .L802401C4
/* EA7180 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* EA7184 802401B4 3C040002 */  lui       $a0, 2
/* EA7188 802401B8 0083102A */  slt       $v0, $a0, $v1
/* EA718C 802401BC 10400002 */  beqz      $v0, .L802401C8
/* EA7190 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* EA7194 802401C4 AE0200A8 */  sw        $v0, 0xa8($s0)
.L802401C8:
/* EA7198 802401C8 8E020074 */  lw        $v0, 0x74($s0)
/* EA719C 802401CC 1440000E */  bnez      $v0, .L80240208
/* EA71A0 802401D0 00000000 */   nop      
/* EA71A4 802401D4 8E0300AC */  lw        $v1, 0xac($s0)
/* EA71A8 802401D8 8E02008C */  lw        $v0, 0x8c($s0)
/* EA71AC 802401DC 00621821 */  addu      $v1, $v1, $v0
/* EA71B0 802401E0 04610004 */  bgez      $v1, .L802401F4
/* EA71B4 802401E4 AE0300AC */   sw       $v1, 0xac($s0)
/* EA71B8 802401E8 3C020002 */  lui       $v0, 2
/* EA71BC 802401EC 08090081 */  j         .L80240204
/* EA71C0 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* EA71C4 802401F4 3C040002 */  lui       $a0, 2
/* EA71C8 802401F8 0083102A */  slt       $v0, $a0, $v1
/* EA71CC 802401FC 10400002 */  beqz      $v0, .L80240208
/* EA71D0 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* EA71D4 80240204 AE0200AC */  sw        $v0, 0xac($s0)
.L80240208:
/* EA71D8 80240208 8E020078 */  lw        $v0, 0x78($s0)
/* EA71DC 8024020C 1440000E */  bnez      $v0, .L80240248
/* EA71E0 80240210 00000000 */   nop      
/* EA71E4 80240214 8E0300B0 */  lw        $v1, 0xb0($s0)
/* EA71E8 80240218 8E020090 */  lw        $v0, 0x90($s0)
/* EA71EC 8024021C 00621821 */  addu      $v1, $v1, $v0
/* EA71F0 80240220 04610004 */  bgez      $v1, .L80240234
/* EA71F4 80240224 AE0300B0 */   sw       $v1, 0xb0($s0)
/* EA71F8 80240228 3C020002 */  lui       $v0, 2
/* EA71FC 8024022C 08090091 */  j         .L80240244
/* EA7200 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* EA7204 80240234 3C040002 */  lui       $a0, 2
/* EA7208 80240238 0083102A */  slt       $v0, $a0, $v1
/* EA720C 8024023C 10400002 */  beqz      $v0, .L80240248
/* EA7210 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* EA7214 80240244 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240248:
/* EA7218 80240248 8E02007C */  lw        $v0, 0x7c($s0)
/* EA721C 8024024C 1440000E */  bnez      $v0, .L80240288
/* EA7220 80240250 00000000 */   nop      
/* EA7224 80240254 8E0300B4 */  lw        $v1, 0xb4($s0)
/* EA7228 80240258 8E020094 */  lw        $v0, 0x94($s0)
/* EA722C 8024025C 00621821 */  addu      $v1, $v1, $v0
/* EA7230 80240260 04610004 */  bgez      $v1, .L80240274
/* EA7234 80240264 AE0300B4 */   sw       $v1, 0xb4($s0)
/* EA7238 80240268 3C020002 */  lui       $v0, 2
/* EA723C 8024026C 080900A1 */  j         .L80240284
/* EA7240 80240270 00621021 */   addu     $v0, $v1, $v0
.L80240274:
/* EA7244 80240274 3C040002 */  lui       $a0, 2
/* EA7248 80240278 0083102A */  slt       $v0, $a0, $v1
/* EA724C 8024027C 10400002 */  beqz      $v0, .L80240288
/* EA7250 80240280 00641023 */   subu     $v0, $v1, $a0
.L80240284:
/* EA7254 80240284 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240288:
/* EA7258 80240288 8E040084 */  lw        $a0, 0x84($s0)
/* EA725C 8024028C 0C049819 */  jal       func_80126064
/* EA7260 80240290 8E0500A8 */   lw       $a1, 0xa8($s0)
/* EA7264 80240294 8E040084 */  lw        $a0, 0x84($s0)
/* EA7268 80240298 0C04981F */  jal       func_8012607C
/* EA726C 8024029C 8E0500AC */   lw       $a1, 0xac($s0)
/* EA7270 802402A0 8E040084 */  lw        $a0, 0x84($s0)
/* EA7274 802402A4 0C049825 */  jal       func_80126094
/* EA7278 802402A8 8E0500B0 */   lw       $a1, 0xb0($s0)
/* EA727C 802402AC 8E040084 */  lw        $a0, 0x84($s0)
/* EA7280 802402B0 0C04982B */  jal       func_801260AC
/* EA7284 802402B4 8E0500B4 */   lw       $a1, 0xb4($s0)
/* EA7288 802402B8 8E020070 */  lw        $v0, 0x70($s0)
/* EA728C 802402BC 8E030078 */  lw        $v1, 0x78($s0)
/* EA7290 802402C0 8E040098 */  lw        $a0, 0x98($s0)
/* EA7294 802402C4 24420001 */  addiu     $v0, $v0, 1
/* EA7298 802402C8 AE020070 */  sw        $v0, 0x70($s0)
/* EA729C 802402CC 8E020074 */  lw        $v0, 0x74($s0)
/* EA72A0 802402D0 24630001 */  addiu     $v1, $v1, 1
/* EA72A4 802402D4 AE030078 */  sw        $v1, 0x78($s0)
/* EA72A8 802402D8 8E030070 */  lw        $v1, 0x70($s0)
/* EA72AC 802402DC 24420001 */  addiu     $v0, $v0, 1
/* EA72B0 802402E0 AE020074 */  sw        $v0, 0x74($s0)
/* EA72B4 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* EA72B8 802402E8 0064182A */  slt       $v1, $v1, $a0
/* EA72BC 802402EC 24420001 */  addiu     $v0, $v0, 1
/* EA72C0 802402F0 14600002 */  bnez      $v1, .L802402FC
/* EA72C4 802402F4 AE02007C */   sw       $v0, 0x7c($s0)
/* EA72C8 802402F8 AE000070 */  sw        $zero, 0x70($s0)
.L802402FC:
/* EA72CC 802402FC 8E020074 */  lw        $v0, 0x74($s0)
/* EA72D0 80240300 8E03009C */  lw        $v1, 0x9c($s0)
/* EA72D4 80240304 0043102A */  slt       $v0, $v0, $v1
/* EA72D8 80240308 50400001 */  beql      $v0, $zero, .L80240310
/* EA72DC 8024030C AE000074 */   sw       $zero, 0x74($s0)
.L80240310:
/* EA72E0 80240310 8E020078 */  lw        $v0, 0x78($s0)
/* EA72E4 80240314 8E0300A0 */  lw        $v1, 0xa0($s0)
/* EA72E8 80240318 0043102A */  slt       $v0, $v0, $v1
/* EA72EC 8024031C 50400001 */  beql      $v0, $zero, .L80240324
/* EA72F0 80240320 AE000078 */   sw       $zero, 0x78($s0)
.L80240324:
/* EA72F4 80240324 8E02007C */  lw        $v0, 0x7c($s0)
/* EA72F8 80240328 8E0300A4 */  lw        $v1, 0xa4($s0)
/* EA72FC 8024032C 0043102A */  slt       $v0, $v0, $v1
/* EA7300 80240330 50400001 */  beql      $v0, $zero, .L80240338
/* EA7304 80240334 AE00007C */   sw       $zero, 0x7c($s0)
.L80240338:
/* EA7308 80240338 8FBF0014 */  lw        $ra, 0x14($sp)
/* EA730C 8024033C 8FB00010 */  lw        $s0, 0x10($sp)
/* EA7310 80240340 0000102D */  daddu     $v0, $zero, $zero
/* EA7314 80240344 03E00008 */  jr        $ra
/* EA7318 80240348 27BD0018 */   addiu    $sp, $sp, 0x18
/* EA731C 8024034C 00000000 */  nop       
