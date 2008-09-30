                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
                              4 ; This file was generated Tue Sep 30 08:13:56 2008
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
                            108 	.globl _lcd_printnxy_PARM_3
                            109 	.globl _lcd_printnxy_PARM_2
                            110 	.globl _lcd_printcxy_PARM_3
                            111 	.globl _lcd_printcxy_PARM_2
                            112 	.globl _lcd_printsxy_PARM_3
                            113 	.globl _lcd_printsxy_PARM_2
                            114 	.globl _lcd_position_PARM_2
                            115 	.globl _lcd_shift_PARM_2
                            116 	.globl _lcd_write_PARM_2
                            117 	.globl _lcd_wait
                            118 	.globl _lcd_write
                            119 	.globl _lcd_shift
                            120 	.globl _lcd_position
                            121 	.globl _lcd_cls
                            122 	.globl _lcd_prints
                            123 	.globl _lcd_printsxy
                            124 	.globl _lcd_printc
                            125 	.globl _lcd_printcxy
                            126 	.globl _lcd_printnxy
                            127 	.globl _lcd_init
                            128 ;--------------------------------------------------------
                            129 ; special function registers
                            130 ;--------------------------------------------------------
                            131 	.area RSEG    (DATA)
                    0080    132 _P0	=	0x0080
                    0090    133 _P1	=	0x0090
                    00A0    134 _P2	=	0x00a0
                    00B0    135 _P3	=	0x00b0
                    0081    136 _SP	=	0x0081
                    0082    137 _DPL	=	0x0082
                    0083    138 _DPH	=	0x0083
                    0087    139 _PCON	=	0x0087
                    0088    140 _TCON	=	0x0088
                    0089    141 _TMOD	=	0x0089
                    008A    142 _TL0	=	0x008a
                    008B    143 _TL1	=	0x008b
                    008C    144 _TH0	=	0x008c
                    008D    145 _TH1	=	0x008d
                    0098    146 _SCON	=	0x0098
                    0099    147 _SBUF	=	0x0099
                    00A8    148 _IE	=	0x00a8
                    00B8    149 _IP	=	0x00b8
                    00D0    150 _PSW	=	0x00d0
                    00E0    151 _ACC	=	0x00e0
                    00F0    152 _B	=	0x00f0
                            153 ;--------------------------------------------------------
                            154 ; special function bits
                            155 ;--------------------------------------------------------
                            156 	.area RSEG    (DATA)
                    0080    157 _P0_0	=	0x0080
                    0081    158 _P0_1	=	0x0081
                    0082    159 _P0_2	=	0x0082
                    0083    160 _P0_3	=	0x0083
                    0084    161 _P0_4	=	0x0084
                    0085    162 _P0_5	=	0x0085
                    0086    163 _P0_6	=	0x0086
                    0087    164 _P0_7	=	0x0087
                    0090    165 _P1_0	=	0x0090
                    0091    166 _P1_1	=	0x0091
                    0092    167 _P1_2	=	0x0092
                    0093    168 _P1_3	=	0x0093
                    0094    169 _P1_4	=	0x0094
                    0095    170 _P1_5	=	0x0095
                    0096    171 _P1_6	=	0x0096
                    0097    172 _P1_7	=	0x0097
                    00A0    173 _P2_0	=	0x00a0
                    00A1    174 _P2_1	=	0x00a1
                    00A2    175 _P2_2	=	0x00a2
                    00A3    176 _P2_3	=	0x00a3
                    00A4    177 _P2_4	=	0x00a4
                    00A5    178 _P2_5	=	0x00a5
                    00A6    179 _P2_6	=	0x00a6
                    00A7    180 _P2_7	=	0x00a7
                    00B0    181 _P3_0	=	0x00b0
                    00B1    182 _P3_1	=	0x00b1
                    00B2    183 _P3_2	=	0x00b2
                    00B3    184 _P3_3	=	0x00b3
                    00B4    185 _P3_4	=	0x00b4
                    00B5    186 _P3_5	=	0x00b5
                    00B6    187 _P3_6	=	0x00b6
                    00B7    188 _P3_7	=	0x00b7
                    00B0    189 _RXD	=	0x00b0
                    00B1    190 _TXD	=	0x00b1
                    00B2    191 _INT0	=	0x00b2
                    00B3    192 _INT1	=	0x00b3
                    00B4    193 _T0	=	0x00b4
                    00B5    194 _T1	=	0x00b5
                    00B6    195 _WR	=	0x00b6
                    00B7    196 _RD	=	0x00b7
                    0088    197 _IT0	=	0x0088
                    0089    198 _IE0	=	0x0089
                    008A    199 _IT1	=	0x008a
                    008B    200 _IE1	=	0x008b
                    008C    201 _TR0	=	0x008c
                    008D    202 _TF0	=	0x008d
                    008E    203 _TR1	=	0x008e
                    008F    204 _TF1	=	0x008f
                    0098    205 _RI	=	0x0098
                    0099    206 _TI	=	0x0099
                    009A    207 _RB8	=	0x009a
                    009B    208 _TB8	=	0x009b
                    009C    209 _REN	=	0x009c
                    009D    210 _SM2	=	0x009d
                    009E    211 _SM1	=	0x009e
                    009F    212 _SM0	=	0x009f
                    00A8    213 _EX0	=	0x00a8
                    00A9    214 _ET0	=	0x00a9
                    00AA    215 _EX1	=	0x00aa
                    00AB    216 _ET1	=	0x00ab
                    00AC    217 _ES	=	0x00ac
                    00AF    218 _EA	=	0x00af
                    00B8    219 _PX0	=	0x00b8
                    00B9    220 _PT0	=	0x00b9
                    00BA    221 _PX1	=	0x00ba
                    00BB    222 _PT1	=	0x00bb
                    00BC    223 _PS	=	0x00bc
                    00D0    224 _P	=	0x00d0
                    00D1    225 _F1	=	0x00d1
                    00D2    226 _OV	=	0x00d2
                    00D3    227 _RS0	=	0x00d3
                    00D4    228 _RS1	=	0x00d4
                    00D5    229 _F0	=	0x00d5
                    00D6    230 _AC	=	0x00d6
                    00D7    231 _CY	=	0x00d7
                            232 ;--------------------------------------------------------
                            233 ; overlayable register banks
                            234 ;--------------------------------------------------------
                            235 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     236 	.ds 8
                            237 ;--------------------------------------------------------
                            238 ; internal ram data
                            239 ;--------------------------------------------------------
                            240 	.area DSEG    (DATA)
   0008                     241 _lcd_write_PARM_2:
   0008                     242 	.ds 1
   0009                     243 _lcd_shift_PARM_2:
   0009                     244 	.ds 1
   000A                     245 _lcd_position_PARM_2:
   000A                     246 	.ds 1
   000B                     247 _lcd_printsxy_PARM_2:
   000B                     248 	.ds 1
   000C                     249 _lcd_printsxy_PARM_3:
   000C                     250 	.ds 1
   000D                     251 _lcd_printcxy_PARM_2:
   000D                     252 	.ds 1
   000E                     253 _lcd_printcxy_PARM_3:
   000E                     254 	.ds 1
   000F                     255 _lcd_printnxy_PARM_2:
   000F                     256 	.ds 1
   0010                     257 _lcd_printnxy_PARM_3:
   0010                     258 	.ds 1
   0011                     259 _lcd_printnxy_number_1_1:
   0011                     260 	.ds 4
                            261 ;--------------------------------------------------------
                            262 ; overlayable items in internal ram 
                            263 ;--------------------------------------------------------
                            264 	.area OSEG    (OVR,DATA)
                            265 ;--------------------------------------------------------
                            266 ; indirectly addressable internal ram data
                            267 ;--------------------------------------------------------
                            268 	.area ISEG    (DATA)
                            269 ;--------------------------------------------------------
                            270 ; absolute internal ram data
                            271 ;--------------------------------------------------------
                            272 	.area IABS    (ABS,DATA)
                            273 	.area IABS    (ABS,DATA)
                            274 ;--------------------------------------------------------
                            275 ; bit data
                            276 ;--------------------------------------------------------
                            277 	.area BSEG    (BIT)
                            278 ;--------------------------------------------------------
                            279 ; paged external ram data
                            280 ;--------------------------------------------------------
                            281 	.area PSEG    (PAG,XDATA)
                            282 ;--------------------------------------------------------
                            283 ; external ram data
                            284 ;--------------------------------------------------------
                            285 	.area XSEG    (XDATA)
                            286 ;--------------------------------------------------------
                            287 ; absolute external ram data
                            288 ;--------------------------------------------------------
                            289 	.area XABS    (ABS,XDATA)
                            290 ;--------------------------------------------------------
                            291 ; external initialized ram data
                            292 ;--------------------------------------------------------
                            293 	.area XISEG   (XDATA)
                            294 	.area HOME    (CODE)
                            295 	.area GSINIT0 (CODE)
                            296 	.area GSINIT1 (CODE)
                            297 	.area GSINIT2 (CODE)
                            298 	.area GSINIT3 (CODE)
                            299 	.area GSINIT4 (CODE)
                            300 	.area GSINIT5 (CODE)
                            301 	.area GSINIT  (CODE)
                            302 	.area GSFINAL (CODE)
                            303 	.area CSEG    (CODE)
                            304 ;--------------------------------------------------------
                            305 ; global & static initialisations
                            306 ;--------------------------------------------------------
                            307 	.area HOME    (CODE)
                            308 	.area GSINIT  (CODE)
                            309 	.area GSFINAL (CODE)
                            310 	.area GSINIT  (CODE)
                            311 ;--------------------------------------------------------
                            312 ; Home
                            313 ;--------------------------------------------------------
                            314 	.area HOME    (CODE)
                            315 	.area HOME    (CODE)
                            316 ;--------------------------------------------------------
                            317 ; code
                            318 ;--------------------------------------------------------
                            319 	.area CSEG    (CODE)
                            320 ;------------------------------------------------------------
                            321 ;Allocation info for local variables in function 'lcd_wait'
                            322 ;------------------------------------------------------------
                            323 ;------------------------------------------------------------
                            324 ;	lcd.c:26: void lcd_wait(void)
                            325 ;	-----------------------------------------
                            326 ;	 function lcd_wait
                            327 ;	-----------------------------------------
   04F5                     328 _lcd_wait:
                    0002    329 	ar2 = 0x02
                    0003    330 	ar3 = 0x03
                    0004    331 	ar4 = 0x04
                    0005    332 	ar5 = 0x05
                    0006    333 	ar6 = 0x06
                    0007    334 	ar7 = 0x07
                    0000    335 	ar0 = 0x00
                    0001    336 	ar1 = 0x01
                            337 ;	lcd.c:36: while(1){
   04F5                     338 00104$:
                            339 ;	lcd.c:37: LCD_EN=0;
   04F5 C2 A2               340 	clr	_P2_2
                            341 ;	lcd.c:38: LCD_RS=0;
   04F7 C2 A0               342 	clr	_P2_0
                            343 ;	lcd.c:39: LCD_RW=1;
   04F9 D2 A1               344 	setb	_P2_1
                            345 ;	lcd.c:40: LCD_DATA=0xFF;
   04FB 75 80 FF            346 	mov	_P0,#0xFF
                            347 ;	lcd.c:41: LCD_EN=1;
   04FE D2 A2               348 	setb	_P2_2
                            349 ;	lcd.c:42: if(!LCD_BUSY)		break;		//忙完了，不玩了：）
   0500 20 87 F2            350 	jb	_P0_7,00104$
                            351 ;	lcd.c:44: LCD_EN=0;
   0503 C2 A2               352 	clr	_P2_2
                            353 ;	lcd.c:45: return;
   0505 22                  354 	ret
                            355 ;------------------------------------------------------------
                            356 ;Allocation info for local variables in function 'lcd_write'
                            357 ;------------------------------------------------------------
                            358 ;datas                     Allocated with name '_lcd_write_PARM_2'
                            359 ;type                      Allocated to registers r2 
                            360 ;------------------------------------------------------------
                            361 ;	lcd.c:60: void lcd_write(char type, char datas)
                            362 ;	-----------------------------------------
                            363 ;	 function lcd_write
                            364 ;	-----------------------------------------
   0506                     365 _lcd_write:
   0506 AA 82               366 	mov	r2,dpl
                            367 ;	lcd.c:62: lcd_wait();	//等候LCD闲，置于最前面，以防止lcd_wait()对RS和RW造成影响
   0508 C0 02               368 	push	ar2
   050A 12 04 F5            369 	lcall	_lcd_wait
   050D D0 02               370 	pop	ar2
                            371 ;	lcd.c:64: LCD_RS=type;
   050F EA                  372 	mov	a,r2
   0510 24 FF               373 	add	a,#0xff
   0512 92 A0               374 	mov	_P2_0,c
                            375 ;	lcd.c:65: LCD_RW=0;
   0514 C2 A1               376 	clr	_P2_1
                            377 ;	lcd.c:67: LCD_DATA=datas;
   0516 85 08 80            378 	mov	_P0,_lcd_write_PARM_2
                            379 ;	lcd.c:70: LCD_EN=1;
   0519 D2 A2               380 	setb	_P2_2
                            381 ;	lcd.c:71: LCD_EN=0;
   051B C2 A2               382 	clr	_P2_2
   051D 22                  383 	ret
                            384 ;------------------------------------------------------------
                            385 ;Allocation info for local variables in function 'lcd_shift'
                            386 ;------------------------------------------------------------
                            387 ;num                       Allocated with name '_lcd_shift_PARM_2'
                            388 ;object                    Allocated to registers r2 
                            389 ;datas                     Allocated to registers r3 
                            390 ;------------------------------------------------------------
                            391 ;	lcd.c:86: void lcd_shift(char object, char num)
                            392 ;	-----------------------------------------
                            393 ;	 function lcd_shift
                            394 ;	-----------------------------------------
   051E                     395 _lcd_shift:
   051E AA 82               396 	mov	r2,dpl
                            397 ;	lcd.c:88: char datas=0x10;
   0520 7B 10               398 	mov	r3,#0x10
                            399 ;	lcd.c:89: if(object == 'f')	//对象=画面
   0522 BA 66 02            400 	cjne	r2,#0x66,00102$
                            401 ;	lcd.c:90: datas+=0x08;
   0525 7B 18               402 	mov	r3,#0x18
   0527                     403 00102$:
                            404 ;	lcd.c:91: if(num > 0)	//正号右移
   0527 C3                  405 	clr	c
   0528 74 80               406 	mov	a,#(0x00 ^ 0x80)
   052A 85 09 F0            407 	mov	b,_lcd_shift_PARM_2
   052D 63 F0 80            408 	xrl	b,#0x80
   0530 95 F0               409 	subb	a,b
   0532 50 06               410 	jnc	00104$
                            411 ;	lcd.c:92: datas+=0x04;
   0534 EB                  412 	mov	a,r3
   0535 24 04               413 	add	a,#0x04
   0537 FB                  414 	mov	r3,a
   0538 80 06               415 	sjmp	00114$
   053A                     416 00104$:
                            417 ;	lcd.c:94: num=-num;	//负号取相反数，以统一循环变量
   053A C3                  418 	clr	c
   053B E4                  419 	clr	a
   053C 95 09               420 	subb	a,_lcd_shift_PARM_2
   053E F5 09               421 	mov	_lcd_shift_PARM_2,a
                            422 ;	lcd.c:96: while(num){
   0540                     423 00114$:
   0540 AA 09               424 	mov	r2,_lcd_shift_PARM_2
   0542                     425 00106$:
   0542 EA                  426 	mov	a,r2
   0543 60 13               427 	jz	00109$
                            428 ;	lcd.c:97: lcd_write(0,datas);	//一次移动
   0545 8B 08               429 	mov	_lcd_write_PARM_2,r3
   0547 75 82 00            430 	mov	dpl,#0x00
   054A C0 02               431 	push	ar2
   054C C0 03               432 	push	ar3
   054E 12 05 06            433 	lcall	_lcd_write
   0551 D0 03               434 	pop	ar3
   0553 D0 02               435 	pop	ar2
                            436 ;	lcd.c:98: num--;
   0555 1A                  437 	dec	r2
   0556 80 EA               438 	sjmp	00106$
   0558                     439 00109$:
   0558 22                  440 	ret
                            441 ;------------------------------------------------------------
                            442 ;Allocation info for local variables in function 'lcd_position'
                            443 ;------------------------------------------------------------
                            444 ;y                         Allocated with name '_lcd_position_PARM_2'
                            445 ;x                         Allocated to registers r2 
                            446 ;------------------------------------------------------------
                            447 ;	lcd.c:114: void lcd_position(char x,char y)
                            448 ;	-----------------------------------------
                            449 ;	 function lcd_position
                            450 ;	-----------------------------------------
   0559                     451 _lcd_position:
   0559 AA 82               452 	mov	r2,dpl
                            453 ;	lcd.c:120: if(y)	x+=0x40;	//0x40：第二行起始位置偏移量
   055B E5 0A               454 	mov	a,_lcd_position_PARM_2
   055D 60 04               455 	jz	00102$
   055F 74 40               456 	mov	a,#0x40
   0561 2A                  457 	add	a,r2
   0562 FA                  458 	mov	r2,a
   0563                     459 00102$:
                            460 ;	lcd.c:121: lcd_write(0,0x80+x);
   0563 74 80               461 	mov	a,#0x80
   0565 2A                  462 	add	a,r2
   0566 F5 08               463 	mov	_lcd_write_PARM_2,a
   0568 75 82 00            464 	mov	dpl,#0x00
   056B 02 05 06            465 	ljmp	_lcd_write
                            466 ;------------------------------------------------------------
                            467 ;Allocation info for local variables in function 'lcd_cls'
                            468 ;------------------------------------------------------------
                            469 ;------------------------------------------------------------
                            470 ;	lcd.c:132: void lcd_cls(void)
                            471 ;	-----------------------------------------
                            472 ;	 function lcd_cls
                            473 ;	-----------------------------------------
   056E                     474 _lcd_cls:
                            475 ;	lcd.c:134: lcd_write(0,LCD_CMD_CLS);
   056E 75 08 01            476 	mov	_lcd_write_PARM_2,#0x01
   0571 75 82 00            477 	mov	dpl,#0x00
   0574 02 05 06            478 	ljmp	_lcd_write
                            479 ;------------------------------------------------------------
                            480 ;Allocation info for local variables in function 'lcd_prints'
                            481 ;------------------------------------------------------------
                            482 ;string                    Allocated to registers r2 r3 r4 
                            483 ;i                         Allocated to registers r5 
                            484 ;------------------------------------------------------------
                            485 ;	lcd.c:143: void lcd_prints(char *string)
                            486 ;	-----------------------------------------
                            487 ;	 function lcd_prints
                            488 ;	-----------------------------------------
   0577                     489 _lcd_prints:
   0577 AA 82               490 	mov	r2,dpl
   0579 AB 83               491 	mov	r3,dph
   057B AC F0               492 	mov	r4,b
                            493 ;	lcd.c:146: while(string[i]!=0x00){
   057D 7D 00               494 	mov	r5,#0x00
   057F                     495 00101$:
   057F ED                  496 	mov	a,r5
   0580 2A                  497 	add	a,r2
   0581 FE                  498 	mov	r6,a
   0582 E4                  499 	clr	a
   0583 3B                  500 	addc	a,r3
   0584 FF                  501 	mov	r7,a
   0585 8C 00               502 	mov	ar0,r4
   0587 8E 82               503 	mov	dpl,r6
   0589 8F 83               504 	mov	dph,r7
   058B 88 F0               505 	mov	b,r0
   058D 12 08 EB            506 	lcall	__gptrget
   0590 FE                  507 	mov	r6,a
   0591 60 1B               508 	jz	00104$
                            509 ;	lcd.c:147: lcd_write(1,string[i]);
   0593 8E 08               510 	mov	_lcd_write_PARM_2,r6
   0595 75 82 01            511 	mov	dpl,#0x01
   0598 C0 02               512 	push	ar2
   059A C0 03               513 	push	ar3
   059C C0 04               514 	push	ar4
   059E C0 05               515 	push	ar5
   05A0 12 05 06            516 	lcall	_lcd_write
   05A3 D0 05               517 	pop	ar5
   05A5 D0 04               518 	pop	ar4
   05A7 D0 03               519 	pop	ar3
   05A9 D0 02               520 	pop	ar2
                            521 ;	lcd.c:148: i++;
   05AB 0D                  522 	inc	r5
   05AC 80 D1               523 	sjmp	00101$
   05AE                     524 00104$:
   05AE 22                  525 	ret
                            526 ;------------------------------------------------------------
                            527 ;Allocation info for local variables in function 'lcd_printsxy'
                            528 ;------------------------------------------------------------
                            529 ;x                         Allocated with name '_lcd_printsxy_PARM_2'
                            530 ;y                         Allocated with name '_lcd_printsxy_PARM_3'
                            531 ;string                    Allocated to registers r2 r3 r4 
                            532 ;i                         Allocated to registers r5 
                            533 ;------------------------------------------------------------
                            534 ;	lcd.c:158: void lcd_printsxy(char *string, char x, char y)
                            535 ;	-----------------------------------------
                            536 ;	 function lcd_printsxy
                            537 ;	-----------------------------------------
   05AF                     538 _lcd_printsxy:
   05AF AA 82               539 	mov	r2,dpl
   05B1 AB 83               540 	mov	r3,dph
   05B3 AC F0               541 	mov	r4,b
                            542 ;	lcd.c:161: lcd_position(x,y);	//先定位
   05B5 85 0C 0A            543 	mov	_lcd_position_PARM_2,_lcd_printsxy_PARM_3
   05B8 85 0B 82            544 	mov	dpl,_lcd_printsxy_PARM_2
   05BB C0 02               545 	push	ar2
   05BD C0 03               546 	push	ar3
   05BF C0 04               547 	push	ar4
   05C1 12 05 59            548 	lcall	_lcd_position
   05C4 D0 04               549 	pop	ar4
   05C6 D0 03               550 	pop	ar3
   05C8 D0 02               551 	pop	ar2
                            552 ;	lcd.c:162: while(string[i]!=0x00){
   05CA 7D 00               553 	mov	r5,#0x00
   05CC                     554 00101$:
   05CC ED                  555 	mov	a,r5
   05CD 2A                  556 	add	a,r2
   05CE FE                  557 	mov	r6,a
   05CF E4                  558 	clr	a
   05D0 3B                  559 	addc	a,r3
   05D1 FF                  560 	mov	r7,a
   05D2 8C 00               561 	mov	ar0,r4
   05D4 8E 82               562 	mov	dpl,r6
   05D6 8F 83               563 	mov	dph,r7
   05D8 88 F0               564 	mov	b,r0
   05DA 12 08 EB            565 	lcall	__gptrget
   05DD FE                  566 	mov	r6,a
   05DE 60 1B               567 	jz	00104$
                            568 ;	lcd.c:163: lcd_write(1,string[i]);
   05E0 8E 08               569 	mov	_lcd_write_PARM_2,r6
   05E2 75 82 01            570 	mov	dpl,#0x01
   05E5 C0 02               571 	push	ar2
   05E7 C0 03               572 	push	ar3
   05E9 C0 04               573 	push	ar4
   05EB C0 05               574 	push	ar5
   05ED 12 05 06            575 	lcall	_lcd_write
   05F0 D0 05               576 	pop	ar5
   05F2 D0 04               577 	pop	ar4
   05F4 D0 03               578 	pop	ar3
   05F6 D0 02               579 	pop	ar2
                            580 ;	lcd.c:164: i++;
   05F8 0D                  581 	inc	r5
   05F9 80 D1               582 	sjmp	00101$
   05FB                     583 00104$:
   05FB 22                  584 	ret
                            585 ;------------------------------------------------------------
                            586 ;Allocation info for local variables in function 'lcd_printc'
                            587 ;------------------------------------------------------------
                            588 ;charactor                 Allocated to registers 
                            589 ;------------------------------------------------------------
                            590 ;	lcd.c:173: void lcd_printc(char charactor)
                            591 ;	-----------------------------------------
                            592 ;	 function lcd_printc
                            593 ;	-----------------------------------------
   05FC                     594 _lcd_printc:
   05FC 85 82 08            595 	mov	_lcd_write_PARM_2,dpl
                            596 ;	lcd.c:175: return lcd_write(1,charactor);
   05FF 75 82 01            597 	mov	dpl,#0x01
   0602 02 05 06            598 	ljmp	_lcd_write
                            599 ;------------------------------------------------------------
                            600 ;Allocation info for local variables in function 'lcd_printcxy'
                            601 ;------------------------------------------------------------
                            602 ;x                         Allocated with name '_lcd_printcxy_PARM_2'
                            603 ;y                         Allocated with name '_lcd_printcxy_PARM_3'
                            604 ;charactor                 Allocated to registers r2 
                            605 ;------------------------------------------------------------
                            606 ;	lcd.c:183: void lcd_printcxy(char charactor, char x, char y)
                            607 ;	-----------------------------------------
                            608 ;	 function lcd_printcxy
                            609 ;	-----------------------------------------
   0605                     610 _lcd_printcxy:
   0605 AA 82               611 	mov	r2,dpl
                            612 ;	lcd.c:185: lcd_position(x,y);
   0607 85 0E 0A            613 	mov	_lcd_position_PARM_2,_lcd_printcxy_PARM_3
   060A 85 0D 82            614 	mov	dpl,_lcd_printcxy_PARM_2
   060D C0 02               615 	push	ar2
   060F 12 05 59            616 	lcall	_lcd_position
   0612 D0 02               617 	pop	ar2
                            618 ;	lcd.c:186: lcd_write(1,charactor);
   0614 8A 08               619 	mov	_lcd_write_PARM_2,r2
   0616 75 82 01            620 	mov	dpl,#0x01
   0619 02 05 06            621 	ljmp	_lcd_write
                            622 ;------------------------------------------------------------
                            623 ;Allocation info for local variables in function 'lcd_printnxy'
                            624 ;------------------------------------------------------------
                            625 ;x                         Allocated with name '_lcd_printnxy_PARM_2'
                            626 ;y                         Allocated with name '_lcd_printnxy_PARM_3'
                            627 ;number                    Allocated with name '_lcd_printnxy_number_1_1'
                            628 ;x_tmp                     Allocated to registers r6 
                            629 ;------------------------------------------------------------
                            630 ;	lcd.c:194: void lcd_printnxy(long int number, char x, char y)
                            631 ;	-----------------------------------------
                            632 ;	 function lcd_printnxy
                            633 ;	-----------------------------------------
   061C                     634 _lcd_printnxy:
   061C 85 82 11            635 	mov	_lcd_printnxy_number_1_1,dpl
   061F 85 83 12            636 	mov	(_lcd_printnxy_number_1_1 + 1),dph
   0622 85 F0 13            637 	mov	(_lcd_printnxy_number_1_1 + 2),b
   0625 F5 14               638 	mov	(_lcd_printnxy_number_1_1 + 3),a
                            639 ;	lcd.c:196: char x_tmp=x;
   0627 AE 0F               640 	mov	r6,_lcd_printnxy_PARM_2
                            641 ;	lcd.c:197: while(1){
   0629                     642 00104$:
                            643 ;	lcd.c:198: lcd_position(x_tmp,y);	//先输出，为0也输出0
   0629 85 10 0A            644 	mov	_lcd_position_PARM_2,_lcd_printnxy_PARM_3
   062C 8E 82               645 	mov	dpl,r6
   062E C0 06               646 	push	ar6
   0630 12 05 59            647 	lcall	_lcd_position
                            648 ;	lcd.c:199: lcd_write(1,number%10+48);
   0633 75 57 0A            649 	mov	__modslong_PARM_2,#0x0A
   0636 E4                  650 	clr	a
   0637 F5 58               651 	mov	(__modslong_PARM_2 + 1),a
   0639 F5 59               652 	mov	(__modslong_PARM_2 + 2),a
   063B F5 5A               653 	mov	(__modslong_PARM_2 + 3),a
   063D 85 11 82            654 	mov	dpl,_lcd_printnxy_number_1_1
   0640 85 12 83            655 	mov	dph,(_lcd_printnxy_number_1_1 + 1)
   0643 85 13 F0            656 	mov	b,(_lcd_printnxy_number_1_1 + 2)
   0646 E5 14               657 	mov	a,(_lcd_printnxy_number_1_1 + 3)
   0648 12 08 4A            658 	lcall	__modslong
   064B AF 82               659 	mov	r7,dpl
   064D 74 30               660 	mov	a,#0x30
   064F 2F                  661 	add	a,r7
   0650 F5 08               662 	mov	_lcd_write_PARM_2,a
   0652 75 82 01            663 	mov	dpl,#0x01
   0655 12 05 06            664 	lcall	_lcd_write
   0658 D0 06               665 	pop	ar6
                            666 ;	lcd.c:200: x_tmp--;	//退一位
   065A 1E                  667 	dec	r6
                            668 ;	lcd.c:201: number/=10;
   065B 75 57 0A            669 	mov	__divslong_PARM_2,#0x0A
   065E E4                  670 	clr	a
   065F F5 58               671 	mov	(__divslong_PARM_2 + 1),a
   0661 F5 59               672 	mov	(__divslong_PARM_2 + 2),a
   0663 F5 5A               673 	mov	(__divslong_PARM_2 + 3),a
   0665 85 11 82            674 	mov	dpl,_lcd_printnxy_number_1_1
   0668 85 12 83            675 	mov	dph,(_lcd_printnxy_number_1_1 + 1)
   066B 85 13 F0            676 	mov	b,(_lcd_printnxy_number_1_1 + 2)
   066E E5 14               677 	mov	a,(_lcd_printnxy_number_1_1 + 3)
   0670 C0 06               678 	push	ar6
   0672 12 08 99            679 	lcall	__divslong
   0675 85 82 11            680 	mov	_lcd_printnxy_number_1_1,dpl
   0678 85 83 12            681 	mov	(_lcd_printnxy_number_1_1 + 1),dph
   067B 85 F0 13            682 	mov	(_lcd_printnxy_number_1_1 + 2),b
   067E F5 14               683 	mov	(_lcd_printnxy_number_1_1 + 3),a
   0680 D0 06               684 	pop	ar6
                            685 ;	lcd.c:202: if(0==number)	break;	//为0则停
   0682 E5 11               686 	mov	a,_lcd_printnxy_number_1_1
   0684 70 0C               687 	jnz	00111$
   0686 E5 12               688 	mov	a,(_lcd_printnxy_number_1_1 + 1)
   0688 70 08               689 	jnz	00111$
   068A E5 13               690 	mov	a,(_lcd_printnxy_number_1_1 + 2)
   068C 70 04               691 	jnz	00111$
   068E E5 14               692 	mov	a,(_lcd_printnxy_number_1_1 + 3)
   0690 60 02               693 	jz	00112$
   0692                     694 00111$:
   0692 80 95               695 	sjmp	00104$
   0694                     696 00112$:
                            697 ;	lcd.c:204: lcd_position(++x,y);	//光标复位
   0694 05 0F               698 	inc	_lcd_printnxy_PARM_2
   0696 85 10 0A            699 	mov	_lcd_position_PARM_2,_lcd_printnxy_PARM_3
   0699 85 0F 82            700 	mov	dpl,_lcd_printnxy_PARM_2
   069C 02 05 59            701 	ljmp	_lcd_position
                            702 ;------------------------------------------------------------
                            703 ;Allocation info for local variables in function 'lcd_init'
                            704 ;------------------------------------------------------------
                            705 ;------------------------------------------------------------
                            706 ;	lcd.c:212: void lcd_init(void)
                            707 ;	-----------------------------------------
                            708 ;	 function lcd_init
                            709 ;	-----------------------------------------
   069F                     710 _lcd_init:
                            711 ;	lcd.c:217: lcd_write(0,0x3c);		//两行5*10点阵，8位数据接口
   069F 75 08 3C            712 	mov	_lcd_write_PARM_2,#0x3C
   06A2 75 82 00            713 	mov	dpl,#0x00
   06A5 12 05 06            714 	lcall	_lcd_write
                            715 ;	lcd.c:222: lcd_write(0,0x06); //读写后画面固定、AC自增
   06A8 75 08 06            716 	mov	_lcd_write_PARM_2,#0x06
   06AB 75 82 00            717 	mov	dpl,#0x00
   06AE 12 05 06            718 	lcall	_lcd_write
                            719 ;	lcd.c:227: lcd_write(0,0x0f);	//屏幕、光标和闪烁全开
   06B1 75 08 0F            720 	mov	_lcd_write_PARM_2,#0x0F
   06B4 75 82 00            721 	mov	dpl,#0x00
   06B7 12 05 06            722 	lcall	_lcd_write
                            723 ;	lcd.c:229: lcd_cls();
   06BA 12 05 6E            724 	lcall	_lcd_cls
                            725 ;	lcd.c:230: lcd_write(0,LCD_CMD_HOME);	//LCD归位（清DDRAM、DDROM、AC，清除所有移动）
   06BD 75 08 02            726 	mov	_lcd_write_PARM_2,#0x02
   06C0 75 82 00            727 	mov	dpl,#0x00
   06C3 12 05 06            728 	lcall	_lcd_write
                            729 ;	lcd.c:231: lcd_printcxy('A',1,1);lcd_printsxy("China U",0,0);
   06C6 75 0D 01            730 	mov	_lcd_printcxy_PARM_2,#0x01
   06C9 75 0E 01            731 	mov	_lcd_printcxy_PARM_3,#0x01
   06CC 75 82 41            732 	mov	dpl,#0x41
   06CF 12 06 05            733 	lcall	_lcd_printcxy
   06D2 75 0B 00            734 	mov	_lcd_printsxy_PARM_2,#0x00
   06D5 75 0C 00            735 	mov	_lcd_printsxy_PARM_3,#0x00
   06D8 90 09 C6            736 	mov	dptr,#__str_0
   06DB 75 F0 80            737 	mov	b,#0x80
   06DE 12 05 AF            738 	lcall	_lcd_printsxy
                            739 ;	lcd.c:232: lcd_printnxy(1234567890,13,1);
   06E1 75 0F 0D            740 	mov	_lcd_printnxy_PARM_2,#0x0D
   06E4 75 10 01            741 	mov	_lcd_printnxy_PARM_3,#0x01
   06E7 90 02 D2            742 	mov	dptr,#0x02D2
   06EA 75 F0 96            743 	mov	b,#0x96
   06ED 74 49               744 	mov	a,#0x49
   06EF 12 06 1C            745 	lcall	_lcd_printnxy
                            746 ;	lcd.c:233: while(1);
   06F2                     747 00102$:
   06F2 80 FE               748 	sjmp	00102$
                            749 	.area CSEG    (CODE)
                            750 	.area CONST   (CODE)
   09C6                     751 __str_0:
   09C6 43 68 69 6E 61 20   752 	.ascii "China U"
        55
   09CD 00                  753 	.db 0x00
                            754 	.area XINIT   (CODE)
                            755 	.area CABS    (ABS,CODE)
