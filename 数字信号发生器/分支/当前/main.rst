                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
                              4 ; This file was generated Thu Oct  2 08:42:43 2008
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _CY
                             14 	.globl _AC
                             15 	.globl _F0
                             16 	.globl _RS1
                             17 	.globl _RS0
                             18 	.globl _OV
                             19 	.globl _F1
                             20 	.globl _P
                             21 	.globl _PS
                             22 	.globl _PT1
                             23 	.globl _PX1
                             24 	.globl _PT0
                             25 	.globl _PX0
                             26 	.globl _EA
                             27 	.globl _ES
                             28 	.globl _ET1
                             29 	.globl _EX1
                             30 	.globl _ET0
                             31 	.globl _EX0
                             32 	.globl _SM0
                             33 	.globl _SM1
                             34 	.globl _SM2
                             35 	.globl _REN
                             36 	.globl _TB8
                             37 	.globl _RB8
                             38 	.globl _TI
                             39 	.globl _RI
                             40 	.globl _TF1
                             41 	.globl _TR1
                             42 	.globl _TF0
                             43 	.globl _TR0
                             44 	.globl _IE1
                             45 	.globl _IT1
                             46 	.globl _IE0
                             47 	.globl _IT0
                             48 	.globl _RD
                             49 	.globl _WR
                             50 	.globl _T1
                             51 	.globl _T0
                             52 	.globl _INT1
                             53 	.globl _INT0
                             54 	.globl _TXD
                             55 	.globl _RXD
                             56 	.globl _P3_7
                             57 	.globl _P3_6
                             58 	.globl _P3_5
                             59 	.globl _P3_4
                             60 	.globl _P3_3
                             61 	.globl _P3_2
                             62 	.globl _P3_1
                             63 	.globl _P3_0
                             64 	.globl _P2_7
                             65 	.globl _P2_6
                             66 	.globl _P2_5
                             67 	.globl _P2_4
                             68 	.globl _P2_3
                             69 	.globl _P2_2
                             70 	.globl _P2_1
                             71 	.globl _P2_0
                             72 	.globl _P1_7
                             73 	.globl _P1_6
                             74 	.globl _P1_5
                             75 	.globl _P1_4
                             76 	.globl _P1_3
                             77 	.globl _P1_2
                             78 	.globl _P1_1
                             79 	.globl _P1_0
                             80 	.globl _P0_7
                             81 	.globl _P0_6
                             82 	.globl _P0_5
                             83 	.globl _P0_4
                             84 	.globl _P0_3
                             85 	.globl _P0_2
                             86 	.globl _P0_1
                             87 	.globl _P0_0
                             88 	.globl _B
                             89 	.globl _ACC
                             90 	.globl _PSW
                             91 	.globl _IP
                             92 	.globl _IE
                             93 	.globl _SBUF
                             94 	.globl _SCON
                             95 	.globl _TH1
                             96 	.globl _TH0
                             97 	.globl _TL1
                             98 	.globl _TL0
                             99 	.globl _TMOD
                            100 	.globl _TCON
                            101 	.globl _PCON
                            102 	.globl _DPH
                            103 	.globl _DPL
                            104 	.globl _SP
                            105 	.globl _P3
                            106 	.globl _P2
                            107 	.globl _P1
                            108 	.globl _P0
                            109 	.globl _sign
                            110 	.globl _keycache
                            111 	.globl _stand_pos
                            112 	.globl _stand_str
                            113 	.globl _state
                            114 	.globl _keypad_interrupt
                            115 	.globl _flush
                            116 	.globl _refresh
                            117 	.globl _interrupt_init
                            118 ;--------------------------------------------------------
                            119 ; special function registers
                            120 ;--------------------------------------------------------
                            121 	.area RSEG    (DATA)
                    0080    122 _P0	=	0x0080
                    0090    123 _P1	=	0x0090
                    00A0    124 _P2	=	0x00a0
                    00B0    125 _P3	=	0x00b0
                    0081    126 _SP	=	0x0081
                    0082    127 _DPL	=	0x0082
                    0083    128 _DPH	=	0x0083
                    0087    129 _PCON	=	0x0087
                    0088    130 _TCON	=	0x0088
                    0089    131 _TMOD	=	0x0089
                    008A    132 _TL0	=	0x008a
                    008B    133 _TL1	=	0x008b
                    008C    134 _TH0	=	0x008c
                    008D    135 _TH1	=	0x008d
                    0098    136 _SCON	=	0x0098
                    0099    137 _SBUF	=	0x0099
                    00A8    138 _IE	=	0x00a8
                    00B8    139 _IP	=	0x00b8
                    00D0    140 _PSW	=	0x00d0
                    00E0    141 _ACC	=	0x00e0
                    00F0    142 _B	=	0x00f0
                            143 ;--------------------------------------------------------
                            144 ; special function bits
                            145 ;--------------------------------------------------------
                            146 	.area RSEG    (DATA)
                    0080    147 _P0_0	=	0x0080
                    0081    148 _P0_1	=	0x0081
                    0082    149 _P0_2	=	0x0082
                    0083    150 _P0_3	=	0x0083
                    0084    151 _P0_4	=	0x0084
                    0085    152 _P0_5	=	0x0085
                    0086    153 _P0_6	=	0x0086
                    0087    154 _P0_7	=	0x0087
                    0090    155 _P1_0	=	0x0090
                    0091    156 _P1_1	=	0x0091
                    0092    157 _P1_2	=	0x0092
                    0093    158 _P1_3	=	0x0093
                    0094    159 _P1_4	=	0x0094
                    0095    160 _P1_5	=	0x0095
                    0096    161 _P1_6	=	0x0096
                    0097    162 _P1_7	=	0x0097
                    00A0    163 _P2_0	=	0x00a0
                    00A1    164 _P2_1	=	0x00a1
                    00A2    165 _P2_2	=	0x00a2
                    00A3    166 _P2_3	=	0x00a3
                    00A4    167 _P2_4	=	0x00a4
                    00A5    168 _P2_5	=	0x00a5
                    00A6    169 _P2_6	=	0x00a6
                    00A7    170 _P2_7	=	0x00a7
                    00B0    171 _P3_0	=	0x00b0
                    00B1    172 _P3_1	=	0x00b1
                    00B2    173 _P3_2	=	0x00b2
                    00B3    174 _P3_3	=	0x00b3
                    00B4    175 _P3_4	=	0x00b4
                    00B5    176 _P3_5	=	0x00b5
                    00B6    177 _P3_6	=	0x00b6
                    00B7    178 _P3_7	=	0x00b7
                    00B0    179 _RXD	=	0x00b0
                    00B1    180 _TXD	=	0x00b1
                    00B2    181 _INT0	=	0x00b2
                    00B3    182 _INT1	=	0x00b3
                    00B4    183 _T0	=	0x00b4
                    00B5    184 _T1	=	0x00b5
                    00B6    185 _WR	=	0x00b6
                    00B7    186 _RD	=	0x00b7
                    0088    187 _IT0	=	0x0088
                    0089    188 _IE0	=	0x0089
                    008A    189 _IT1	=	0x008a
                    008B    190 _IE1	=	0x008b
                    008C    191 _TR0	=	0x008c
                    008D    192 _TF0	=	0x008d
                    008E    193 _TR1	=	0x008e
                    008F    194 _TF1	=	0x008f
                    0098    195 _RI	=	0x0098
                    0099    196 _TI	=	0x0099
                    009A    197 _RB8	=	0x009a
                    009B    198 _TB8	=	0x009b
                    009C    199 _REN	=	0x009c
                    009D    200 _SM2	=	0x009d
                    009E    201 _SM1	=	0x009e
                    009F    202 _SM0	=	0x009f
                    00A8    203 _EX0	=	0x00a8
                    00A9    204 _ET0	=	0x00a9
                    00AA    205 _EX1	=	0x00aa
                    00AB    206 _ET1	=	0x00ab
                    00AC    207 _ES	=	0x00ac
                    00AF    208 _EA	=	0x00af
                    00B8    209 _PX0	=	0x00b8
                    00B9    210 _PT0	=	0x00b9
                    00BA    211 _PX1	=	0x00ba
                    00BB    212 _PT1	=	0x00bb
                    00BC    213 _PS	=	0x00bc
                    00D0    214 _P	=	0x00d0
                    00D1    215 _F1	=	0x00d1
                    00D2    216 _OV	=	0x00d2
                    00D3    217 _RS0	=	0x00d3
                    00D4    218 _RS1	=	0x00d4
                    00D5    219 _F0	=	0x00d5
                    00D6    220 _AC	=	0x00d6
                    00D7    221 _CY	=	0x00d7
                            222 ;--------------------------------------------------------
                            223 ; overlayable register banks
                            224 ;--------------------------------------------------------
                            225 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     226 	.ds 8
                            227 ;--------------------------------------------------------
                            228 ; overlayable bit register bank
                            229 ;--------------------------------------------------------
                            230 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     231 bits:
   0020                     232 	.ds 1
                    8000    233 	b0 = bits[0]
                    8100    234 	b1 = bits[1]
                    8200    235 	b2 = bits[2]
                    8300    236 	b3 = bits[3]
                    8400    237 	b4 = bits[4]
                    8500    238 	b5 = bits[5]
                    8600    239 	b6 = bits[6]
                    8700    240 	b7 = bits[7]
                            241 ;--------------------------------------------------------
                            242 ; internal ram data
                            243 ;--------------------------------------------------------
                            244 	.area DSEG    (DATA)
   0021                     245 _state::
   0021                     246 	.ds 1
   0022                     247 _stand_str::
   0022                     248 	.ds 38
   0048                     249 _stand_pos::
   0048                     250 	.ds 1
   0049                     251 _keycache::
   0049                     252 	.ds 4
   004D                     253 _sign::
   004D                     254 	.ds 6
   0053                     255 _keypad_interrupt_key_1_1:
   0053                     256 	.ds 2
   0055                     257 _keypad_interrupt_sloc0_1_0:
   0055                     258 	.ds 4
                            259 ;--------------------------------------------------------
                            260 ; overlayable items in internal ram 
                            261 ;--------------------------------------------------------
                            262 	.area OSEG    (OVR,DATA)
                            263 ;--------------------------------------------------------
                            264 ; Stack segment in internal ram 
                            265 ;--------------------------------------------------------
                            266 	.area	SSEG	(DATA)
   007B                     267 __start__stack:
   007B                     268 	.ds	1
                            269 
                            270 ;--------------------------------------------------------
                            271 ; indirectly addressable internal ram data
                            272 ;--------------------------------------------------------
                            273 	.area ISEG    (DATA)
                            274 ;--------------------------------------------------------
                            275 ; absolute internal ram data
                            276 ;--------------------------------------------------------
                            277 	.area IABS    (ABS,DATA)
                            278 	.area IABS    (ABS,DATA)
                            279 ;--------------------------------------------------------
                            280 ; bit data
                            281 ;--------------------------------------------------------
                            282 	.area BSEG    (BIT)
                            283 ;--------------------------------------------------------
                            284 ; paged external ram data
                            285 ;--------------------------------------------------------
                            286 	.area PSEG    (PAG,XDATA)
                            287 ;--------------------------------------------------------
                            288 ; external ram data
                            289 ;--------------------------------------------------------
                            290 	.area XSEG    (XDATA)
                            291 ;--------------------------------------------------------
                            292 ; absolute external ram data
                            293 ;--------------------------------------------------------
                            294 	.area XABS    (ABS,XDATA)
                            295 ;--------------------------------------------------------
                            296 ; external initialized ram data
                            297 ;--------------------------------------------------------
                            298 	.area XISEG   (XDATA)
                            299 	.area HOME    (CODE)
                            300 	.area GSINIT0 (CODE)
                            301 	.area GSINIT1 (CODE)
                            302 	.area GSINIT2 (CODE)
                            303 	.area GSINIT3 (CODE)
                            304 	.area GSINIT4 (CODE)
                            305 	.area GSINIT5 (CODE)
                            306 	.area GSINIT  (CODE)
                            307 	.area GSFINAL (CODE)
                            308 	.area CSEG    (CODE)
                            309 ;--------------------------------------------------------
                            310 ; interrupt vector 
                            311 ;--------------------------------------------------------
                            312 	.area HOME    (CODE)
   0000                     313 __interrupt_vect:
   0000 02 00 0B            314 	ljmp	__sdcc_gsinit_startup
   0003 02 00 EB            315 	ljmp	_keypad_interrupt
                            316 ;--------------------------------------------------------
                            317 ; global & static initialisations
                            318 ;--------------------------------------------------------
                            319 	.area HOME    (CODE)
                            320 	.area GSINIT  (CODE)
                            321 	.area GSFINAL (CODE)
                            322 	.area GSINIT  (CODE)
                            323 	.globl __sdcc_gsinit_startup
                            324 	.globl __sdcc_program_startup
                            325 	.globl __start__stack
                            326 	.globl __mcs51_genXINIT
                            327 	.globl __mcs51_genXRAMCLEAR
                            328 	.globl __mcs51_genRAMCLEAR
                            329 ;	main.c:17: char state=0;	//状态变量,0为待机,W波形,F频率,A幅度
   0064 75 21 00            330 	mov	_state,#0x00
                            331 ;	main.c:18: char stand_str[38]="     Wave;F=     KHz;A=   Vol   ";
   0067 75 22 20            332 	mov	_stand_str,#0x20
   006A 75 23 20            333 	mov	(_stand_str + 0x0001),#0x20
   006D 75 24 20            334 	mov	(_stand_str + 0x0002),#0x20
   0070 75 25 20            335 	mov	(_stand_str + 0x0003),#0x20
   0073 75 26 20            336 	mov	(_stand_str + 0x0004),#0x20
   0076 75 27 57            337 	mov	(_stand_str + 0x0005),#0x57
   0079 75 28 61            338 	mov	(_stand_str + 0x0006),#0x61
   007C 75 29 76            339 	mov	(_stand_str + 0x0007),#0x76
   007F 75 2A 65            340 	mov	(_stand_str + 0x0008),#0x65
   0082 75 2B 3B            341 	mov	(_stand_str + 0x0009),#0x3B
   0085 75 2C 46            342 	mov	(_stand_str + 0x000a),#0x46
   0088 75 2D 3D            343 	mov	(_stand_str + 0x000b),#0x3D
   008B 75 2E 20            344 	mov	(_stand_str + 0x000c),#0x20
   008E 75 2F 20            345 	mov	(_stand_str + 0x000d),#0x20
   0091 75 30 20            346 	mov	(_stand_str + 0x000e),#0x20
   0094 75 31 20            347 	mov	(_stand_str + 0x000f),#0x20
   0097 75 32 20            348 	mov	(_stand_str + 0x0010),#0x20
   009A 75 33 4B            349 	mov	(_stand_str + 0x0011),#0x4B
   009D 75 34 48            350 	mov	(_stand_str + 0x0012),#0x48
   00A0 75 35 7A            351 	mov	(_stand_str + 0x0013),#0x7A
   00A3 75 36 3B            352 	mov	(_stand_str + 0x0014),#0x3B
   00A6 75 37 41            353 	mov	(_stand_str + 0x0015),#0x41
   00A9 75 38 3D            354 	mov	(_stand_str + 0x0016),#0x3D
   00AC 75 39 20            355 	mov	(_stand_str + 0x0017),#0x20
   00AF 75 3A 20            356 	mov	(_stand_str + 0x0018),#0x20
   00B2 75 3B 20            357 	mov	(_stand_str + 0x0019),#0x20
   00B5 75 3C 56            358 	mov	(_stand_str + 0x001a),#0x56
   00B8 75 3D 6F            359 	mov	(_stand_str + 0x001b),#0x6F
   00BB 75 3E 6C            360 	mov	(_stand_str + 0x001c),#0x6C
   00BE 75 3F 20            361 	mov	(_stand_str + 0x001d),#0x20
   00C1 75 40 20            362 	mov	(_stand_str + 0x001e),#0x20
   00C4 75 41 20            363 	mov	(_stand_str + 0x001f),#0x20
   00C7 75 42 00            364 	mov	(_stand_str + 0x0020),#0x00
                            365 ;	main.c:19: char stand_pos=0;	//控制待机时屏幕流动显示的位置；
   00CA 75 48 00            366 	mov	_stand_pos,#0x00
                            367 ;	main.c:21: long int keycache=0;		//键盘输入缓存
   00CD E4                  368 	clr	a
   00CE F5 49               369 	mov	_keycache,a
   00D0 F5 4A               370 	mov	(_keycache + 1),a
   00D2 F5 4B               371 	mov	(_keycache + 2),a
   00D4 F5 4C               372 	mov	(_keycache + 3),a
                            373 ;	main.c:26: }sign={1,1000,5};
   00D6 75 4D 01            374 	mov	_sign,#0x01
   00D9 75 4E E8            375 	mov	(_sign + 0x0001),#0xE8
   00DC 75 4F 03            376 	mov	((_sign + 0x0001) + 1),#0x03
   00DF 75 50 00            377 	mov	((_sign + 0x0001) + 2),#0x00
   00E2 75 51 00            378 	mov	((_sign + 0x0001) + 3),#0x00
   00E5 75 52 05            379 	mov	(_sign + 0x0005),#0x05
                            380 	.area GSFINAL (CODE)
   00E8 02 00 06            381 	ljmp	__sdcc_program_startup
                            382 ;--------------------------------------------------------
                            383 ; Home
                            384 ;--------------------------------------------------------
                            385 	.area HOME    (CODE)
                            386 	.area HOME    (CODE)
   0006                     387 __sdcc_program_startup:
   0006 12 03 FA            388 	lcall	_main
                            389 ;	return from main will lock up
   0009 80 FE               390 	sjmp .
                            391 ;--------------------------------------------------------
                            392 ; code
                            393 ;--------------------------------------------------------
                            394 	.area CSEG    (CODE)
                            395 ;------------------------------------------------------------
                            396 ;Allocation info for local variables in function 'keypad_interrupt'
                            397 ;------------------------------------------------------------
                            398 ;key                       Allocated with name '_keypad_interrupt_key_1_1'
                            399 ;sloc0                     Allocated with name '_keypad_interrupt_sloc0_1_0'
                            400 ;------------------------------------------------------------
                            401 ;	main.c:40: void keypad_interrupt(void) interrupt 0
                            402 ;	-----------------------------------------
                            403 ;	 function keypad_interrupt
                            404 ;	-----------------------------------------
   00EB                     405 _keypad_interrupt:
                    0002    406 	ar2 = 0x02
                    0003    407 	ar3 = 0x03
                    0004    408 	ar4 = 0x04
                    0005    409 	ar5 = 0x05
                    0006    410 	ar6 = 0x06
                    0007    411 	ar7 = 0x07
                    0000    412 	ar0 = 0x00
                    0001    413 	ar1 = 0x01
   00EB C0 20               414 	push	bits
   00ED C0 E0               415 	push	acc
   00EF C0 F0               416 	push	b
   00F1 C0 82               417 	push	dpl
   00F3 C0 83               418 	push	dph
   00F5 C0 02               419 	push	(0+2)
   00F7 C0 03               420 	push	(0+3)
   00F9 C0 04               421 	push	(0+4)
   00FB C0 05               422 	push	(0+5)
   00FD C0 06               423 	push	(0+6)
   00FF C0 07               424 	push	(0+7)
   0101 C0 00               425 	push	(0+0)
   0103 C0 01               426 	push	(0+1)
   0105 C0 D0               427 	push	psw
   0107 75 D0 00            428 	mov	psw,#0x00
                            429 ;	main.c:50: key=key_make(key_scan());
   010A 12 04 EC            430 	lcall	_key_scan
   010D 12 04 64            431 	lcall	_key_make
   0110 E5 82               432 	mov	a,dpl
   0112 FA                  433 	mov	r2,a
   0113 F5 53               434 	mov	_keypad_interrupt_key_1_1,a
   0115 33                  435 	rlc	a
   0116 95 E0               436 	subb	a,acc
   0118 F5 54               437 	mov	(_keypad_interrupt_key_1_1 + 1),a
                            438 ;	main.c:52: if(key>10){	//功能区
   011A C3                  439 	clr	c
   011B 74 0A               440 	mov	a,#0x0A
   011D 95 53               441 	subb	a,_keypad_interrupt_key_1_1
   011F 74 80               442 	mov	a,#(0x00 ^ 0x80)
   0121 85 54 F0            443 	mov	b,(_keypad_interrupt_key_1_1 + 1)
   0124 63 F0 80            444 	xrl	b,#0x80
   0127 95 F0               445 	subb	a,b
   0129 50 2D               446 	jnc	00110$
                            447 ;	main.c:53: key-=20;
   012B E5 53               448 	mov	a,_keypad_interrupt_key_1_1
   012D 24 EC               449 	add	a,#0xec
   012F F5 53               450 	mov	_keypad_interrupt_key_1_1,a
   0131 E5 54               451 	mov	a,(_keypad_interrupt_key_1_1 + 1)
   0133 34 FF               452 	addc	a,#0xff
   0135 F5 54               453 	mov	(_keypad_interrupt_key_1_1 + 1),a
                            454 ;	main.c:54: if(key==4)		flush();	//功能处理
   0137 74 04               455 	mov	a,#0x04
   0139 B5 53 06            456 	cjne	a,_keypad_interrupt_key_1_1,00122$
   013C E4                  457 	clr	a
   013D B5 54 02            458 	cjne	a,(_keypad_interrupt_key_1_1 + 1),00122$
   0140 80 02               459 	sjmp	00123$
   0142                     460 00122$:
   0142 80 05               461 	sjmp	00102$
   0144                     462 00123$:
   0144 12 01 FF            463 	lcall	_flush
   0147 80 03               464 	sjmp	00103$
   0149                     465 00102$:
                            466 ;	main.c:55: else			state=key;
   0149 85 53 21            467 	mov	_state,_keypad_interrupt_key_1_1
   014C                     468 00103$:
                            469 ;	main.c:56: keycache=0;	//清空输入缓存
   014C E4                  470 	clr	a
   014D F5 49               471 	mov	_keycache,a
   014F F5 4A               472 	mov	(_keycache + 1),a
   0151 F5 4B               473 	mov	(_keycache + 2),a
   0153 F5 4C               474 	mov	(_keycache + 3),a
   0155 02 01 D9            475 	ljmp	00111$
   0158                     476 00110$:
                            477 ;	main.c:57: }else if(state){	//非设置状态的数字按键丢弃
   0158 E5 21               478 	mov	a,_state
   015A 70 03               479 	jnz	00124$
   015C 02 01 D9            480 	ljmp	00111$
   015F                     481 00124$:
                            482 ;	main.c:58: if(state==1)	keycache=key;//波形选择只收集一次按键
   015F 74 01               483 	mov	a,#0x01
   0161 B5 21 10            484 	cjne	a,_state,00105$
   0164 85 53 49            485 	mov	_keycache,_keypad_interrupt_key_1_1
   0167 E5 54               486 	mov	a,(_keypad_interrupt_key_1_1 + 1)
   0169 F5 4A               487 	mov	(_keycache + 1),a
   016B 33                  488 	rlc	a
   016C 95 E0               489 	subb	a,acc
   016E F5 4B               490 	mov	(_keycache + 2),a
   0170 F5 4C               491 	mov	(_keycache + 3),a
   0172 80 65               492 	sjmp	00111$
   0174                     493 00105$:
                            494 ;	main.c:59: else		keycache=keycache>999999999 ? 0 : (key+keycache*10);	//频率幅度需要叠加
   0174 C3                  495 	clr	c
   0175 74 FF               496 	mov	a,#0xFF
   0177 95 49               497 	subb	a,_keycache
   0179 74 C9               498 	mov	a,#0xC9
   017B 95 4A               499 	subb	a,(_keycache + 1)
   017D 74 9A               500 	mov	a,#0x9A
   017F 95 4B               501 	subb	a,(_keycache + 2)
   0181 74 BB               502 	mov	a,#(0x3B ^ 0x80)
   0183 85 4C F0            503 	mov	b,(_keycache + 3)
   0186 63 F0 80            504 	xrl	b,#0x80
   0189 95 F0               505 	subb	a,b
   018B 50 0A               506 	jnc	00114$
   018D 7C 00               507 	mov	r4,#0x00
   018F 7D 00               508 	mov	r5,#0x00
   0191 7E 00               509 	mov	r6,#0x00
   0193 7F 00               510 	mov	r7,#0x00
   0195 80 3A               511 	sjmp	00115$
   0197                     512 00114$:
   0197 85 49 59            513 	mov	__mullong_PARM_2,_keycache
   019A 85 4A 5A            514 	mov	(__mullong_PARM_2 + 1),(_keycache + 1)
   019D 85 4B 5B            515 	mov	(__mullong_PARM_2 + 2),(_keycache + 2)
   01A0 85 4C 5C            516 	mov	(__mullong_PARM_2 + 3),(_keycache + 3)
   01A3 90 00 0A            517 	mov	dptr,#(0x0A&0x00ff)
   01A6 E4                  518 	clr	a
   01A7 F5 F0               519 	mov	b,a
   01A9 12 07 D5            520 	lcall	__mullong
   01AC 85 82 55            521 	mov	_keypad_interrupt_sloc0_1_0,dpl
   01AF 85 83 56            522 	mov	(_keypad_interrupt_sloc0_1_0 + 1),dph
   01B2 85 F0 57            523 	mov	(_keypad_interrupt_sloc0_1_0 + 2),b
   01B5 F5 58               524 	mov	(_keypad_interrupt_sloc0_1_0 + 3),a
   01B7 AA 53               525 	mov	r2,_keypad_interrupt_key_1_1
   01B9 E5 54               526 	mov	a,(_keypad_interrupt_key_1_1 + 1)
   01BB FB                  527 	mov	r3,a
   01BC 33                  528 	rlc	a
   01BD 95 E0               529 	subb	a,acc
   01BF F8                  530 	mov	r0,a
   01C0 F9                  531 	mov	r1,a
   01C1 E5 55               532 	mov	a,_keypad_interrupt_sloc0_1_0
   01C3 2A                  533 	add	a,r2
   01C4 FC                  534 	mov	r4,a
   01C5 E5 56               535 	mov	a,(_keypad_interrupt_sloc0_1_0 + 1)
   01C7 3B                  536 	addc	a,r3
   01C8 FD                  537 	mov	r5,a
   01C9 E5 57               538 	mov	a,(_keypad_interrupt_sloc0_1_0 + 2)
   01CB 38                  539 	addc	a,r0
   01CC FE                  540 	mov	r6,a
   01CD E5 58               541 	mov	a,(_keypad_interrupt_sloc0_1_0 + 3)
   01CF 39                  542 	addc	a,r1
   01D0 FF                  543 	mov	r7,a
   01D1                     544 00115$:
   01D1 8C 49               545 	mov	_keycache,r4
   01D3 8D 4A               546 	mov	(_keycache + 1),r5
   01D5 8E 4B               547 	mov	(_keycache + 2),r6
   01D7 8F 4C               548 	mov	(_keycache + 3),r7
   01D9                     549 00111$:
                            550 ;	main.c:61: refresh();
   01D9 12 02 30            551 	lcall	_refresh
                            552 ;	main.c:62: delay(1);
   01DC 75 82 01            553 	mov	dpl,#0x01
   01DF 12 04 08            554 	lcall	_delay
   01E2 D0 D0               555 	pop	psw
   01E4 D0 01               556 	pop	(0+1)
   01E6 D0 00               557 	pop	(0+0)
   01E8 D0 07               558 	pop	(0+7)
   01EA D0 06               559 	pop	(0+6)
   01EC D0 05               560 	pop	(0+5)
   01EE D0 04               561 	pop	(0+4)
   01F0 D0 03               562 	pop	(0+3)
   01F2 D0 02               563 	pop	(0+2)
   01F4 D0 83               564 	pop	dph
   01F6 D0 82               565 	pop	dpl
   01F8 D0 F0               566 	pop	b
   01FA D0 E0               567 	pop	acc
   01FC D0 20               568 	pop	bits
   01FE 32                  569 	reti
                            570 ;------------------------------------------------------------
                            571 ;Allocation info for local variables in function 'flush'
                            572 ;------------------------------------------------------------
                            573 ;------------------------------------------------------------
                            574 ;	main.c:65: void flush(void)
                            575 ;	-----------------------------------------
                            576 ;	 function flush
                            577 ;	-----------------------------------------
   01FF                     578 _flush:
                            579 ;	main.c:67: switch(state){
   01FF 74 01               580 	mov	a,#0x01
   0201 B5 21 02            581 	cjne	a,_state,00110$
   0204 80 0E               582 	sjmp	00101$
   0206                     583 00110$:
   0206 74 02               584 	mov	a,#0x02
   0208 B5 21 02            585 	cjne	a,_state,00111$
   020B 80 0D               586 	sjmp	00102$
   020D                     587 00111$:
   020D 74 03               588 	mov	a,#0x03
                            589 ;	main.c:68: case 1:
   020F B5 21 1A            590 	cjne	a,_state,00104$
   0212 80 14               591 	sjmp	00103$
   0214                     592 00101$:
                            593 ;	main.c:69: sign.w=keycache;
   0214 AA 49               594 	mov	r2,_keycache
   0216 8A 4D               595 	mov	_sign,r2
                            596 ;	main.c:70: break;
                            597 ;	main.c:71: case 2:
   0218 80 12               598 	sjmp	00104$
   021A                     599 00102$:
                            600 ;	main.c:72: sign.f=keycache;
   021A 85 49 4E            601 	mov	(_sign + 0x0001),_keycache
   021D 85 4A 4F            602 	mov	((_sign + 0x0001) + 1),(_keycache + 1)
   0220 85 4B 50            603 	mov	((_sign + 0x0001) + 2),(_keycache + 2)
   0223 85 4C 51            604 	mov	((_sign + 0x0001) + 3),(_keycache + 3)
                            605 ;	main.c:73: break;
                            606 ;	main.c:74: case 3:
   0226 80 04               607 	sjmp	00104$
   0228                     608 00103$:
                            609 ;	main.c:75: sign.a=keycache;
   0228 AA 49               610 	mov	r2,_keycache
   022A 8A 52               611 	mov	(_sign + 0x0005),r2
                            612 ;	main.c:77: }
   022C                     613 00104$:
                            614 ;	main.c:81: state=0;		//处理完成恢复待机状态
   022C 75 21 00            615 	mov	_state,#0x00
   022F 22                  616 	ret
                            617 ;------------------------------------------------------------
                            618 ;Allocation info for local variables in function 'refresh'
                            619 ;------------------------------------------------------------
                            620 ;------------------------------------------------------------
                            621 ;	main.c:84: void refresh(void)
                            622 ;	-----------------------------------------
                            623 ;	 function refresh
                            624 ;	-----------------------------------------
   0230                     625 _refresh:
                            626 ;	main.c:86: lcd_printsxy("                ",0,0);
   0230 75 0B 00            627 	mov	_lcd_printsxy_PARM_2,#0x00
   0233 75 0C 00            628 	mov	_lcd_printsxy_PARM_3,#0x00
   0236 90 09 04            629 	mov	dptr,#__str_0
   0239 75 F0 80            630 	mov	b,#0x80
   023C 12 05 D6            631 	lcall	_lcd_printsxy
                            632 ;	main.c:87: lcd_printsxy("                ",0,1);
   023F 75 0B 00            633 	mov	_lcd_printsxy_PARM_2,#0x00
   0242 75 0C 01            634 	mov	_lcd_printsxy_PARM_3,#0x01
   0245 90 09 04            635 	mov	dptr,#__str_0
   0248 75 F0 80            636 	mov	b,#0x80
   024B 12 05 D6            637 	lcall	_lcd_printsxy
                            638 ;	main.c:88: switch(state){
   024E E4                  639 	clr	a
   024F B5 21 02            640 	cjne	a,_state,00126$
   0252 80 1B               641 	sjmp	00101$
   0254                     642 00126$:
   0254 74 01               643 	mov	a,#0x01
   0256 B5 21 03            644 	cjne	a,_state,00127$
   0259 02 02 EC            645 	ljmp	00106$
   025C                     646 00127$:
   025C 74 02               647 	mov	a,#0x02
   025E B5 21 03            648 	cjne	a,_state,00128$
   0261 02 03 7D            649 	ljmp	00112$
   0264                     650 00128$:
   0264 74 03               651 	mov	a,#0x03
   0266 B5 21 03            652 	cjne	a,_state,00129$
   0269 02 03 B1            653 	ljmp	00113$
   026C                     654 00129$:
   026C 02 03 E3            655 	ljmp	00114$
                            656 ;	main.c:89: case 0:
   026F                     657 00101$:
                            658 ;	main.c:90: switch(sign.w){
   026F AA 4D               659 	mov	r2,_sign
   0271 BA 02 02            660 	cjne	r2,#0x02,00130$
   0274 80 05               661 	sjmp	00102$
   0276                     662 00130$:
                            663 ;	main.c:91: case 2:lcd_printsxy("Rect    A=   Vol",0,0);	break;
   0276 BA 03 24            664 	cjne	r2,#0x03,00104$
   0279 80 11               665 	sjmp	00103$
   027B                     666 00102$:
   027B 75 0B 00            667 	mov	_lcd_printsxy_PARM_2,#0x00
   027E 75 0C 00            668 	mov	_lcd_printsxy_PARM_3,#0x00
   0281 90 09 15            669 	mov	dptr,#__str_1
   0284 75 F0 80            670 	mov	b,#0x80
   0287 12 05 D6            671 	lcall	_lcd_printsxy
                            672 ;	main.c:92: case 3:lcd_printsxy("Tria    A=   Vol",0,0);	break;
   028A 80 20               673 	sjmp	00105$
   028C                     674 00103$:
   028C 75 0B 00            675 	mov	_lcd_printsxy_PARM_2,#0x00
   028F 75 0C 00            676 	mov	_lcd_printsxy_PARM_3,#0x00
   0292 90 09 26            677 	mov	dptr,#__str_2
   0295 75 F0 80            678 	mov	b,#0x80
   0298 12 05 D6            679 	lcall	_lcd_printsxy
                            680 ;	main.c:93: default:lcd_printsxy("sine    A=   Vol",0,0);	break;
   029B 80 0F               681 	sjmp	00105$
   029D                     682 00104$:
   029D 75 0B 00            683 	mov	_lcd_printsxy_PARM_2,#0x00
   02A0 75 0C 00            684 	mov	_lcd_printsxy_PARM_3,#0x00
   02A3 90 09 37            685 	mov	dptr,#__str_3
   02A6 75 F0 80            686 	mov	b,#0x80
   02A9 12 05 D6            687 	lcall	_lcd_printsxy
                            688 ;	main.c:94: }
   02AC                     689 00105$:
                            690 ;	main.c:95: lcd_printsxy("F=       KHz",0,1);
   02AC 75 0B 00            691 	mov	_lcd_printsxy_PARM_2,#0x00
   02AF 75 0C 01            692 	mov	_lcd_printsxy_PARM_3,#0x01
   02B2 90 09 48            693 	mov	dptr,#__str_4
   02B5 75 F0 80            694 	mov	b,#0x80
   02B8 12 05 D6            695 	lcall	_lcd_printsxy
                            696 ;	main.c:96: lcd_printnxy(sign.a,12,0);lcd_printnxy(sign.f,8,1);
   02BB AA 52               697 	mov	r2,(_sign + 0x0005)
   02BD E5 52               698 	mov	a,(_sign + 0x0005)
   02BF 33                  699 	rlc	a
   02C0 95 E0               700 	subb	a,acc
   02C2 FB                  701 	mov	r3,a
   02C3 FC                  702 	mov	r4,a
   02C4 FD                  703 	mov	r5,a
   02C5 75 0F 0C            704 	mov	_lcd_printnxy_PARM_2,#0x0C
   02C8 75 10 00            705 	mov	_lcd_printnxy_PARM_3,#0x00
   02CB 8A 82               706 	mov	dpl,r2
   02CD 8B 83               707 	mov	dph,r3
   02CF 8C F0               708 	mov	b,r4
   02D1 ED                  709 	mov	a,r5
   02D2 12 06 43            710 	lcall	_lcd_printnxy
   02D5 75 0F 08            711 	mov	_lcd_printnxy_PARM_2,#0x08
   02D8 75 10 01            712 	mov	_lcd_printnxy_PARM_3,#0x01
   02DB 85 4E 82            713 	mov	dpl,(_sign + 0x0001)
   02DE 85 4F 83            714 	mov	dph,((_sign + 0x0001) + 1)
   02E1 85 50 F0            715 	mov	b,((_sign + 0x0001) + 2)
   02E4 E5 51               716 	mov	a,((_sign + 0x0001) + 3)
   02E6 12 06 43            717 	lcall	_lcd_printnxy
                            718 ;	main.c:97: break;
   02E9 02 03 E3            719 	ljmp	00114$
                            720 ;	main.c:98: case 1:
   02EC                     721 00106$:
                            722 ;	main.c:99: lcd_printsxy("Wave Select",0,0);
   02EC 75 0B 00            723 	mov	_lcd_printsxy_PARM_2,#0x00
   02EF 75 0C 00            724 	mov	_lcd_printsxy_PARM_3,#0x00
   02F2 90 09 55            725 	mov	dptr,#__str_5
   02F5 75 F0 80            726 	mov	b,#0x80
   02F8 12 05 D6            727 	lcall	_lcd_printsxy
                            728 ;	main.c:100: switch(keycache){
   02FB 74 01               729 	mov	a,#0x01
   02FD B5 49 0E            730 	cjne	a,_keycache,00132$
   0300 E4                  731 	clr	a
   0301 B5 4A 0A            732 	cjne	a,(_keycache + 1),00132$
   0304 E4                  733 	clr	a
   0305 B5 4B 06            734 	cjne	a,(_keycache + 2),00132$
   0308 E4                  735 	clr	a
   0309 B5 4C 02            736 	cjne	a,(_keycache + 3),00132$
   030C 80 28               737 	sjmp	00107$
   030E                     738 00132$:
   030E 74 02               739 	mov	a,#0x02
   0310 B5 49 0E            740 	cjne	a,_keycache,00133$
   0313 E4                  741 	clr	a
   0314 B5 4A 0A            742 	cjne	a,(_keycache + 1),00133$
   0317 E4                  743 	clr	a
   0318 B5 4B 06            744 	cjne	a,(_keycache + 2),00133$
   031B E4                  745 	clr	a
   031C B5 4C 02            746 	cjne	a,(_keycache + 3),00133$
   031F 80 27               747 	sjmp	00108$
   0321                     748 00133$:
   0321 74 03               749 	mov	a,#0x03
   0323 B5 49 0E            750 	cjne	a,_keycache,00134$
   0326 E4                  751 	clr	a
   0327 B5 4A 0A            752 	cjne	a,(_keycache + 1),00134$
   032A E4                  753 	clr	a
   032B B5 4B 06            754 	cjne	a,(_keycache + 2),00134$
   032E E4                  755 	clr	a
   032F B5 4C 02            756 	cjne	a,(_keycache + 3),00134$
   0332 80 26               757 	sjmp	00109$
   0334                     758 00134$:
                            759 ;	main.c:101: case 1: lcd_printsxy("Sine Wave",0,1);break;
   0334 80 36               760 	sjmp	00110$
   0336                     761 00107$:
   0336 75 0B 00            762 	mov	_lcd_printsxy_PARM_2,#0x00
   0339 75 0C 01            763 	mov	_lcd_printsxy_PARM_3,#0x01
   033C 90 09 61            764 	mov	dptr,#__str_6
   033F 75 F0 80            765 	mov	b,#0x80
   0342 12 05 D6            766 	lcall	_lcd_printsxy
   0345 02 03 E3            767 	ljmp	00114$
                            768 ;	main.c:102: case 2: lcd_printsxy("Deco Wave",0,1);break;
   0348                     769 00108$:
   0348 75 0B 00            770 	mov	_lcd_printsxy_PARM_2,#0x00
   034B 75 0C 01            771 	mov	_lcd_printsxy_PARM_3,#0x01
   034E 90 09 6B            772 	mov	dptr,#__str_7
   0351 75 F0 80            773 	mov	b,#0x80
   0354 12 05 D6            774 	lcall	_lcd_printsxy
   0357 02 03 E3            775 	ljmp	00114$
                            776 ;	main.c:103: case 3: lcd_printsxy("Tria Wave",0,1);break;
   035A                     777 00109$:
   035A 75 0B 00            778 	mov	_lcd_printsxy_PARM_2,#0x00
   035D 75 0C 01            779 	mov	_lcd_printsxy_PARM_3,#0x01
   0360 90 09 75            780 	mov	dptr,#__str_8
   0363 75 F0 80            781 	mov	b,#0x80
   0366 12 05 D6            782 	lcall	_lcd_printsxy
   0369 02 03 E3            783 	ljmp	00114$
                            784 ;	main.c:104: default: lcd_printsxy("1.Sin 2.Dec 3.Tri",0,1);break;
   036C                     785 00110$:
   036C 75 0B 00            786 	mov	_lcd_printsxy_PARM_2,#0x00
   036F 75 0C 01            787 	mov	_lcd_printsxy_PARM_3,#0x01
   0372 90 09 7F            788 	mov	dptr,#__str_9
   0375 75 F0 80            789 	mov	b,#0x80
   0378 12 05 D6            790 	lcall	_lcd_printsxy
                            791 ;	main.c:106: break;
                            792 ;	main.c:107: case 2:
   037B 80 66               793 	sjmp	00114$
   037D                     794 00112$:
                            795 ;	main.c:108: lcd_printsxy("Frequence Set",0,0);
   037D 75 0B 00            796 	mov	_lcd_printsxy_PARM_2,#0x00
   0380 75 0C 00            797 	mov	_lcd_printsxy_PARM_3,#0x00
   0383 90 09 91            798 	mov	dptr,#__str_10
   0386 75 F0 80            799 	mov	b,#0x80
   0389 12 05 D6            800 	lcall	_lcd_printsxy
                            801 ;	main.c:109: lcd_printsxy("KHz",13,1);
   038C 75 0B 0D            802 	mov	_lcd_printsxy_PARM_2,#0x0D
   038F 75 0C 01            803 	mov	_lcd_printsxy_PARM_3,#0x01
   0392 90 09 9F            804 	mov	dptr,#__str_11
   0395 75 F0 80            805 	mov	b,#0x80
   0398 12 05 D6            806 	lcall	_lcd_printsxy
                            807 ;	main.c:110: lcd_printnxy(keycache,12,1);
   039B 75 0F 0C            808 	mov	_lcd_printnxy_PARM_2,#0x0C
   039E 75 10 01            809 	mov	_lcd_printnxy_PARM_3,#0x01
   03A1 85 49 82            810 	mov	dpl,_keycache
   03A4 85 4A 83            811 	mov	dph,(_keycache + 1)
   03A7 85 4B F0            812 	mov	b,(_keycache + 2)
   03AA E5 4C               813 	mov	a,(_keycache + 3)
   03AC 12 06 43            814 	lcall	_lcd_printnxy
                            815 ;	main.c:111: break;
                            816 ;	main.c:112: case 3:
   03AF 80 32               817 	sjmp	00114$
   03B1                     818 00113$:
                            819 ;	main.c:113: lcd_printsxy("Ample Setting",0,0);
   03B1 75 0B 00            820 	mov	_lcd_printsxy_PARM_2,#0x00
   03B4 75 0C 00            821 	mov	_lcd_printsxy_PARM_3,#0x00
   03B7 90 09 A3            822 	mov	dptr,#__str_12
   03BA 75 F0 80            823 	mov	b,#0x80
   03BD 12 05 D6            824 	lcall	_lcd_printsxy
                            825 ;	main.c:114: lcd_printsxy("Vol",13,1);
   03C0 75 0B 0D            826 	mov	_lcd_printsxy_PARM_2,#0x0D
   03C3 75 0C 01            827 	mov	_lcd_printsxy_PARM_3,#0x01
   03C6 90 09 B1            828 	mov	dptr,#__str_13
   03C9 75 F0 80            829 	mov	b,#0x80
   03CC 12 05 D6            830 	lcall	_lcd_printsxy
                            831 ;	main.c:115: lcd_printnxy(keycache,12,1);
   03CF 75 0F 0C            832 	mov	_lcd_printnxy_PARM_2,#0x0C
   03D2 75 10 01            833 	mov	_lcd_printnxy_PARM_3,#0x01
   03D5 85 49 82            834 	mov	dpl,_keycache
   03D8 85 4A 83            835 	mov	dph,(_keycache + 1)
   03DB 85 4B F0            836 	mov	b,(_keycache + 2)
   03DE E5 4C               837 	mov	a,(_keycache + 3)
   03E0 12 06 43            838 	lcall	_lcd_printnxy
                            839 ;	main.c:117: }
   03E3                     840 00114$:
                            841 ;	main.c:118: stand_pos=0;
   03E3 75 48 00            842 	mov	_stand_pos,#0x00
   03E6 22                  843 	ret
                            844 ;------------------------------------------------------------
                            845 ;Allocation info for local variables in function 'interrupt_init'
                            846 ;------------------------------------------------------------
                            847 ;------------------------------------------------------------
                            848 ;	main.c:128: void interrupt_init(void)
                            849 ;	-----------------------------------------
                            850 ;	 function interrupt_init
                            851 ;	-----------------------------------------
   03E7                     852 _interrupt_init:
                            853 ;	main.c:131: EX0=1;    EX1=0;	//外部中断
   03E7 D2 A8               854 	setb	_EX0
   03E9 C2 AA               855 	clr	_EX1
                            856 ;	main.c:132: ET0=0;    ET1=0;	//定时器中断
   03EB C2 A9               857 	clr	_ET0
   03ED C2 AB               858 	clr	_ET1
                            859 ;	main.c:133: ES =0;		//串行中断
   03EF C2 AC               860 	clr	_ES
                            861 ;	main.c:136: PX0=1;	//外部
   03F1 D2 B8               862 	setb	_PX0
                            863 ;	main.c:137: PT0=0;	//定时器
   03F3 C2 B9               864 	clr	_PT0
                            865 ;	main.c:140: IT1=0;	//低电平触发，设为1为下降沿触发
   03F5 C2 8A               866 	clr	_IT1
                            867 ;	main.c:142: EA=1;	//打开中断总开关
   03F7 D2 AF               868 	setb	_EA
   03F9 22                  869 	ret
                            870 ;------------------------------------------------------------
                            871 ;Allocation info for local variables in function 'main'
                            872 ;------------------------------------------------------------
                            873 ;------------------------------------------------------------
                            874 ;	main.c:146: void main(void)
                            875 ;	-----------------------------------------
                            876 ;	 function main
                            877 ;	-----------------------------------------
   03FA                     878 _main:
                            879 ;	main.c:149: lcd_init();	//LCD初始化
   03FA 12 06 C6            880 	lcall	_lcd_init
                            881 ;	main.c:150: interrupt_init();	//外部中断0初始化
   03FD 12 03 E7            882 	lcall	_interrupt_init
                            883 ;	main.c:151: P1=0xf0;	//键盘初始化
   0400 75 90 F0            884 	mov	_P1,#0xF0
                            885 ;	main.c:152: refresh();
   0403 12 02 30            886 	lcall	_refresh
                            887 ;	main.c:153: while(1);
   0406                     888 00102$:
   0406 80 FE               889 	sjmp	00102$
                            890 	.area CSEG    (CODE)
                            891 	.area CONST   (CODE)
   0904                     892 __str_0:
   0904 20 20 20 20 20 20   893 	.ascii "                "
        20 20 20 20 20 20
        20 20 20 20
   0914 00                  894 	.db 0x00
   0915                     895 __str_1:
   0915 52 65 63 74 20 20   896 	.ascii "Rect    A=   Vol"
        20 20 41 3D 20 20
        20 56 6F 6C
   0925 00                  897 	.db 0x00
   0926                     898 __str_2:
   0926 54 72 69 61 20 20   899 	.ascii "Tria    A=   Vol"
        20 20 41 3D 20 20
        20 56 6F 6C
   0936 00                  900 	.db 0x00
   0937                     901 __str_3:
   0937 73 69 6E 65 20 20   902 	.ascii "sine    A=   Vol"
        20 20 41 3D 20 20
        20 56 6F 6C
   0947 00                  903 	.db 0x00
   0948                     904 __str_4:
   0948 46 3D 20 20 20 20   905 	.ascii "F=       KHz"
        20 20 20 4B 48 7A
   0954 00                  906 	.db 0x00
   0955                     907 __str_5:
   0955 57 61 76 65 20 53   908 	.ascii "Wave Select"
        65 6C 65 63 74
   0960 00                  909 	.db 0x00
   0961                     910 __str_6:
   0961 53 69 6E 65 20 57   911 	.ascii "Sine Wave"
        61 76 65
   096A 00                  912 	.db 0x00
   096B                     913 __str_7:
   096B 44 65 63 6F 20 57   914 	.ascii "Deco Wave"
        61 76 65
   0974 00                  915 	.db 0x00
   0975                     916 __str_8:
   0975 54 72 69 61 20 57   917 	.ascii "Tria Wave"
        61 76 65
   097E 00                  918 	.db 0x00
   097F                     919 __str_9:
   097F 31 2E 53 69 6E 20   920 	.ascii "1.Sin 2.Dec 3.Tri"
        32 2E 44 65 63 20
        33 2E 54 72 69
   0990 00                  921 	.db 0x00
   0991                     922 __str_10:
   0991 46 72 65 71 75 65   923 	.ascii "Frequence Set"
        6E 63 65 20 53 65
        74
   099E 00                  924 	.db 0x00
   099F                     925 __str_11:
   099F 4B 48 7A            926 	.ascii "KHz"
   09A2 00                  927 	.db 0x00
   09A3                     928 __str_12:
   09A3 41 6D 70 6C 65 20   929 	.ascii "Ample Setting"
        53 65 74 74 69 6E
        67
   09B0 00                  930 	.db 0x00
   09B1                     931 __str_13:
   09B1 56 6F 6C            932 	.ascii "Vol"
   09B4 00                  933 	.db 0x00
                            934 	.area XINIT   (CODE)
                            935 	.area CABS    (ABS,CODE)
