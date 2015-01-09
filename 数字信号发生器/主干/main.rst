                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
                              4 ; This file was generated Wed Sep 17 21:02:24 2008
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _update_str_PARM_2
                             13 	.globl _main
                             14 	.globl _CY
                             15 	.globl _AC
                             16 	.globl _F0
                             17 	.globl _RS1
                             18 	.globl _RS0
                             19 	.globl _OV
                             20 	.globl _F1
                             21 	.globl _P
                             22 	.globl _PS
                             23 	.globl _PT1
                             24 	.globl _PX1
                             25 	.globl _PT0
                             26 	.globl _PX0
                             27 	.globl _EA
                             28 	.globl _ES
                             29 	.globl _ET1
                             30 	.globl _EX1
                             31 	.globl _ET0
                             32 	.globl _EX0
                             33 	.globl _SM0
                             34 	.globl _SM1
                             35 	.globl _SM2
                             36 	.globl _REN
                             37 	.globl _TB8
                             38 	.globl _RB8
                             39 	.globl _TI
                             40 	.globl _RI
                             41 	.globl _TF1
                             42 	.globl _TR1
                             43 	.globl _TF0
                             44 	.globl _TR0
                             45 	.globl _IE1
                             46 	.globl _IT1
                             47 	.globl _IE0
                             48 	.globl _IT0
                             49 	.globl _RD
                             50 	.globl _WR
                             51 	.globl _T1
                             52 	.globl _T0
                             53 	.globl _INT1
                             54 	.globl _INT0
                             55 	.globl _TXD
                             56 	.globl _RXD
                             57 	.globl _P3_7
                             58 	.globl _P3_6
                             59 	.globl _P3_5
                             60 	.globl _P3_4
                             61 	.globl _P3_3
                             62 	.globl _P3_2
                             63 	.globl _P3_1
                             64 	.globl _P3_0
                             65 	.globl _P2_7
                             66 	.globl _P2_6
                             67 	.globl _P2_5
                             68 	.globl _P2_4
                             69 	.globl _P2_3
                             70 	.globl _P2_2
                             71 	.globl _P2_1
                             72 	.globl _P2_0
                             73 	.globl _P1_7
                             74 	.globl _P1_6
                             75 	.globl _P1_5
                             76 	.globl _P1_4
                             77 	.globl _P1_3
                             78 	.globl _P1_2
                             79 	.globl _P1_1
                             80 	.globl _P1_0
                             81 	.globl _P0_7
                             82 	.globl _P0_6
                             83 	.globl _P0_5
                             84 	.globl _P0_4
                             85 	.globl _P0_3
                             86 	.globl _P0_2
                             87 	.globl _P0_1
                             88 	.globl _P0_0
                             89 	.globl _B
                             90 	.globl _ACC
                             91 	.globl _PSW
                             92 	.globl _IP
                             93 	.globl _IE
                             94 	.globl _SBUF
                             95 	.globl _SCON
                             96 	.globl _TH1
                             97 	.globl _TH0
                             98 	.globl _TL1
                             99 	.globl _TL0
                            100 	.globl _TMOD
                            101 	.globl _TCON
                            102 	.globl _PCON
                            103 	.globl _DPH
                            104 	.globl _DPL
                            105 	.globl _SP
                            106 	.globl _P3
                            107 	.globl _P2
                            108 	.globl _P1
                            109 	.globl _P0
                            110 	.globl _sign
                            111 	.globl _keycache
                            112 	.globl _lcd_str
                            113 	.globl _state
                            114 	.globl _keypad_interrupt
                            115 	.globl _flush
                            116 	.globl _refresh
                            117 	.globl _menu_refresh
                            118 	.globl _update_str
                            119 	.globl _num_refresh
                            120 	.globl _interrupt_init
                            121 ;--------------------------------------------------------
                            122 ; special function registers
                            123 ;--------------------------------------------------------
                            124 	.area RSEG    (DATA)
                    0080    125 _P0	=	0x0080
                    0090    126 _P1	=	0x0090
                    00A0    127 _P2	=	0x00a0
                    00B0    128 _P3	=	0x00b0
                    0081    129 _SP	=	0x0081
                    0082    130 _DPL	=	0x0082
                    0083    131 _DPH	=	0x0083
                    0087    132 _PCON	=	0x0087
                    0088    133 _TCON	=	0x0088
                    0089    134 _TMOD	=	0x0089
                    008A    135 _TL0	=	0x008a
                    008B    136 _TL1	=	0x008b
                    008C    137 _TH0	=	0x008c
                    008D    138 _TH1	=	0x008d
                    0098    139 _SCON	=	0x0098
                    0099    140 _SBUF	=	0x0099
                    00A8    141 _IE	=	0x00a8
                    00B8    142 _IP	=	0x00b8
                    00D0    143 _PSW	=	0x00d0
                    00E0    144 _ACC	=	0x00e0
                    00F0    145 _B	=	0x00f0
                            146 ;--------------------------------------------------------
                            147 ; special function bits
                            148 ;--------------------------------------------------------
                            149 	.area RSEG    (DATA)
                    0080    150 _P0_0	=	0x0080
                    0081    151 _P0_1	=	0x0081
                    0082    152 _P0_2	=	0x0082
                    0083    153 _P0_3	=	0x0083
                    0084    154 _P0_4	=	0x0084
                    0085    155 _P0_5	=	0x0085
                    0086    156 _P0_6	=	0x0086
                    0087    157 _P0_7	=	0x0087
                    0090    158 _P1_0	=	0x0090
                    0091    159 _P1_1	=	0x0091
                    0092    160 _P1_2	=	0x0092
                    0093    161 _P1_3	=	0x0093
                    0094    162 _P1_4	=	0x0094
                    0095    163 _P1_5	=	0x0095
                    0096    164 _P1_6	=	0x0096
                    0097    165 _P1_7	=	0x0097
                    00A0    166 _P2_0	=	0x00a0
                    00A1    167 _P2_1	=	0x00a1
                    00A2    168 _P2_2	=	0x00a2
                    00A3    169 _P2_3	=	0x00a3
                    00A4    170 _P2_4	=	0x00a4
                    00A5    171 _P2_5	=	0x00a5
                    00A6    172 _P2_6	=	0x00a6
                    00A7    173 _P2_7	=	0x00a7
                    00B0    174 _P3_0	=	0x00b0
                    00B1    175 _P3_1	=	0x00b1
                    00B2    176 _P3_2	=	0x00b2
                    00B3    177 _P3_3	=	0x00b3
                    00B4    178 _P3_4	=	0x00b4
                    00B5    179 _P3_5	=	0x00b5
                    00B6    180 _P3_6	=	0x00b6
                    00B7    181 _P3_7	=	0x00b7
                    00B0    182 _RXD	=	0x00b0
                    00B1    183 _TXD	=	0x00b1
                    00B2    184 _INT0	=	0x00b2
                    00B3    185 _INT1	=	0x00b3
                    00B4    186 _T0	=	0x00b4
                    00B5    187 _T1	=	0x00b5
                    00B6    188 _WR	=	0x00b6
                    00B7    189 _RD	=	0x00b7
                    0088    190 _IT0	=	0x0088
                    0089    191 _IE0	=	0x0089
                    008A    192 _IT1	=	0x008a
                    008B    193 _IE1	=	0x008b
                    008C    194 _TR0	=	0x008c
                    008D    195 _TF0	=	0x008d
                    008E    196 _TR1	=	0x008e
                    008F    197 _TF1	=	0x008f
                    0098    198 _RI	=	0x0098
                    0099    199 _TI	=	0x0099
                    009A    200 _RB8	=	0x009a
                    009B    201 _TB8	=	0x009b
                    009C    202 _REN	=	0x009c
                    009D    203 _SM2	=	0x009d
                    009E    204 _SM1	=	0x009e
                    009F    205 _SM0	=	0x009f
                    00A8    206 _EX0	=	0x00a8
                    00A9    207 _ET0	=	0x00a9
                    00AA    208 _EX1	=	0x00aa
                    00AB    209 _ET1	=	0x00ab
                    00AC    210 _ES	=	0x00ac
                    00AF    211 _EA	=	0x00af
                    00B8    212 _PX0	=	0x00b8
                    00B9    213 _PT0	=	0x00b9
                    00BA    214 _PX1	=	0x00ba
                    00BB    215 _PT1	=	0x00bb
                    00BC    216 _PS	=	0x00bc
                    00D0    217 _P	=	0x00d0
                    00D1    218 _F1	=	0x00d1
                    00D2    219 _OV	=	0x00d2
                    00D3    220 _RS0	=	0x00d3
                    00D4    221 _RS1	=	0x00d4
                    00D5    222 _F0	=	0x00d5
                    00D6    223 _AC	=	0x00d6
                    00D7    224 _CY	=	0x00d7
                            225 ;--------------------------------------------------------
                            226 ; overlayable register banks
                            227 ;--------------------------------------------------------
                            228 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     229 	.ds 8
                            230 ;--------------------------------------------------------
                            231 ; overlayable bit register bank
                            232 ;--------------------------------------------------------
                            233 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     234 bits:
   0020                     235 	.ds 1
                    8000    236 	b0 = bits[0]
                    8100    237 	b1 = bits[1]
                    8200    238 	b2 = bits[2]
                    8300    239 	b3 = bits[3]
                    8400    240 	b4 = bits[4]
                    8500    241 	b5 = bits[5]
                    8600    242 	b6 = bits[6]
                    8700    243 	b7 = bits[7]
                            244 ;--------------------------------------------------------
                            245 ; internal ram data
                            246 ;--------------------------------------------------------
                            247 	.area DSEG    (DATA)
   0021                     248 _state::
   0021                     249 	.ds 1
   0022                     250 _lcd_str::
   0022                     251 	.ds 32
   0042                     252 _keycache::
   0042                     253 	.ds 4
   0046                     254 _sign::
   0046                     255 	.ds 6
   004C                     256 _keypad_interrupt_key_1_1:
   004C                     257 	.ds 2
   004E                     258 _keypad_interrupt_sloc0_1_0:
   004E                     259 	.ds 4
   0052                     260 _num_refresh_i_1_1:
   0052                     261 	.ds 1
   0053                     262 _num_refresh_tmp_1_1:
   0053                     263 	.ds 4
                            264 ;--------------------------------------------------------
                            265 ; overlayable items in internal ram 
                            266 ;--------------------------------------------------------
                            267 	.area	OSEG    (OVR,DATA)
   0057                     268 _update_str_PARM_2::
   0057                     269 	.ds 1
   0058                     270 _update_str_i_1_1::
   0058                     271 	.ds 2
                            272 ;--------------------------------------------------------
                            273 ; Stack segment in internal ram 
                            274 ;--------------------------------------------------------
                            275 	.area	SSEG	(DATA)
   0079                     276 __start__stack:
   0079                     277 	.ds	1
                            278 
                            279 ;--------------------------------------------------------
                            280 ; indirectly addressable internal ram data
                            281 ;--------------------------------------------------------
                            282 	.area ISEG    (DATA)
                            283 ;--------------------------------------------------------
                            284 ; absolute internal ram data
                            285 ;--------------------------------------------------------
                            286 	.area IABS    (ABS,DATA)
                            287 	.area IABS    (ABS,DATA)
                            288 ;--------------------------------------------------------
                            289 ; bit data
                            290 ;--------------------------------------------------------
                            291 	.area BSEG    (BIT)
                            292 ;--------------------------------------------------------
                            293 ; paged external ram data
                            294 ;--------------------------------------------------------
                            295 	.area PSEG    (PAG,XDATA)
                            296 ;--------------------------------------------------------
                            297 ; external ram data
                            298 ;--------------------------------------------------------
                            299 	.area XSEG    (XDATA)
                            300 ;--------------------------------------------------------
                            301 ; absolute external ram data
                            302 ;--------------------------------------------------------
                            303 	.area XABS    (ABS,XDATA)
                            304 ;--------------------------------------------------------
                            305 ; external initialized ram data
                            306 ;--------------------------------------------------------
                            307 	.area XISEG   (XDATA)
                            308 	.area HOME    (CODE)
                            309 	.area GSINIT0 (CODE)
                            310 	.area GSINIT1 (CODE)
                            311 	.area GSINIT2 (CODE)
                            312 	.area GSINIT3 (CODE)
                            313 	.area GSINIT4 (CODE)
                            314 	.area GSINIT5 (CODE)
                            315 	.area GSINIT  (CODE)
                            316 	.area GSFINAL (CODE)
                            317 	.area CSEG    (CODE)
                            318 ;--------------------------------------------------------
                            319 ; interrupt vector 
                            320 ;--------------------------------------------------------
                            321 	.area HOME    (CODE)
   0000                     322 __interrupt_vect:
   0000 02 00 0B            323 	ljmp	__sdcc_gsinit_startup
   0003 02 00 E5            324 	ljmp	_keypad_interrupt
                            325 ;--------------------------------------------------------
                            326 ; global & static initialisations
                            327 ;--------------------------------------------------------
                            328 	.area HOME    (CODE)
                            329 	.area GSINIT  (CODE)
                            330 	.area GSFINAL (CODE)
                            331 	.area GSINIT  (CODE)
                            332 	.globl __sdcc_gsinit_startup
                            333 	.globl __sdcc_program_startup
                            334 	.globl __start__stack
                            335 	.globl __mcs51_genXINIT
                            336 	.globl __mcs51_genXRAMCLEAR
                            337 	.globl __mcs51_genRAMCLEAR
                            338 ;	main.c:17: char state=0;	//状态变量,0为待机,W波形,F频率,A幅度
   0064 75 21 00            339 	mov	_state,#0x00
                            340 ;	main.c:18: char lcd_str[2][16]={"Welcome to use !",">>Made in SWUN<<"};	//保存LCD显示数据
   0067 75 22 57            341 	mov	_lcd_str,#0x57
   006A 75 23 65            342 	mov	(_lcd_str + 0x0001),#0x65
   006D 75 24 6C            343 	mov	(_lcd_str + 0x0002),#0x6C
   0070 75 25 63            344 	mov	(_lcd_str + 0x0003),#0x63
   0073 75 26 6F            345 	mov	(_lcd_str + 0x0004),#0x6F
   0076 75 27 6D            346 	mov	(_lcd_str + 0x0005),#0x6D
   0079 75 28 65            347 	mov	(_lcd_str + 0x0006),#0x65
   007C 75 29 20            348 	mov	(_lcd_str + 0x0007),#0x20
   007F 75 2A 74            349 	mov	(_lcd_str + 0x0008),#0x74
   0082 75 2B 6F            350 	mov	(_lcd_str + 0x0009),#0x6F
   0085 75 2C 20            351 	mov	(_lcd_str + 0x000a),#0x20
   0088 75 2D 75            352 	mov	(_lcd_str + 0x000b),#0x75
   008B 75 2E 73            353 	mov	(_lcd_str + 0x000c),#0x73
   008E 75 2F 65            354 	mov	(_lcd_str + 0x000d),#0x65
   0091 75 30 20            355 	mov	(_lcd_str + 0x000e),#0x20
   0094 75 31 21            356 	mov	(_lcd_str + 0x000f),#0x21
   0097 75 32 3E            357 	mov	(_lcd_str + 0x0010),#0x3E
   009A 75 33 3E            358 	mov	(_lcd_str + 0x0011),#0x3E
   009D 75 34 4D            359 	mov	(_lcd_str + 0x0012),#0x4D
   00A0 75 35 61            360 	mov	(_lcd_str + 0x0013),#0x61
   00A3 75 36 64            361 	mov	(_lcd_str + 0x0014),#0x64
   00A6 75 37 65            362 	mov	(_lcd_str + 0x0015),#0x65
   00A9 75 38 20            363 	mov	(_lcd_str + 0x0016),#0x20
   00AC 75 39 69            364 	mov	(_lcd_str + 0x0017),#0x69
   00AF 75 3A 6E            365 	mov	(_lcd_str + 0x0018),#0x6E
   00B2 75 3B 20            366 	mov	(_lcd_str + 0x0019),#0x20
   00B5 75 3C 53            367 	mov	(_lcd_str + 0x001a),#0x53
   00B8 75 3D 57            368 	mov	(_lcd_str + 0x001b),#0x57
   00BB 75 3E 55            369 	mov	(_lcd_str + 0x001c),#0x55
   00BE 75 3F 4E            370 	mov	(_lcd_str + 0x001d),#0x4E
   00C1 75 40 3C            371 	mov	(_lcd_str + 0x001e),#0x3C
   00C4 75 41 3C            372 	mov	(_lcd_str + 0x001f),#0x3C
                            373 ;	main.c:19: long int keycache=0;		//键盘输入缓存
   00C7 E4                  374 	clr	a
   00C8 F5 42               375 	mov	_keycache,a
   00CA F5 43               376 	mov	(_keycache + 1),a
   00CC F5 44               377 	mov	(_keycache + 2),a
   00CE F5 45               378 	mov	(_keycache + 3),a
                            379 ;	main.c:24: }sign={1,1000,5};
   00D0 75 46 01            380 	mov	_sign,#0x01
   00D3 75 47 E8            381 	mov	(_sign + 0x0001),#0xE8
   00D6 75 48 03            382 	mov	((_sign + 0x0001) + 1),#0x03
   00D9 75 49 00            383 	mov	((_sign + 0x0001) + 2),#0x00
   00DC 75 4A 00            384 	mov	((_sign + 0x0001) + 3),#0x00
   00DF 75 4B 05            385 	mov	(_sign + 0x0005),#0x05
                            386 	.area GSFINAL (CODE)
   00E2 02 00 06            387 	ljmp	__sdcc_program_startup
                            388 ;--------------------------------------------------------
                            389 ; Home
                            390 ;--------------------------------------------------------
                            391 	.area HOME    (CODE)
                            392 	.area HOME    (CODE)
   0006                     393 __sdcc_program_startup:
   0006 12 03 F6            394 	lcall	_main
                            395 ;	return from main will lock up
   0009 80 FE               396 	sjmp .
                            397 ;--------------------------------------------------------
                            398 ; code
                            399 ;--------------------------------------------------------
                            400 	.area CSEG    (CODE)
                            401 ;------------------------------------------------------------
                            402 ;Allocation info for local variables in function 'keypad_interrupt'
                            403 ;------------------------------------------------------------
                            404 ;key                       Allocated with name '_keypad_interrupt_key_1_1'
                            405 ;sloc0                     Allocated with name '_keypad_interrupt_sloc0_1_0'
                            406 ;------------------------------------------------------------
                            407 ;	main.c:39: void keypad_interrupt(void) interrupt 0
                            408 ;	-----------------------------------------
                            409 ;	 function keypad_interrupt
                            410 ;	-----------------------------------------
   00E5                     411 _keypad_interrupt:
                    0002    412 	ar2 = 0x02
                    0003    413 	ar3 = 0x03
                    0004    414 	ar4 = 0x04
                    0005    415 	ar5 = 0x05
                    0006    416 	ar6 = 0x06
                    0007    417 	ar7 = 0x07
                    0000    418 	ar0 = 0x00
                    0001    419 	ar1 = 0x01
   00E5 C0 20               420 	push	bits
   00E7 C0 E0               421 	push	acc
   00E9 C0 F0               422 	push	b
   00EB C0 82               423 	push	dpl
   00ED C0 83               424 	push	dph
   00EF C0 02               425 	push	(0+2)
   00F1 C0 03               426 	push	(0+3)
   00F3 C0 04               427 	push	(0+4)
   00F5 C0 05               428 	push	(0+5)
   00F7 C0 06               429 	push	(0+6)
   00F9 C0 07               430 	push	(0+7)
   00FB C0 00               431 	push	(0+0)
   00FD C0 01               432 	push	(0+1)
   00FF C0 D0               433 	push	psw
   0101 75 D0 00            434 	mov	psw,#0x00
                            435 ;	main.c:49: key=key_make(key_scan());
   0104 12 04 C5            436 	lcall	_key_scan
   0107 12 04 3D            437 	lcall	_key_make
   010A E5 82               438 	mov	a,dpl
   010C FA                  439 	mov	r2,a
   010D F5 4C               440 	mov	_keypad_interrupt_key_1_1,a
   010F 33                  441 	rlc	a
   0110 95 E0               442 	subb	a,acc
   0112 F5 4D               443 	mov	(_keypad_interrupt_key_1_1 + 1),a
                            444 ;	main.c:51: if(key>10){	//功能区
   0114 C3                  445 	clr	c
   0115 74 0A               446 	mov	a,#0x0A
   0117 95 4C               447 	subb	a,_keypad_interrupt_key_1_1
   0119 74 80               448 	mov	a,#(0x00 ^ 0x80)
   011B 85 4D F0            449 	mov	b,(_keypad_interrupt_key_1_1 + 1)
   011E 63 F0 80            450 	xrl	b,#0x80
   0121 95 F0               451 	subb	a,b
   0123 50 33               452 	jnc	00111$
                            453 ;	main.c:52: if(key!=state){	//按键非当前状态才处理
   0125 E5 21               454 	mov	a,_state
   0127 FC                  455 	mov	r4,a
   0128 33                  456 	rlc	a
   0129 95 E0               457 	subb	a,acc
   012B FD                  458 	mov	r5,a
   012C EC                  459 	mov	a,r4
   012D B5 4C 06            460 	cjne	a,_keypad_interrupt_key_1_1,00124$
   0130 ED                  461 	mov	a,r5
   0131 B5 4D 02            462 	cjne	a,(_keypad_interrupt_key_1_1 + 1),00124$
   0134 80 1C               463 	sjmp	00104$
   0136                     464 00124$:
                            465 ;	main.c:53: state=key;
   0136 85 4C 21            466 	mov	_state,_keypad_interrupt_key_1_1
                            467 ;	main.c:54: if(key=='c')	flush();	//提交功能键按下
   0139 74 63               468 	mov	a,#0x63
   013B B5 4C 06            469 	cjne	a,_keypad_interrupt_key_1_1,00125$
   013E E4                  470 	clr	a
   013F B5 4D 02            471 	cjne	a,(_keypad_interrupt_key_1_1 + 1),00125$
   0142 80 02               472 	sjmp	00126$
   0144                     473 00125$:
   0144 80 03               474 	sjmp	00102$
   0146                     475 00126$:
   0146 12 02 02            476 	lcall	_flush
   0149                     477 00102$:
                            478 ;	main.c:55: keycache=0;	//清空输入缓存
   0149 E4                  479 	clr	a
   014A F5 42               480 	mov	_keycache,a
   014C F5 43               481 	mov	(_keycache + 1),a
   014E F5 44               482 	mov	(_keycache + 2),a
   0150 F5 45               483 	mov	(_keycache + 3),a
   0152                     484 00104$:
                            485 ;	main.c:57: menu_refresh();
   0152 12 02 50            486 	lcall	_menu_refresh
   0155 02 01 DC            487 	ljmp	00112$
   0158                     488 00111$:
                            489 ;	main.c:60: if(state)
   0158 E5 21               490 	mov	a,_state
   015A 70 03               491 	jnz	00127$
   015C 02 01 DC            492 	ljmp	00112$
   015F                     493 00127$:
                            494 ;	main.c:62: if(state=='w')	//波形选择只收集一次按键
   015F 74 77               495 	mov	a,#0x77
   0161 B5 21 10            496 	cjne	a,_state,00106$
                            497 ;	main.c:63: keycache=key;
   0164 85 4C 42            498 	mov	_keycache,_keypad_interrupt_key_1_1
   0167 E5 4D               499 	mov	a,(_keypad_interrupt_key_1_1 + 1)
   0169 F5 43               500 	mov	(_keycache + 1),a
   016B 33                  501 	rlc	a
   016C 95 E0               502 	subb	a,acc
   016E F5 44               503 	mov	(_keycache + 2),a
   0170 F5 45               504 	mov	(_keycache + 3),a
   0172 80 65               505 	sjmp	00107$
   0174                     506 00106$:
                            507 ;	main.c:65: keycache=keycache>999999999?0:(key+keycache*10);
   0174 C3                  508 	clr	c
   0175 74 FF               509 	mov	a,#0xFF
   0177 95 42               510 	subb	a,_keycache
   0179 74 C9               511 	mov	a,#0xC9
   017B 95 43               512 	subb	a,(_keycache + 1)
   017D 74 9A               513 	mov	a,#0x9A
   017F 95 44               514 	subb	a,(_keycache + 2)
   0181 74 BB               515 	mov	a,#(0x3B ^ 0x80)
   0183 85 45 F0            516 	mov	b,(_keycache + 3)
   0186 63 F0 80            517 	xrl	b,#0x80
   0189 95 F0               518 	subb	a,b
   018B 50 0A               519 	jnc	00115$
   018D 7C 00               520 	mov	r4,#0x00
   018F 7D 00               521 	mov	r5,#0x00
   0191 7E 00               522 	mov	r6,#0x00
   0193 7F 00               523 	mov	r7,#0x00
   0195 80 3A               524 	sjmp	00116$
   0197                     525 00115$:
   0197 85 42 57            526 	mov	__mullong_PARM_2,_keycache
   019A 85 43 58            527 	mov	(__mullong_PARM_2 + 1),(_keycache + 1)
   019D 85 44 59            528 	mov	(__mullong_PARM_2 + 2),(_keycache + 2)
   01A0 85 45 5A            529 	mov	(__mullong_PARM_2 + 3),(_keycache + 3)
   01A3 90 00 0A            530 	mov	dptr,#(0x0A&0x00ff)
   01A6 E4                  531 	clr	a
   01A7 F5 F0               532 	mov	b,a
   01A9 12 07 95            533 	lcall	__mullong
   01AC 85 82 4E            534 	mov	_keypad_interrupt_sloc0_1_0,dpl
   01AF 85 83 4F            535 	mov	(_keypad_interrupt_sloc0_1_0 + 1),dph
   01B2 85 F0 50            536 	mov	(_keypad_interrupt_sloc0_1_0 + 2),b
   01B5 F5 51               537 	mov	(_keypad_interrupt_sloc0_1_0 + 3),a
   01B7 AA 4C               538 	mov	r2,_keypad_interrupt_key_1_1
   01B9 E5 4D               539 	mov	a,(_keypad_interrupt_key_1_1 + 1)
   01BB FB                  540 	mov	r3,a
   01BC 33                  541 	rlc	a
   01BD 95 E0               542 	subb	a,acc
   01BF F8                  543 	mov	r0,a
   01C0 F9                  544 	mov	r1,a
   01C1 E5 4E               545 	mov	a,_keypad_interrupt_sloc0_1_0
   01C3 2A                  546 	add	a,r2
   01C4 FC                  547 	mov	r4,a
   01C5 E5 4F               548 	mov	a,(_keypad_interrupt_sloc0_1_0 + 1)
   01C7 3B                  549 	addc	a,r3
   01C8 FD                  550 	mov	r5,a
   01C9 E5 50               551 	mov	a,(_keypad_interrupt_sloc0_1_0 + 2)
   01CB 38                  552 	addc	a,r0
   01CC FE                  553 	mov	r6,a
   01CD E5 51               554 	mov	a,(_keypad_interrupt_sloc0_1_0 + 3)
   01CF 39                  555 	addc	a,r1
   01D0 FF                  556 	mov	r7,a
   01D1                     557 00116$:
   01D1 8C 42               558 	mov	_keycache,r4
   01D3 8D 43               559 	mov	(_keycache + 1),r5
   01D5 8E 44               560 	mov	(_keycache + 2),r6
   01D7 8F 45               561 	mov	(_keycache + 3),r7
   01D9                     562 00107$:
                            563 ;	main.c:66: num_refresh();
   01D9 12 03 01            564 	lcall	_num_refresh
   01DC                     565 00112$:
                            566 ;	main.c:70: refresh();
   01DC 12 02 2C            567 	lcall	_refresh
                            568 ;	main.c:71: delay(1);	//歇会儿，你娃要一直按，我就不甩你
   01DF 75 82 01            569 	mov	dpl,#0x01
   01E2 12 04 02            570 	lcall	_delay
   01E5 D0 D0               571 	pop	psw
   01E7 D0 01               572 	pop	(0+1)
   01E9 D0 00               573 	pop	(0+0)
   01EB D0 07               574 	pop	(0+7)
   01ED D0 06               575 	pop	(0+6)
   01EF D0 05               576 	pop	(0+5)
   01F1 D0 04               577 	pop	(0+4)
   01F3 D0 03               578 	pop	(0+3)
   01F5 D0 02               579 	pop	(0+2)
   01F7 D0 83               580 	pop	dph
   01F9 D0 82               581 	pop	dpl
   01FB D0 F0               582 	pop	b
   01FD D0 E0               583 	pop	acc
   01FF D0 20               584 	pop	bits
   0201 32                  585 	reti
                            586 ;------------------------------------------------------------
                            587 ;Allocation info for local variables in function 'flush'
                            588 ;------------------------------------------------------------
                            589 ;------------------------------------------------------------
                            590 ;	main.c:75: void flush(void)
                            591 ;	-----------------------------------------
                            592 ;	 function flush
                            593 ;	-----------------------------------------
   0202                     594 _flush:
                            595 ;	main.c:77: switch(state){
   0202 74 61               596 	mov	a,#0x61
   0204 B5 21 02            597 	cjne	a,_state,00110$
   0207 80 1E               598 	sjmp	00103$
   0209                     599 00110$:
   0209 74 66               600 	mov	a,#0x66
   020B B5 21 02            601 	cjne	a,_state,00111$
   020E 80 0A               602 	sjmp	00102$
   0210                     603 00111$:
   0210 74 77               604 	mov	a,#0x77
   0212 B5 21 16            605 	cjne	a,_state,00105$
                            606 ;	main.c:79: sign.w=keycache;
   0215 AA 42               607 	mov	r2,_keycache
   0217 8A 46               608 	mov	_sign,r2
                            609 ;	main.c:80: break;
                            610 ;	main.c:81: case 'f':
   0219 22                  611 	ret
   021A                     612 00102$:
                            613 ;	main.c:82: sign.f=keycache;
   021A 85 42 47            614 	mov	(_sign + 0x0001),_keycache
   021D 85 43 48            615 	mov	((_sign + 0x0001) + 1),(_keycache + 1)
   0220 85 44 49            616 	mov	((_sign + 0x0001) + 2),(_keycache + 2)
   0223 85 45 4A            617 	mov	((_sign + 0x0001) + 3),(_keycache + 3)
                            618 ;	main.c:83: break;
                            619 ;	main.c:84: case 'a':
   0226 22                  620 	ret
   0227                     621 00103$:
                            622 ;	main.c:85: sign.a=keycache;
   0227 AA 42               623 	mov	r2,_keycache
   0229 8A 4B               624 	mov	(_sign + 0x0005),r2
                            625 ;	main.c:87: }
   022B                     626 00105$:
   022B 22                  627 	ret
                            628 ;------------------------------------------------------------
                            629 ;Allocation info for local variables in function 'refresh'
                            630 ;------------------------------------------------------------
                            631 ;------------------------------------------------------------
                            632 ;	main.c:93: void refresh(void)
                            633 ;	-----------------------------------------
                            634 ;	 function refresh
                            635 ;	-----------------------------------------
   022C                     636 _refresh:
                            637 ;	main.c:99: lcd_position(0,0);
   022C 75 0A 00            638 	mov	_lcd_position_PARM_2,#0x00
   022F 75 82 00            639 	mov	dpl,#0x00
   0232 12 05 59            640 	lcall	_lcd_position
                            641 ;	main.c:100: lcd_print(lcd_str[0]);
   0235 90 00 22            642 	mov	dptr,#_lcd_str
   0238 75 F0 40            643 	mov	b,#0x40
   023B 12 05 77            644 	lcall	_lcd_print
                            645 ;	main.c:101: lcd_position(0,1);
   023E 75 0A 01            646 	mov	_lcd_position_PARM_2,#0x01
   0241 75 82 00            647 	mov	dpl,#0x00
   0244 12 05 59            648 	lcall	_lcd_position
                            649 ;	main.c:102: lcd_print(lcd_str[1]);
   0247 90 00 32            650 	mov	dptr,#(_lcd_str + 0x0010)
   024A 75 F0 40            651 	mov	b,#0x40
   024D 02 05 77            652 	ljmp	_lcd_print
                            653 ;------------------------------------------------------------
                            654 ;Allocation info for local variables in function 'menu_refresh'
                            655 ;------------------------------------------------------------
                            656 ;------------------------------------------------------------
                            657 ;	main.c:106: void menu_refresh(void)
                            658 ;	-----------------------------------------
                            659 ;	 function menu_refresh
                            660 ;	-----------------------------------------
   0250                     661 _menu_refresh:
                            662 ;	main.c:113: switch(state)
   0250 74 61               663 	mov	a,#0x61
   0252 B5 21 02            664 	cjne	a,_state,00111$
   0255 80 56               665 	sjmp	00104$
   0257                     666 00111$:
   0257 74 66               667 	mov	a,#0x66
   0259 B5 21 02            668 	cjne	a,_state,00112$
   025C 80 37               669 	sjmp	00103$
   025E                     670 00112$:
   025E 74 77               671 	mov	a,#0x77
   0260 B5 21 02            672 	cjne	a,_state,00113$
   0263 80 18               673 	sjmp	00102$
   0265                     674 00113$:
                            675 ;	main.c:116: update_str("Welcome to use !",0);
   0265 75 57 00            676 	mov	_update_str_PARM_2,#0x00
   0268 90 08 C4            677 	mov	dptr,#__str_0
   026B 75 F0 80            678 	mov	b,#0x80
   026E 12 02 C5            679 	lcall	_update_str
                            680 ;	main.c:117: update_str(">>Made in SWUN<<",1);
   0271 75 57 01            681 	mov	_update_str_PARM_2,#0x01
   0274 90 08 D5            682 	mov	dptr,#__str_1
   0277 75 F0 80            683 	mov	b,#0x80
                            684 ;	main.c:118: break;
                            685 ;	main.c:119: case 'w'://波形
   027A 02 02 C5            686 	ljmp	_update_str
   027D                     687 00102$:
                            688 ;	main.c:120: update_str("=Wave Type  Set=",0);
   027D 75 57 00            689 	mov	_update_str_PARM_2,#0x00
   0280 90 08 E6            690 	mov	dptr,#__str_2
   0283 75 F0 80            691 	mov	b,#0x80
   0286 12 02 C5            692 	lcall	_update_str
                            693 ;	main.c:121: update_str("1.sin 2.fan 3.tr",1);
   0289 75 57 01            694 	mov	_update_str_PARM_2,#0x01
   028C 90 08 F7            695 	mov	dptr,#__str_3
   028F 75 F0 80            696 	mov	b,#0x80
                            697 ;	main.c:122: break;
                            698 ;	main.c:123: case 'f'://频率
   0292 02 02 C5            699 	ljmp	_update_str
   0295                     700 00103$:
                            701 ;	main.c:124: update_str("=Frequence  Set=",0);
   0295 75 57 00            702 	mov	_update_str_PARM_2,#0x00
   0298 90 09 08            703 	mov	dptr,#__str_4
   029B 75 F0 80            704 	mov	b,#0x80
   029E 12 02 C5            705 	lcall	_update_str
                            706 ;	main.c:125: update_str("           0 KHz",1);
   02A1 75 57 01            707 	mov	_update_str_PARM_2,#0x01
   02A4 90 09 19            708 	mov	dptr,#__str_5
   02A7 75 F0 80            709 	mov	b,#0x80
                            710 ;	main.c:126: break;
                            711 ;	main.c:127: case 'a'://振幅
   02AA 02 02 C5            712 	ljmp	_update_str
   02AD                     713 00104$:
                            714 ;	main.c:128: update_str("=Amplitude  Set=",0);
   02AD 75 57 00            715 	mov	_update_str_PARM_2,#0x00
   02B0 90 09 2A            716 	mov	dptr,#__str_6
   02B3 75 F0 80            717 	mov	b,#0x80
   02B6 12 02 C5            718 	lcall	_update_str
                            719 ;	main.c:129: update_str("           0 Vol",1);
   02B9 75 57 01            720 	mov	_update_str_PARM_2,#0x01
   02BC 90 09 3B            721 	mov	dptr,#__str_7
   02BF 75 F0 80            722 	mov	b,#0x80
                            723 ;	main.c:131: }
   02C2 02 02 C5            724 	ljmp	_update_str
                            725 ;------------------------------------------------------------
                            726 ;Allocation info for local variables in function 'update_str'
                            727 ;------------------------------------------------------------
                            728 ;line                      Allocated with name '_update_str_PARM_2'
                            729 ;p                         Allocated to registers r2 r3 r4 
                            730 ;i                         Allocated with name '_update_str_i_1_1'
                            731 ;------------------------------------------------------------
                            732 ;	main.c:139: void update_str(char * p,char line)
                            733 ;	-----------------------------------------
                            734 ;	 function update_str
                            735 ;	-----------------------------------------
   02C5                     736 _update_str:
   02C5 AA 82               737 	mov	r2,dpl
   02C7 AB 83               738 	mov	r3,dph
   02C9 AC F0               739 	mov	r4,b
                            740 ;	main.c:142: while(1)
   02CB E5 57               741 	mov	a,_update_str_PARM_2
   02CD C4                  742 	swap	a
   02CE 54 F0               743 	anl	a,#0xf0
   02D0 24 22               744 	add	a,#_lcd_str
   02D2 FD                  745 	mov	r5,a
   02D3 E4                  746 	clr	a
   02D4 F5 58               747 	mov	_update_str_i_1_1,a
   02D6 F5 59               748 	mov	(_update_str_i_1_1 + 1),a
   02D8                     749 00104$:
                            750 ;	main.c:144: lcd_str[line][i]=*p;
   02D8 E5 58               751 	mov	a,_update_str_i_1_1
   02DA 2D                  752 	add	a,r5
   02DB F8                  753 	mov	r0,a
   02DC 8A 82               754 	mov	dpl,r2
   02DE 8B 83               755 	mov	dph,r3
   02E0 8C F0               756 	mov	b,r4
   02E2 12 08 A4            757 	lcall	__gptrget
   02E5 FE                  758 	mov	r6,a
   02E6 A3                  759 	inc	dptr
   02E7 AA 82               760 	mov	r2,dpl
   02E9 AB 83               761 	mov	r3,dph
   02EB A6 06               762 	mov	@r0,ar6
                            763 ;	main.c:145: p++;i++;
   02ED 05 58               764 	inc	_update_str_i_1_1
   02EF E4                  765 	clr	a
   02F0 B5 58 02            766 	cjne	a,_update_str_i_1_1,00110$
   02F3 05 59               767 	inc	(_update_str_i_1_1 + 1)
   02F5                     768 00110$:
                            769 ;	main.c:146: if(*p=='\0')	break;
   02F5 8A 82               770 	mov	dpl,r2
   02F7 8B 83               771 	mov	dph,r3
   02F9 8C F0               772 	mov	b,r4
   02FB 12 08 A4            773 	lcall	__gptrget
   02FE 70 D8               774 	jnz	00104$
   0300 22                  775 	ret
                            776 ;------------------------------------------------------------
                            777 ;Allocation info for local variables in function 'num_refresh'
                            778 ;------------------------------------------------------------
                            779 ;i                         Allocated with name '_num_refresh_i_1_1'
                            780 ;tmp                       Allocated with name '_num_refresh_tmp_1_1'
                            781 ;------------------------------------------------------------
                            782 ;	main.c:151: void num_refresh(void)
                            783 ;	-----------------------------------------
                            784 ;	 function num_refresh
                            785 ;	-----------------------------------------
   0301                     786 _num_refresh:
                            787 ;	main.c:158: long int tmp=keycache;
   0301 85 42 53            788 	mov	_num_refresh_tmp_1_1,_keycache
   0304 85 43 54            789 	mov	(_num_refresh_tmp_1_1 + 1),(_keycache + 1)
   0307 85 44 55            790 	mov	(_num_refresh_tmp_1_1 + 2),(_keycache + 2)
   030A 85 45 56            791 	mov	(_num_refresh_tmp_1_1 + 3),(_keycache + 3)
                            792 ;	main.c:160: if(state=='w')
   030D 74 77               793 	mov	a,#0x77
   030F B5 21 02            794 	cjne	a,_state,00128$
   0312 80 03               795 	sjmp	00129$
   0314                     796 00128$:
   0314 02 03 75            797 	ljmp	00123$
   0317                     798 00129$:
                            799 ;	main.c:162: switch(keycache)
   0317 74 01               800 	mov	a,#0x01
   0319 B5 42 0E            801 	cjne	a,_keycache,00130$
   031C E4                  802 	clr	a
   031D B5 43 0A            803 	cjne	a,(_keycache + 1),00130$
   0320 E4                  804 	clr	a
   0321 B5 44 06            805 	cjne	a,(_keycache + 2),00130$
   0324 E4                  806 	clr	a
   0325 B5 45 02            807 	cjne	a,(_keycache + 3),00130$
   0328 80 27               808 	sjmp	00101$
   032A                     809 00130$:
   032A 74 02               810 	mov	a,#0x02
   032C B5 42 0E            811 	cjne	a,_keycache,00131$
   032F E4                  812 	clr	a
   0330 B5 43 0A            813 	cjne	a,(_keycache + 1),00131$
   0333 E4                  814 	clr	a
   0334 B5 44 06            815 	cjne	a,(_keycache + 2),00131$
   0337 E4                  816 	clr	a
   0338 B5 45 02            817 	cjne	a,(_keycache + 3),00131$
   033B 80 20               818 	sjmp	00102$
   033D                     819 00131$:
   033D 74 03               820 	mov	a,#0x03
   033F B5 42 0E            821 	cjne	a,_keycache,00132$
   0342 E4                  822 	clr	a
   0343 B5 43 0A            823 	cjne	a,(_keycache + 1),00132$
   0346 E4                  824 	clr	a
   0347 B5 44 06            825 	cjne	a,(_keycache + 2),00132$
   034A E4                  826 	clr	a
   034B B5 45 02            827 	cjne	a,(_keycache + 3),00132$
   034E 80 19               828 	sjmp	00103$
   0350                     829 00132$:
   0350 22                  830 	ret
                            831 ;	main.c:164: case 1:
   0351                     832 00101$:
                            833 ;	main.c:165: update_str("1.Sin           ",1);break;
   0351 75 57 01            834 	mov	_update_str_PARM_2,#0x01
   0354 90 09 4C            835 	mov	dptr,#__str_8
   0357 75 F0 80            836 	mov	b,#0x80
   035A 02 02 C5            837 	ljmp	_update_str
                            838 ;	main.c:166: case 2:
   035D                     839 00102$:
                            840 ;	main.c:167: update_str("2.Freq          ",1);break;
   035D 75 57 01            841 	mov	_update_str_PARM_2,#0x01
   0360 90 09 5D            842 	mov	dptr,#__str_9
   0363 75 F0 80            843 	mov	b,#0x80
   0366 02 02 C5            844 	ljmp	_update_str
                            845 ;	main.c:168: case 3:
   0369                     846 00103$:
                            847 ;	main.c:169: update_str("3.Tri           ",1);break;
   0369 75 57 01            848 	mov	_update_str_PARM_2,#0x01
   036C 90 09 6E            849 	mov	dptr,#__str_10
   036F 75 F0 80            850 	mov	b,#0x80
                            851 ;	main.c:176: for(i=0;i<11;i++)	lcd_str[1][i]=' ';
   0372 02 02 C5            852 	ljmp	_update_str
   0375                     853 00123$:
   0375 7E 00               854 	mov	r6,#0x00
   0377                     855 00112$:
   0377 C3                  856 	clr	c
   0378 EE                  857 	mov	a,r6
   0379 64 80               858 	xrl	a,#0x80
   037B 94 8B               859 	subb	a,#0x8b
   037D 50 09               860 	jnc	00125$
   037F EE                  861 	mov	a,r6
   0380 24 32               862 	add	a,#(_lcd_str + 0x0010)
   0382 F8                  863 	mov	r0,a
   0383 76 20               864 	mov	@r0,#0x20
   0385 0E                  865 	inc	r6
                            866 ;	main.c:177: while(tmp)
   0386 80 EF               867 	sjmp	00112$
   0388                     868 00125$:
   0388 8E 52               869 	mov	_num_refresh_i_1_1,r6
   038A                     870 00106$:
   038A E5 53               871 	mov	a,_num_refresh_tmp_1_1
   038C 45 54               872 	orl	a,(_num_refresh_tmp_1_1 + 1)
   038E 45 55               873 	orl	a,(_num_refresh_tmp_1_1 + 2)
   0390 45 56               874 	orl	a,(_num_refresh_tmp_1_1 + 3)
   0392 60 4E               875 	jz	00116$
                            876 ;	main.c:179: lcd_str[1][i]=tmp%10+48;
   0394 E5 52               877 	mov	a,_num_refresh_i_1_1
   0396 24 32               878 	add	a,#(_lcd_str + 0x0010)
   0398 F8                  879 	mov	r0,a
   0399 75 57 0A            880 	mov	__modslong_PARM_2,#0x0A
   039C E4                  881 	clr	a
   039D F5 58               882 	mov	(__modslong_PARM_2 + 1),a
   039F F5 59               883 	mov	(__modslong_PARM_2 + 2),a
   03A1 F5 5A               884 	mov	(__modslong_PARM_2 + 3),a
   03A3 85 53 82            885 	mov	dpl,_num_refresh_tmp_1_1
   03A6 85 54 83            886 	mov	dph,(_num_refresh_tmp_1_1 + 1)
   03A9 85 55 F0            887 	mov	b,(_num_refresh_tmp_1_1 + 2)
   03AC E5 56               888 	mov	a,(_num_refresh_tmp_1_1 + 3)
   03AE C0 00               889 	push	ar0
   03B0 12 08 03            890 	lcall	__modslong
   03B3 AF 82               891 	mov	r7,dpl
   03B5 D0 00               892 	pop	ar0
   03B7 74 30               893 	mov	a,#0x30
   03B9 2F                  894 	add	a,r7
   03BA F6                  895 	mov	@r0,a
                            896 ;	main.c:180: tmp/=10;
   03BB 75 57 0A            897 	mov	__divslong_PARM_2,#0x0A
   03BE E4                  898 	clr	a
   03BF F5 58               899 	mov	(__divslong_PARM_2 + 1),a
   03C1 F5 59               900 	mov	(__divslong_PARM_2 + 2),a
   03C3 F5 5A               901 	mov	(__divslong_PARM_2 + 3),a
   03C5 85 53 82            902 	mov	dpl,_num_refresh_tmp_1_1
   03C8 85 54 83            903 	mov	dph,(_num_refresh_tmp_1_1 + 1)
   03CB 85 55 F0            904 	mov	b,(_num_refresh_tmp_1_1 + 2)
   03CE E5 56               905 	mov	a,(_num_refresh_tmp_1_1 + 3)
   03D0 12 08 52            906 	lcall	__divslong
   03D3 85 82 53            907 	mov	_num_refresh_tmp_1_1,dpl
   03D6 85 83 54            908 	mov	(_num_refresh_tmp_1_1 + 1),dph
   03D9 85 F0 55            909 	mov	(_num_refresh_tmp_1_1 + 2),b
   03DC F5 56               910 	mov	(_num_refresh_tmp_1_1 + 3),a
                            911 ;	main.c:181: i--;
   03DE 15 52               912 	dec	_num_refresh_i_1_1
   03E0 80 A8               913 	sjmp	00106$
   03E2                     914 00116$:
   03E2 22                  915 	ret
                            916 ;------------------------------------------------------------
                            917 ;Allocation info for local variables in function 'interrupt_init'
                            918 ;------------------------------------------------------------
                            919 ;------------------------------------------------------------
                            920 ;	main.c:196: void interrupt_init(void)
                            921 ;	-----------------------------------------
                            922 ;	 function interrupt_init
                            923 ;	-----------------------------------------
   03E3                     924 _interrupt_init:
                            925 ;	main.c:199: EX0=1;    EX1=0;	//外部中断
   03E3 D2 A8               926 	setb	_EX0
   03E5 C2 AA               927 	clr	_EX1
                            928 ;	main.c:200: ET0=0;    ET1=0;	//定时器中断
   03E7 C2 A9               929 	clr	_ET0
   03E9 C2 AB               930 	clr	_ET1
                            931 ;	main.c:201: ES =0;		//串行中断
   03EB C2 AC               932 	clr	_ES
                            933 ;	main.c:204: PX0=1;	//外部
   03ED D2 B8               934 	setb	_PX0
                            935 ;	main.c:205: PT0=0;	//定时器
   03EF C2 B9               936 	clr	_PT0
                            937 ;	main.c:208: IT1=0;	//低电平触发，设为1为下降沿触发
   03F1 C2 8A               938 	clr	_IT1
                            939 ;	main.c:210: EA=1;	//打开中断总开关
   03F3 D2 AF               940 	setb	_EA
   03F5 22                  941 	ret
                            942 ;------------------------------------------------------------
                            943 ;Allocation info for local variables in function 'main'
                            944 ;------------------------------------------------------------
                            945 ;------------------------------------------------------------
                            946 ;	main.c:214: void main(void)
                            947 ;	-----------------------------------------
                            948 ;	 function main
                            949 ;	-----------------------------------------
   03F6                     950 _main:
                            951 ;	main.c:217: lcd_init();	//LCD初始化
   03F6 12 06 86            952 	lcall	_lcd_init
                            953 ;	main.c:218: interrupt_init();	//外部中断0初始化
   03F9 12 03 E3            954 	lcall	_interrupt_init
                            955 ;	main.c:219: P1=0xf0;	//键盘初始化
   03FC 75 90 F0            956 	mov	_P1,#0xF0
                            957 ;	main.c:220: refresh();	//打印待机界面
   03FF 02 02 2C            958 	ljmp	_refresh
                            959 	.area CSEG    (CODE)
                            960 	.area CONST   (CODE)
   08C4                     961 __str_0:
   08C4 57 65 6C 63 6F 6D   962 	.ascii "Welcome to use !"
        65 20 74 6F 20 75
        73 65 20 21
   08D4 00                  963 	.db 0x00
   08D5                     964 __str_1:
   08D5 3E 3E 4D 61 64 65   965 	.ascii ">>Made in SWUN<<"
        20 69 6E 20 53 57
        55 4E 3C 3C
   08E5 00                  966 	.db 0x00
   08E6                     967 __str_2:
   08E6 3D 57 61 76 65 20   968 	.ascii "=Wave Type  Set="
        54 79 70 65 20 20
        53 65 74 3D
   08F6 00                  969 	.db 0x00
   08F7                     970 __str_3:
   08F7 31 2E 73 69 6E 20   971 	.ascii "1.sin 2.fan 3.tr"
        32 2E 66 61 6E 20
        33 2E 74 72
   0907 00                  972 	.db 0x00
   0908                     973 __str_4:
   0908 3D 46 72 65 71 75   974 	.ascii "=Frequence  Set="
        65 6E 63 65 20 20
        53 65 74 3D
   0918 00                  975 	.db 0x00
   0919                     976 __str_5:
   0919 20 20 20 20 20 20   977 	.ascii "           0 KHz"
        20 20 20 20 20 30
        20 4B 48 7A
   0929 00                  978 	.db 0x00
   092A                     979 __str_6:
   092A 3D 41 6D 70 6C 69   980 	.ascii "=Amplitude  Set="
        74 75 64 65 20 20
        53 65 74 3D
   093A 00                  981 	.db 0x00
   093B                     982 __str_7:
   093B 20 20 20 20 20 20   983 	.ascii "           0 Vol"
        20 20 20 20 20 30
        20 56 6F 6C
   094B 00                  984 	.db 0x00
   094C                     985 __str_8:
   094C 31 2E 53 69 6E 20   986 	.ascii "1.Sin           "
        20 20 20 20 20 20
        20 20 20 20
   095C 00                  987 	.db 0x00
   095D                     988 __str_9:
   095D 32 2E 46 72 65 71   989 	.ascii "2.Freq          "
        20 20 20 20 20 20
        20 20 20 20
   096D 00                  990 	.db 0x00
   096E                     991 __str_10:
   096E 33 2E 54 72 69 20   992 	.ascii "3.Tri           "
        20 20 20 20 20 20
        20 20 20 20
   097E 00                  993 	.db 0x00
                            994 	.area XINIT   (CODE)
                            995 	.area CABS    (ABS,CODE)
