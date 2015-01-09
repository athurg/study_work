                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
                              4 ; This file was generated Fri Sep 19 16:01:40 2008
                              5 ;--------------------------------------------------------
                              6 	.module lcd
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _CY
                             13 	.globl _AC
                             14 	.globl _F0
                             15 	.globl _RS1
                             16 	.globl _RS0
                             17 	.globl _OV
                             18 	.globl _F1
                             19 	.globl _P
                             20 	.globl _PS
                             21 	.globl _PT1
                             22 	.globl _PX1
                             23 	.globl _PT0
                             24 	.globl _PX0
                             25 	.globl _EA
                             26 	.globl _ES
                             27 	.globl _ET1
                             28 	.globl _EX1
                             29 	.globl _ET0
                             30 	.globl _EX0
                             31 	.globl _SM0
                             32 	.globl _SM1
                             33 	.globl _SM2
                             34 	.globl _REN
                             35 	.globl _TB8
                             36 	.globl _RB8
                             37 	.globl _TI
                             38 	.globl _RI
                             39 	.globl _TF1
                             40 	.globl _TR1
                             41 	.globl _TF0
                             42 	.globl _TR0
                             43 	.globl _IE1
                             44 	.globl _IT1
                             45 	.globl _IE0
                             46 	.globl _IT0
                             47 	.globl _RD
                             48 	.globl _WR
                             49 	.globl _T1
                             50 	.globl _T0
                             51 	.globl _INT1
                             52 	.globl _INT0
                             53 	.globl _TXD
                             54 	.globl _RXD
                             55 	.globl _P3_7
                             56 	.globl _P3_6
                             57 	.globl _P3_5
                             58 	.globl _P3_4
                             59 	.globl _P3_3
                             60 	.globl _P3_2
                             61 	.globl _P3_1
                             62 	.globl _P3_0
                             63 	.globl _P2_7
                             64 	.globl _P2_6
                             65 	.globl _P2_5
                             66 	.globl _P2_4
                             67 	.globl _P2_3
                             68 	.globl _P2_2
                             69 	.globl _P2_1
                             70 	.globl _P2_0
                             71 	.globl _P1_7
                             72 	.globl _P1_6
                             73 	.globl _P1_5
                             74 	.globl _P1_4
                             75 	.globl _P1_3
                             76 	.globl _P1_2
                             77 	.globl _P1_1
                             78 	.globl _P1_0
                             79 	.globl _P0_7
                             80 	.globl _P0_6
                             81 	.globl _P0_5
                             82 	.globl _P0_4
                             83 	.globl _P0_3
                             84 	.globl _P0_2
                             85 	.globl _P0_1
                             86 	.globl _P0_0
                             87 	.globl _B
                             88 	.globl _ACC
                             89 	.globl _PSW
                             90 	.globl _IP
                             91 	.globl _IE
                             92 	.globl _SBUF
                             93 	.globl _SCON
                             94 	.globl _TH1
                             95 	.globl _TH0
                             96 	.globl _TL1
                             97 	.globl _TL0
                             98 	.globl _TMOD
                             99 	.globl _TCON
                            100 	.globl _PCON
                            101 	.globl _DPH
                            102 	.globl _DPL
                            103 	.globl _SP
                            104 	.globl _P3
                            105 	.globl _P2
                            106 	.globl _P1
                            107 	.globl _P0
                            108 	.globl _lcd_printnum_PARM_3
                            109 	.globl _lcd_printnum_PARM_2
                            110 	.globl _lcd_printchar_PARM_3
                            111 	.globl _lcd_printchar_PARM_2
                            112 	.globl _lcd_printstr_PARM_3
                            113 	.globl _lcd_printstr_PARM_2
                            114 	.globl _lcd_position_PARM_2
                            115 	.globl _lcd_shift_PARM_2
                            116 	.globl _lcd_write_PARM_2
                            117 	.globl _lcd_wait
                            118 	.globl _lcd_write
                            119 	.globl _lcd_shift
                            120 	.globl _lcd_position
                            121 	.globl _lcd_cls
                            122 	.globl _lcd_print
                            123 	.globl _lcd_printstr
                            124 	.globl _lcd_printchar
                            125 	.globl _lcd_printnum
                            126 	.globl _lcd_init
                            127 ;--------------------------------------------------------
                            128 ; special function registers
                            129 ;--------------------------------------------------------
                            130 	.area RSEG    (DATA)
                    0080    131 _P0	=	0x0080
                    0090    132 _P1	=	0x0090
                    00A0    133 _P2	=	0x00a0
                    00B0    134 _P3	=	0x00b0
                    0081    135 _SP	=	0x0081
                    0082    136 _DPL	=	0x0082
                    0083    137 _DPH	=	0x0083
                    0087    138 _PCON	=	0x0087
                    0088    139 _TCON	=	0x0088
                    0089    140 _TMOD	=	0x0089
                    008A    141 _TL0	=	0x008a
                    008B    142 _TL1	=	0x008b
                    008C    143 _TH0	=	0x008c
                    008D    144 _TH1	=	0x008d
                    0098    145 _SCON	=	0x0098
                    0099    146 _SBUF	=	0x0099
                    00A8    147 _IE	=	0x00a8
                    00B8    148 _IP	=	0x00b8
                    00D0    149 _PSW	=	0x00d0
                    00E0    150 _ACC	=	0x00e0
                    00F0    151 _B	=	0x00f0
                            152 ;--------------------------------------------------------
                            153 ; special function bits
                            154 ;--------------------------------------------------------
                            155 	.area RSEG    (DATA)
                    0080    156 _P0_0	=	0x0080
                    0081    157 _P0_1	=	0x0081
                    0082    158 _P0_2	=	0x0082
                    0083    159 _P0_3	=	0x0083
                    0084    160 _P0_4	=	0x0084
                    0085    161 _P0_5	=	0x0085
                    0086    162 _P0_6	=	0x0086
                    0087    163 _P0_7	=	0x0087
                    0090    164 _P1_0	=	0x0090
                    0091    165 _P1_1	=	0x0091
                    0092    166 _P1_2	=	0x0092
                    0093    167 _P1_3	=	0x0093
                    0094    168 _P1_4	=	0x0094
                    0095    169 _P1_5	=	0x0095
                    0096    170 _P1_6	=	0x0096
                    0097    171 _P1_7	=	0x0097
                    00A0    172 _P2_0	=	0x00a0
                    00A1    173 _P2_1	=	0x00a1
                    00A2    174 _P2_2	=	0x00a2
                    00A3    175 _P2_3	=	0x00a3
                    00A4    176 _P2_4	=	0x00a4
                    00A5    177 _P2_5	=	0x00a5
                    00A6    178 _P2_6	=	0x00a6
                    00A7    179 _P2_7	=	0x00a7
                    00B0    180 _P3_0	=	0x00b0
                    00B1    181 _P3_1	=	0x00b1
                    00B2    182 _P3_2	=	0x00b2
                    00B3    183 _P3_3	=	0x00b3
                    00B4    184 _P3_4	=	0x00b4
                    00B5    185 _P3_5	=	0x00b5
                    00B6    186 _P3_6	=	0x00b6
                    00B7    187 _P3_7	=	0x00b7
                    00B0    188 _RXD	=	0x00b0
                    00B1    189 _TXD	=	0x00b1
                    00B2    190 _INT0	=	0x00b2
                    00B3    191 _INT1	=	0x00b3
                    00B4    192 _T0	=	0x00b4
                    00B5    193 _T1	=	0x00b5
                    00B6    194 _WR	=	0x00b6
                    00B7    195 _RD	=	0x00b7
                    0088    196 _IT0	=	0x0088
                    0089    197 _IE0	=	0x0089
                    008A    198 _IT1	=	0x008a
                    008B    199 _IE1	=	0x008b
                    008C    200 _TR0	=	0x008c
                    008D    201 _TF0	=	0x008d
                    008E    202 _TR1	=	0x008e
                    008F    203 _TF1	=	0x008f
                    0098    204 _RI	=	0x0098
                    0099    205 _TI	=	0x0099
                    009A    206 _RB8	=	0x009a
                    009B    207 _TB8	=	0x009b
                    009C    208 _REN	=	0x009c
                    009D    209 _SM2	=	0x009d
                    009E    210 _SM1	=	0x009e
                    009F    211 _SM0	=	0x009f
                    00A8    212 _EX0	=	0x00a8
                    00A9    213 _ET0	=	0x00a9
                    00AA    214 _EX1	=	0x00aa
                    00AB    215 _ET1	=	0x00ab
                    00AC    216 _ES	=	0x00ac
                    00AF    217 _EA	=	0x00af
                    00B8    218 _PX0	=	0x00b8
                    00B9    219 _PT0	=	0x00b9
                    00BA    220 _PX1	=	0x00ba
                    00BB    221 _PT1	=	0x00bb
                    00BC    222 _PS	=	0x00bc
                    00D0    223 _P	=	0x00d0
                    00D1    224 _F1	=	0x00d1
                    00D2    225 _OV	=	0x00d2
                    00D3    226 _RS0	=	0x00d3
                    00D4    227 _RS1	=	0x00d4
                    00D5    228 _F0	=	0x00d5
                    00D6    229 _AC	=	0x00d6
                    00D7    230 _CY	=	0x00d7
                            231 ;--------------------------------------------------------
                            232 ; overlayable register banks
                            233 ;--------------------------------------------------------
                            234 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     235 	.ds 8
                            236 ;--------------------------------------------------------
                            237 ; internal ram data
                            238 ;--------------------------------------------------------
                            239 	.area DSEG    (DATA)
   0008                     240 _lcd_write_PARM_2:
   0008                     241 	.ds 1
   0009                     242 _lcd_shift_PARM_2:
   0009                     243 	.ds 1
   000A                     244 _lcd_position_PARM_2:
   000A                     245 	.ds 1
   000B                     246 _lcd_printstr_PARM_2:
   000B                     247 	.ds 1
   000C                     248 _lcd_printstr_PARM_3:
   000C                     249 	.ds 1
   000D                     250 _lcd_printchar_PARM_2:
   000D                     251 	.ds 1
   000E                     252 _lcd_printchar_PARM_3:
   000E                     253 	.ds 1
   000F                     254 _lcd_printnum_PARM_2:
   000F                     255 	.ds 1
   0010                     256 _lcd_printnum_PARM_3:
   0010                     257 	.ds 1
                            258 ;--------------------------------------------------------
                            259 ; overlayable items in internal ram 
                            260 ;--------------------------------------------------------
                            261 	.area OSEG    (OVR,DATA)
                            262 ;--------------------------------------------------------
                            263 ; indirectly addressable internal ram data
                            264 ;--------------------------------------------------------
                            265 	.area ISEG    (DATA)
                            266 ;--------------------------------------------------------
                            267 ; absolute internal ram data
                            268 ;--------------------------------------------------------
                            269 	.area IABS    (ABS,DATA)
                            270 	.area IABS    (ABS,DATA)
                            271 ;--------------------------------------------------------
                            272 ; bit data
                            273 ;--------------------------------------------------------
                            274 	.area BSEG    (BIT)
                            275 ;--------------------------------------------------------
                            276 ; paged external ram data
                            277 ;--------------------------------------------------------
                            278 	.area PSEG    (PAG,XDATA)
                            279 ;--------------------------------------------------------
                            280 ; external ram data
                            281 ;--------------------------------------------------------
                            282 	.area XSEG    (XDATA)
                            283 ;--------------------------------------------------------
                            284 ; absolute external ram data
                            285 ;--------------------------------------------------------
                            286 	.area XABS    (ABS,XDATA)
                            287 ;--------------------------------------------------------
                            288 ; external initialized ram data
                            289 ;--------------------------------------------------------
                            290 	.area XISEG   (XDATA)
                            291 	.area HOME    (CODE)
                            292 	.area GSINIT0 (CODE)
                            293 	.area GSINIT1 (CODE)
                            294 	.area GSINIT2 (CODE)
                            295 	.area GSINIT3 (CODE)
                            296 	.area GSINIT4 (CODE)
                            297 	.area GSINIT5 (CODE)
                            298 	.area GSINIT  (CODE)
                            299 	.area GSFINAL (CODE)
                            300 	.area CSEG    (CODE)
                            301 ;--------------------------------------------------------
                            302 ; global & static initialisations
                            303 ;--------------------------------------------------------
                            304 	.area HOME    (CODE)
                            305 	.area GSINIT  (CODE)
                            306 	.area GSFINAL (CODE)
                            307 	.area GSINIT  (CODE)
                            308 ;--------------------------------------------------------
                            309 ; Home
                            310 ;--------------------------------------------------------
                            311 	.area HOME    (CODE)
                            312 	.area HOME    (CODE)
                            313 ;--------------------------------------------------------
                            314 ; code
                            315 ;--------------------------------------------------------
                            316 	.area CSEG    (CODE)
                            317 ;------------------------------------------------------------
                            318 ;Allocation info for local variables in function 'lcd_wait'
                            319 ;------------------------------------------------------------
                            320 ;------------------------------------------------------------
                            321 ;	lcd.c:26: void lcd_wait(void)
                            322 ;	-----------------------------------------
                            323 ;	 function lcd_wait
                            324 ;	-----------------------------------------
   04F5                     325 _lcd_wait:
                    0002    326 	ar2 = 0x02
                    0003    327 	ar3 = 0x03
                    0004    328 	ar4 = 0x04
                    0005    329 	ar5 = 0x05
                    0006    330 	ar6 = 0x06
                    0007    331 	ar7 = 0x07
                    0000    332 	ar0 = 0x00
                    0001    333 	ar1 = 0x01
                            334 ;	lcd.c:36: while(1){
   04F5                     335 00104$:
                            336 ;	lcd.c:37: LCD_EN=0;
   04F5 C2 A2               337 	clr	_P2_2
                            338 ;	lcd.c:38: LCD_RS=0;
   04F7 C2 A0               339 	clr	_P2_0
                            340 ;	lcd.c:39: LCD_RW=1;
   04F9 D2 A1               341 	setb	_P2_1
                            342 ;	lcd.c:40: LCD_DATA=0xFF;
   04FB 75 80 FF            343 	mov	_P0,#0xFF
                            344 ;	lcd.c:41: LCD_EN=1;
   04FE D2 A2               345 	setb	_P2_2
                            346 ;	lcd.c:42: if(!LCD_BUSY)		break;		//忙完了，不玩了：）
   0500 20 87 F2            347 	jb	_P0_7,00104$
                            348 ;	lcd.c:44: LCD_EN=0;
   0503 C2 A2               349 	clr	_P2_2
                            350 ;	lcd.c:45: return;
   0505 22                  351 	ret
                            352 ;------------------------------------------------------------
                            353 ;Allocation info for local variables in function 'lcd_write'
                            354 ;------------------------------------------------------------
                            355 ;datas                     Allocated with name '_lcd_write_PARM_2'
                            356 ;type                      Allocated to registers r2 
                            357 ;------------------------------------------------------------
                            358 ;	lcd.c:60: void lcd_write(char type, char datas)
                            359 ;	-----------------------------------------
                            360 ;	 function lcd_write
                            361 ;	-----------------------------------------
   0506                     362 _lcd_write:
   0506 AA 82               363 	mov	r2,dpl
                            364 ;	lcd.c:62: lcd_wait();	//等候LCD闲，置于最前面，以防止lcd_wait()对RS和RW造成影响
   0508 C0 02               365 	push	ar2
   050A 12 04 F5            366 	lcall	_lcd_wait
   050D D0 02               367 	pop	ar2
                            368 ;	lcd.c:64: LCD_RS=type;
   050F EA                  369 	mov	a,r2
   0510 24 FF               370 	add	a,#0xff
   0512 92 A0               371 	mov	_P2_0,c
                            372 ;	lcd.c:65: LCD_RW=0;
   0514 C2 A1               373 	clr	_P2_1
                            374 ;	lcd.c:67: LCD_DATA=datas;
   0516 85 08 80            375 	mov	_P0,_lcd_write_PARM_2
                            376 ;	lcd.c:70: LCD_EN=1;
   0519 D2 A2               377 	setb	_P2_2
                            378 ;	lcd.c:71: LCD_EN=0;
   051B C2 A2               379 	clr	_P2_2
   051D 22                  380 	ret
                            381 ;------------------------------------------------------------
                            382 ;Allocation info for local variables in function 'lcd_shift'
                            383 ;------------------------------------------------------------
                            384 ;num                       Allocated with name '_lcd_shift_PARM_2'
                            385 ;object                    Allocated to registers r2 
                            386 ;datas                     Allocated to registers r3 
                            387 ;------------------------------------------------------------
                            388 ;	lcd.c:86: void lcd_shift(char object, char num)
                            389 ;	-----------------------------------------
                            390 ;	 function lcd_shift
                            391 ;	-----------------------------------------
   051E                     392 _lcd_shift:
   051E AA 82               393 	mov	r2,dpl
                            394 ;	lcd.c:88: char datas=0x10;
   0520 7B 10               395 	mov	r3,#0x10
                            396 ;	lcd.c:89: if(object == 'f')	//对象=画面
   0522 BA 66 02            397 	cjne	r2,#0x66,00102$
                            398 ;	lcd.c:90: datas+=0x08;
   0525 7B 18               399 	mov	r3,#0x18
   0527                     400 00102$:
                            401 ;	lcd.c:91: if(num > 0)	//正号右移
   0527 C3                  402 	clr	c
   0528 74 80               403 	mov	a,#(0x00 ^ 0x80)
   052A 85 09 F0            404 	mov	b,_lcd_shift_PARM_2
   052D 63 F0 80            405 	xrl	b,#0x80
   0530 95 F0               406 	subb	a,b
   0532 50 06               407 	jnc	00104$
                            408 ;	lcd.c:92: datas+=0x04;
   0534 EB                  409 	mov	a,r3
   0535 24 04               410 	add	a,#0x04
   0537 FB                  411 	mov	r3,a
   0538 80 06               412 	sjmp	00114$
   053A                     413 00104$:
                            414 ;	lcd.c:94: num=-num;	//负号取相反数，以统一循环变量
   053A C3                  415 	clr	c
   053B E4                  416 	clr	a
   053C 95 09               417 	subb	a,_lcd_shift_PARM_2
   053E F5 09               418 	mov	_lcd_shift_PARM_2,a
                            419 ;	lcd.c:96: while(num){
   0540                     420 00114$:
   0540 AA 09               421 	mov	r2,_lcd_shift_PARM_2
   0542                     422 00106$:
   0542 EA                  423 	mov	a,r2
   0543 60 13               424 	jz	00109$
                            425 ;	lcd.c:97: lcd_write(0,datas);	//一次移动
   0545 8B 08               426 	mov	_lcd_write_PARM_2,r3
   0547 75 82 00            427 	mov	dpl,#0x00
   054A C0 02               428 	push	ar2
   054C C0 03               429 	push	ar3
   054E 12 05 06            430 	lcall	_lcd_write
   0551 D0 03               431 	pop	ar3
   0553 D0 02               432 	pop	ar2
                            433 ;	lcd.c:98: num--;
   0555 1A                  434 	dec	r2
   0556 80 EA               435 	sjmp	00106$
   0558                     436 00109$:
   0558 22                  437 	ret
                            438 ;------------------------------------------------------------
                            439 ;Allocation info for local variables in function 'lcd_position'
                            440 ;------------------------------------------------------------
                            441 ;y                         Allocated with name '_lcd_position_PARM_2'
                            442 ;x                         Allocated to registers r2 
                            443 ;------------------------------------------------------------
                            444 ;	lcd.c:114: void lcd_position(char x,char y)
                            445 ;	-----------------------------------------
                            446 ;	 function lcd_position
                            447 ;	-----------------------------------------
   0559                     448 _lcd_position:
   0559 AA 82               449 	mov	r2,dpl
                            450 ;	lcd.c:120: if(y)	x+=0x40;	//0x40：第二行起始位置偏移量
   055B E5 0A               451 	mov	a,_lcd_position_PARM_2
   055D 60 04               452 	jz	00102$
   055F 74 40               453 	mov	a,#0x40
   0561 2A                  454 	add	a,r2
   0562 FA                  455 	mov	r2,a
   0563                     456 00102$:
                            457 ;	lcd.c:121: lcd_write(0,0x80+x);
   0563 74 80               458 	mov	a,#0x80
   0565 2A                  459 	add	a,r2
   0566 F5 08               460 	mov	_lcd_write_PARM_2,a
   0568 75 82 00            461 	mov	dpl,#0x00
   056B 02 05 06            462 	ljmp	_lcd_write
                            463 ;------------------------------------------------------------
                            464 ;Allocation info for local variables in function 'lcd_cls'
                            465 ;------------------------------------------------------------
                            466 ;------------------------------------------------------------
                            467 ;	lcd.c:132: void lcd_cls(void)
                            468 ;	-----------------------------------------
                            469 ;	 function lcd_cls
                            470 ;	-----------------------------------------
   056E                     471 _lcd_cls:
                            472 ;	lcd.c:134: lcd_write(0,LCD_CMD_CLS);
   056E 75 08 01            473 	mov	_lcd_write_PARM_2,#0x01
   0571 75 82 00            474 	mov	dpl,#0x00
   0574 02 05 06            475 	ljmp	_lcd_write
                            476 ;------------------------------------------------------------
                            477 ;Allocation info for local variables in function 'lcd_print'
                            478 ;------------------------------------------------------------
                            479 ;string                    Allocated to registers r2 r3 r4 
                            480 ;i                         Allocated to registers r5 
                            481 ;------------------------------------------------------------
                            482 ;	lcd.c:143: void lcd_print(char *string)
                            483 ;	-----------------------------------------
                            484 ;	 function lcd_print
                            485 ;	-----------------------------------------
   0577                     486 _lcd_print:
   0577 AA 82               487 	mov	r2,dpl
   0579 AB 83               488 	mov	r3,dph
   057B AC F0               489 	mov	r4,b
                            490 ;	lcd.c:146: while(string[i]!=0x00){
   057D 7D 00               491 	mov	r5,#0x00
   057F                     492 00101$:
   057F ED                  493 	mov	a,r5
   0580 2A                  494 	add	a,r2
   0581 FE                  495 	mov	r6,a
   0582 E4                  496 	clr	a
   0583 3B                  497 	addc	a,r3
   0584 FF                  498 	mov	r7,a
   0585 8C 00               499 	mov	ar0,r4
   0587 8E 82               500 	mov	dpl,r6
   0589 8F 83               501 	mov	dph,r7
   058B 88 F0               502 	mov	b,r0
   058D 12 08 A4            503 	lcall	__gptrget
   0590 FE                  504 	mov	r6,a
   0591 60 1B               505 	jz	00104$
                            506 ;	lcd.c:147: lcd_write(1,string[i]);
   0593 8E 08               507 	mov	_lcd_write_PARM_2,r6
   0595 75 82 01            508 	mov	dpl,#0x01
   0598 C0 02               509 	push	ar2
   059A C0 03               510 	push	ar3
   059C C0 04               511 	push	ar4
   059E C0 05               512 	push	ar5
   05A0 12 05 06            513 	lcall	_lcd_write
   05A3 D0 05               514 	pop	ar5
   05A5 D0 04               515 	pop	ar4
   05A7 D0 03               516 	pop	ar3
   05A9 D0 02               517 	pop	ar2
                            518 ;	lcd.c:148: i++;
   05AB 0D                  519 	inc	r5
   05AC 80 D1               520 	sjmp	00101$
   05AE                     521 00104$:
   05AE 22                  522 	ret
                            523 ;------------------------------------------------------------
                            524 ;Allocation info for local variables in function 'lcd_printstr'
                            525 ;------------------------------------------------------------
                            526 ;x                         Allocated with name '_lcd_printstr_PARM_2'
                            527 ;y                         Allocated with name '_lcd_printstr_PARM_3'
                            528 ;string                    Allocated to registers r2 r3 r4 
                            529 ;i                         Allocated to registers r5 
                            530 ;------------------------------------------------------------
                            531 ;	lcd.c:158: void lcd_printstr(char *string, char x, char y)
                            532 ;	-----------------------------------------
                            533 ;	 function lcd_printstr
                            534 ;	-----------------------------------------
   05AF                     535 _lcd_printstr:
   05AF AA 82               536 	mov	r2,dpl
   05B1 AB 83               537 	mov	r3,dph
   05B3 AC F0               538 	mov	r4,b
                            539 ;	lcd.c:161: lcd_position(x,y);	//先定位
   05B5 85 0C 0A            540 	mov	_lcd_position_PARM_2,_lcd_printstr_PARM_3
   05B8 85 0B 82            541 	mov	dpl,_lcd_printstr_PARM_2
   05BB C0 02               542 	push	ar2
   05BD C0 03               543 	push	ar3
   05BF C0 04               544 	push	ar4
   05C1 12 05 59            545 	lcall	_lcd_position
   05C4 D0 04               546 	pop	ar4
   05C6 D0 03               547 	pop	ar3
   05C8 D0 02               548 	pop	ar2
                            549 ;	lcd.c:162: while(string[i]!=0x00){
   05CA 7D 00               550 	mov	r5,#0x00
   05CC                     551 00101$:
   05CC ED                  552 	mov	a,r5
   05CD 2A                  553 	add	a,r2
   05CE FE                  554 	mov	r6,a
   05CF E4                  555 	clr	a
   05D0 3B                  556 	addc	a,r3
   05D1 FF                  557 	mov	r7,a
   05D2 8C 00               558 	mov	ar0,r4
   05D4 8E 82               559 	mov	dpl,r6
   05D6 8F 83               560 	mov	dph,r7
   05D8 88 F0               561 	mov	b,r0
   05DA 12 08 A4            562 	lcall	__gptrget
   05DD FE                  563 	mov	r6,a
   05DE 60 1B               564 	jz	00104$
                            565 ;	lcd.c:163: lcd_write(1,string[i]);
   05E0 8E 08               566 	mov	_lcd_write_PARM_2,r6
   05E2 75 82 01            567 	mov	dpl,#0x01
   05E5 C0 02               568 	push	ar2
   05E7 C0 03               569 	push	ar3
   05E9 C0 04               570 	push	ar4
   05EB C0 05               571 	push	ar5
   05ED 12 05 06            572 	lcall	_lcd_write
   05F0 D0 05               573 	pop	ar5
   05F2 D0 04               574 	pop	ar4
   05F4 D0 03               575 	pop	ar3
   05F6 D0 02               576 	pop	ar2
                            577 ;	lcd.c:164: i++;
   05F8 0D                  578 	inc	r5
   05F9 80 D1               579 	sjmp	00101$
   05FB                     580 00104$:
   05FB 22                  581 	ret
                            582 ;------------------------------------------------------------
                            583 ;Allocation info for local variables in function 'lcd_printchar'
                            584 ;------------------------------------------------------------
                            585 ;x                         Allocated with name '_lcd_printchar_PARM_2'
                            586 ;y                         Allocated with name '_lcd_printchar_PARM_3'
                            587 ;charactor                 Allocated to registers r2 
                            588 ;------------------------------------------------------------
                            589 ;	lcd.c:174: void lcd_printchar(char charactor, char x, char y)
                            590 ;	-----------------------------------------
                            591 ;	 function lcd_printchar
                            592 ;	-----------------------------------------
   05FC                     593 _lcd_printchar:
   05FC AA 82               594 	mov	r2,dpl
                            595 ;	lcd.c:176: lcd_position(x,y);
   05FE 85 0E 0A            596 	mov	_lcd_position_PARM_2,_lcd_printchar_PARM_3
   0601 85 0D 82            597 	mov	dpl,_lcd_printchar_PARM_2
   0604 C0 02               598 	push	ar2
   0606 12 05 59            599 	lcall	_lcd_position
   0609 D0 02               600 	pop	ar2
                            601 ;	lcd.c:177: lcd_write(1,charactor);
   060B 8A 08               602 	mov	_lcd_write_PARM_2,r2
   060D 75 82 01            603 	mov	dpl,#0x01
   0610 02 05 06            604 	ljmp	_lcd_write
                            605 ;------------------------------------------------------------
                            606 ;Allocation info for local variables in function 'lcd_printnum'
                            607 ;------------------------------------------------------------
                            608 ;x                         Allocated with name '_lcd_printnum_PARM_2'
                            609 ;y                         Allocated with name '_lcd_printnum_PARM_3'
                            610 ;number                    Allocated to registers r2 r3 r4 r5 
                            611 ;------------------------------------------------------------
                            612 ;	lcd.c:185: void lcd_printnum(long int number, char x, char y)
                            613 ;	-----------------------------------------
                            614 ;	 function lcd_printnum
                            615 ;	-----------------------------------------
   0613                     616 _lcd_printnum:
   0613 AA 82               617 	mov	r2,dpl
   0615 AB 83               618 	mov	r3,dph
   0617 AC F0               619 	mov	r4,b
   0619 FD                  620 	mov	r5,a
                            621 ;	lcd.c:187: while(1){
   061A                     622 00104$:
                            623 ;	lcd.c:188: lcd_position(x,y);	//先输出，为0也输出0
   061A 85 10 0A            624 	mov	_lcd_position_PARM_2,_lcd_printnum_PARM_3
   061D 85 0F 82            625 	mov	dpl,_lcd_printnum_PARM_2
   0620 C0 02               626 	push	ar2
   0622 C0 03               627 	push	ar3
   0624 C0 04               628 	push	ar4
   0626 C0 05               629 	push	ar5
   0628 12 05 59            630 	lcall	_lcd_position
   062B D0 05               631 	pop	ar5
   062D D0 04               632 	pop	ar4
   062F D0 03               633 	pop	ar3
   0631 D0 02               634 	pop	ar2
                            635 ;	lcd.c:189: lcd_write(1,number%10+32);
   0633 75 57 0A            636 	mov	__modslong_PARM_2,#0x0A
   0636 E4                  637 	clr	a
   0637 F5 58               638 	mov	(__modslong_PARM_2 + 1),a
   0639 F5 59               639 	mov	(__modslong_PARM_2 + 2),a
   063B F5 5A               640 	mov	(__modslong_PARM_2 + 3),a
   063D 8A 82               641 	mov	dpl,r2
   063F 8B 83               642 	mov	dph,r3
   0641 8C F0               643 	mov	b,r4
   0643 ED                  644 	mov	a,r5
   0644 C0 02               645 	push	ar2
   0646 C0 03               646 	push	ar3
   0648 C0 04               647 	push	ar4
   064A C0 05               648 	push	ar5
   064C 12 08 03            649 	lcall	__modslong
   064F AE 82               650 	mov	r6,dpl
   0651 74 20               651 	mov	a,#0x20
   0653 2E                  652 	add	a,r6
   0654 F5 08               653 	mov	_lcd_write_PARM_2,a
   0656 75 82 01            654 	mov	dpl,#0x01
   0659 12 05 06            655 	lcall	_lcd_write
   065C D0 05               656 	pop	ar5
   065E D0 04               657 	pop	ar4
   0660 D0 03               658 	pop	ar3
   0662 D0 02               659 	pop	ar2
                            660 ;	lcd.c:191: number/=10;
   0664 75 57 0A            661 	mov	__divslong_PARM_2,#0x0A
   0667 E4                  662 	clr	a
   0668 F5 58               663 	mov	(__divslong_PARM_2 + 1),a
   066A F5 59               664 	mov	(__divslong_PARM_2 + 2),a
   066C F5 5A               665 	mov	(__divslong_PARM_2 + 3),a
   066E 8A 82               666 	mov	dpl,r2
   0670 8B 83               667 	mov	dph,r3
   0672 8C F0               668 	mov	b,r4
   0674 ED                  669 	mov	a,r5
   0675 12 08 52            670 	lcall	__divslong
   0678 AA 82               671 	mov	r2,dpl
   067A AB 83               672 	mov	r3,dph
   067C AC F0               673 	mov	r4,b
   067E FD                  674 	mov	r5,a
                            675 ;	lcd.c:192: if(!number)	break;	//为0则停
   067F EA                  676 	mov	a,r2
   0680 4B                  677 	orl	a,r3
   0681 4C                  678 	orl	a,r4
   0682 4D                  679 	orl	a,r5
   0683 70 95               680 	jnz	00104$
   0685 22                  681 	ret
                            682 ;------------------------------------------------------------
                            683 ;Allocation info for local variables in function 'lcd_init'
                            684 ;------------------------------------------------------------
                            685 ;------------------------------------------------------------
                            686 ;	lcd.c:201: void lcd_init(void)
                            687 ;	-----------------------------------------
                            688 ;	 function lcd_init
                            689 ;	-----------------------------------------
   0686                     690 _lcd_init:
                            691 ;	lcd.c:206: lcd_write(0,0x3c);		//两行5*10点阵，8位数据接口
   0686 75 08 3C            692 	mov	_lcd_write_PARM_2,#0x3C
   0689 75 82 00            693 	mov	dpl,#0x00
   068C 12 05 06            694 	lcall	_lcd_write
                            695 ;	lcd.c:211: lcd_write(0,0x06); //读写后画面固定、AC自增
   068F 75 08 06            696 	mov	_lcd_write_PARM_2,#0x06
   0692 75 82 00            697 	mov	dpl,#0x00
   0695 12 05 06            698 	lcall	_lcd_write
                            699 ;	lcd.c:216: lcd_write(0,0x0f);	//屏幕、光标和闪烁全开
   0698 75 08 0F            700 	mov	_lcd_write_PARM_2,#0x0F
   069B 75 82 00            701 	mov	dpl,#0x00
   069E 12 05 06            702 	lcall	_lcd_write
                            703 ;	lcd.c:218: lcd_cls();
   06A1 12 05 6E            704 	lcall	_lcd_cls
                            705 ;	lcd.c:219: lcd_write(0,LCD_CMD_HOME);	//LCD归位（清DDRAM、DDROM、AC，清除所有移动）
   06A4 75 08 02            706 	mov	_lcd_write_PARM_2,#0x02
   06A7 75 82 00            707 	mov	dpl,#0x00
   06AA 02 05 06            708 	ljmp	_lcd_write
                            709 	.area CSEG    (CODE)
                            710 	.area CONST   (CODE)
                            711 	.area XINIT   (CODE)
                            712 	.area CABS    (ABS,CODE)
