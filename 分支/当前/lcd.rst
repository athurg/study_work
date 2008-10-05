                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
                              4 ; This file was generated Wed Oct  1 10:36:47 2008
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
   051C                     328 _lcd_wait:
                    0002    329 	ar2 = 0x02
                    0003    330 	ar3 = 0x03
                    0004    331 	ar4 = 0x04
                    0005    332 	ar5 = 0x05
                    0006    333 	ar6 = 0x06
                    0007    334 	ar7 = 0x07
                    0000    335 	ar0 = 0x00
                    0001    336 	ar1 = 0x01
                            337 ;	lcd.c:36: while(1){
   051C                     338 00104$:
                            339 ;	lcd.c:37: LCD_EN=0;
   051C C2 A2               340 	clr	_P2_2
                            341 ;	lcd.c:38: LCD_RS=0;
   051E C2 A0               342 	clr	_P2_0
                            343 ;	lcd.c:39: LCD_RW=1;
   0520 D2 A1               344 	setb	_P2_1
                            345 ;	lcd.c:40: LCD_DATA=0xFF;
   0522 75 80 FF            346 	mov	_P0,#0xFF
                            347 ;	lcd.c:41: LCD_EN=1;
   0525 D2 A2               348 	setb	_P2_2
                            349 ;	lcd.c:42: if(!LCD_BUSY)		break;		//忙完了，不玩了：）
   0527 20 87 F2            350 	jb	_P0_7,00104$
                            351 ;	lcd.c:44: LCD_EN=0;
   052A C2 A2               352 	clr	_P2_2
                            353 ;	lcd.c:45: return;
   052C 22                  354 	ret
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
   052D                     365 _lcd_write:
   052D AA 82               366 	mov	r2,dpl
                            367 ;	lcd.c:62: lcd_wait();	//等候LCD闲，置于最前面，以防止lcd_wait()对RS和RW造成影响
   052F C0 02               368 	push	ar2
   0531 12 05 1C            369 	lcall	_lcd_wait
   0534 D0 02               370 	pop	ar2
                            371 ;	lcd.c:64: LCD_RS=type;
   0536 EA                  372 	mov	a,r2
   0537 24 FF               373 	add	a,#0xff
   0539 92 A0               374 	mov	_P2_0,c
                            375 ;	lcd.c:65: LCD_RW=0;
   053B C2 A1               376 	clr	_P2_1
                            377 ;	lcd.c:67: LCD_DATA=datas;
   053D 85 08 80            378 	mov	_P0,_lcd_write_PARM_2
                            379 ;	lcd.c:70: LCD_EN=1;
   0540 D2 A2               380 	setb	_P2_2
                            381 ;	lcd.c:71: LCD_EN=0;
   0542 C2 A2               382 	clr	_P2_2
   0544 22                  383 	ret
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
   0545                     395 _lcd_shift:
   0545 AA 82               396 	mov	r2,dpl
                            397 ;	lcd.c:88: char datas=0x10;
   0547 7B 10               398 	mov	r3,#0x10
                            399 ;	lcd.c:89: if(object == 'f')	//对象=画面
   0549 BA 66 02            400 	cjne	r2,#0x66,00102$
                            401 ;	lcd.c:90: datas+=0x08;
   054C 7B 18               402 	mov	r3,#0x18
   054E                     403 00102$:
                            404 ;	lcd.c:91: if(num > 0)	//正号右移
   054E C3                  405 	clr	c
   054F 74 80               406 	mov	a,#(0x00 ^ 0x80)
   0551 85 09 F0            407 	mov	b,_lcd_shift_PARM_2
   0554 63 F0 80            408 	xrl	b,#0x80
   0557 95 F0               409 	subb	a,b
   0559 50 06               410 	jnc	00104$
                            411 ;	lcd.c:92: datas+=0x04;
   055B EB                  412 	mov	a,r3
   055C 24 04               413 	add	a,#0x04
   055E FB                  414 	mov	r3,a
   055F 80 06               415 	sjmp	00114$
   0561                     416 00104$:
                            417 ;	lcd.c:94: num=-num;	//负号取相反数，以统一循环变量
   0561 C3                  418 	clr	c
   0562 E4                  419 	clr	a
   0563 95 09               420 	subb	a,_lcd_shift_PARM_2
   0565 F5 09               421 	mov	_lcd_shift_PARM_2,a
                            422 ;	lcd.c:96: while(num){
   0567                     423 00114$:
   0567 AA 09               424 	mov	r2,_lcd_shift_PARM_2
   0569                     425 00106$:
   0569 EA                  426 	mov	a,r2
   056A 60 13               427 	jz	00109$
                            428 ;	lcd.c:97: lcd_write(0,datas);	//一次移动
   056C 8B 08               429 	mov	_lcd_write_PARM_2,r3
   056E 75 82 00            430 	mov	dpl,#0x00
   0571 C0 02               431 	push	ar2
   0573 C0 03               432 	push	ar3
   0575 12 05 2D            433 	lcall	_lcd_write
   0578 D0 03               434 	pop	ar3
   057A D0 02               435 	pop	ar2
                            436 ;	lcd.c:98: num--;
   057C 1A                  437 	dec	r2
   057D 80 EA               438 	sjmp	00106$
   057F                     439 00109$:
   057F 22                  440 	ret
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
   0580                     451 _lcd_position:
   0580 AA 82               452 	mov	r2,dpl
                            453 ;	lcd.c:120: if(y)	x+=0x40;	//0x40：第二行起始位置偏移量
   0582 E5 0A               454 	mov	a,_lcd_position_PARM_2
   0584 60 04               455 	jz	00102$
   0586 74 40               456 	mov	a,#0x40
   0588 2A                  457 	add	a,r2
   0589 FA                  458 	mov	r2,a
   058A                     459 00102$:
                            460 ;	lcd.c:121: lcd_write(0,0x80+x);
   058A 74 80               461 	mov	a,#0x80
   058C 2A                  462 	add	a,r2
   058D F5 08               463 	mov	_lcd_write_PARM_2,a
   058F 75 82 00            464 	mov	dpl,#0x00
   0592 02 05 2D            465 	ljmp	_lcd_write
                            466 ;------------------------------------------------------------
                            467 ;Allocation info for local variables in function 'lcd_cls'
                            468 ;------------------------------------------------------------
                            469 ;------------------------------------------------------------
                            470 ;	lcd.c:132: void lcd_cls(void)
                            471 ;	-----------------------------------------
                            472 ;	 function lcd_cls
                            473 ;	-----------------------------------------
   0595                     474 _lcd_cls:
                            475 ;	lcd.c:134: lcd_write(0,LCD_CMD_CLS);
   0595 75 08 01            476 	mov	_lcd_write_PARM_2,#0x01
   0598 75 82 00            477 	mov	dpl,#0x00
   059B 02 05 2D            478 	ljmp	_lcd_write
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
   059E                     489 _lcd_prints:
   059E AA 82               490 	mov	r2,dpl
   05A0 AB 83               491 	mov	r3,dph
   05A2 AC F0               492 	mov	r4,b
                            493 ;	lcd.c:146: while(string[i]!=0x00){
   05A4 7D 00               494 	mov	r5,#0x00
   05A6                     495 00101$:
   05A6 ED                  496 	mov	a,r5
   05A7 2A                  497 	add	a,r2
   05A8 FE                  498 	mov	r6,a
   05A9 E4                  499 	clr	a
   05AA 3B                  500 	addc	a,r3
   05AB FF                  501 	mov	r7,a
   05AC 8C 00               502 	mov	ar0,r4
   05AE 8E 82               503 	mov	dpl,r6
   05B0 8F 83               504 	mov	dph,r7
   05B2 88 F0               505 	mov	b,r0
   05B4 12 08 E4            506 	lcall	__gptrget
   05B7 FE                  507 	mov	r6,a
   05B8 60 1B               508 	jz	00104$
                            509 ;	lcd.c:147: lcd_write(1,string[i]);
   05BA 8E 08               510 	mov	_lcd_write_PARM_2,r6
   05BC 75 82 01            511 	mov	dpl,#0x01
   05BF C0 02               512 	push	ar2
   05C1 C0 03               513 	push	ar3
   05C3 C0 04               514 	push	ar4
   05C5 C0 05               515 	push	ar5
   05C7 12 05 2D            516 	lcall	_lcd_write
   05CA D0 05               517 	pop	ar5
   05CC D0 04               518 	pop	ar4
   05CE D0 03               519 	pop	ar3
   05D0 D0 02               520 	pop	ar2
                            521 ;	lcd.c:148: i++;
   05D2 0D                  522 	inc	r5
   05D3 80 D1               523 	sjmp	00101$
   05D5                     524 00104$:
   05D5 22                  525 	ret
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
   05D6                     538 _lcd_printsxy:
   05D6 AA 82               539 	mov	r2,dpl
   05D8 AB 83               540 	mov	r3,dph
   05DA AC F0               541 	mov	r4,b
                            542 ;	lcd.c:161: lcd_position(x,y);	//先定位
   05DC 85 0C 0A            543 	mov	_lcd_position_PARM_2,_lcd_printsxy_PARM_3
   05DF 85 0B 82            544 	mov	dpl,_lcd_printsxy_PARM_2
   05E2 C0 02               545 	push	ar2
   05E4 C0 03               546 	push	ar3
   05E6 C0 04               547 	push	ar4
   05E8 12 05 80            548 	lcall	_lcd_position
   05EB D0 04               549 	pop	ar4
   05ED D0 03               550 	pop	ar3
   05EF D0 02               551 	pop	ar2
                            552 ;	lcd.c:162: while(string[i]!=0x00){
   05F1 7D 00               553 	mov	r5,#0x00
   05F3                     554 00101$:
   05F3 ED                  555 	mov	a,r5
   05F4 2A                  556 	add	a,r2
   05F5 FE                  557 	mov	r6,a
   05F6 E4                  558 	clr	a
   05F7 3B                  559 	addc	a,r3
   05F8 FF                  560 	mov	r7,a
   05F9 8C 00               561 	mov	ar0,r4
   05FB 8E 82               562 	mov	dpl,r6
   05FD 8F 83               563 	mov	dph,r7
   05FF 88 F0               564 	mov	b,r0
   0601 12 08 E4            565 	lcall	__gptrget
   0604 FE                  566 	mov	r6,a
   0605 60 1B               567 	jz	00104$
                            568 ;	lcd.c:163: lcd_write(1,string[i]);
   0607 8E 08               569 	mov	_lcd_write_PARM_2,r6
   0609 75 82 01            570 	mov	dpl,#0x01
   060C C0 02               571 	push	ar2
   060E C0 03               572 	push	ar3
   0610 C0 04               573 	push	ar4
   0612 C0 05               574 	push	ar5
   0614 12 05 2D            575 	lcall	_lcd_write
   0617 D0 05               576 	pop	ar5
   0619 D0 04               577 	pop	ar4
   061B D0 03               578 	pop	ar3
   061D D0 02               579 	pop	ar2
                            580 ;	lcd.c:164: i++;
   061F 0D                  581 	inc	r5
   0620 80 D1               582 	sjmp	00101$
   0622                     583 00104$:
   0622 22                  584 	ret
                            585 ;------------------------------------------------------------
                            586 ;Allocation info for local variables in function 'lcd_printc'
                            587 ;------------------------------------------------------------
                            588 ;charactor                 Allocated to registers 
                            589 ;------------------------------------------------------------
                            590 ;	lcd.c:173: void lcd_printc(char charactor)
                            591 ;	-----------------------------------------
                            592 ;	 function lcd_printc
                            593 ;	-----------------------------------------
   0623                     594 _lcd_printc:
   0623 85 82 08            595 	mov	_lcd_write_PARM_2,dpl
                            596 ;	lcd.c:175: return lcd_write(1,charactor);
   0626 75 82 01            597 	mov	dpl,#0x01
   0629 02 05 2D            598 	ljmp	_lcd_write
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
   062C                     610 _lcd_printcxy:
   062C AA 82               611 	mov	r2,dpl
                            612 ;	lcd.c:185: lcd_position(x,y);
   062E 85 0E 0A            613 	mov	_lcd_position_PARM_2,_lcd_printcxy_PARM_3
   0631 85 0D 82            614 	mov	dpl,_lcd_printcxy_PARM_2
   0634 C0 02               615 	push	ar2
   0636 12 05 80            616 	lcall	_lcd_position
   0639 D0 02               617 	pop	ar2
                            618 ;	lcd.c:186: lcd_write(1,charactor);
   063B 8A 08               619 	mov	_lcd_write_PARM_2,r2
   063D 75 82 01            620 	mov	dpl,#0x01
   0640 02 05 2D            621 	ljmp	_lcd_write
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
   0643                     634 _lcd_printnxy:
   0643 85 82 11            635 	mov	_lcd_printnxy_number_1_1,dpl
   0646 85 83 12            636 	mov	(_lcd_printnxy_number_1_1 + 1),dph
   0649 85 F0 13            637 	mov	(_lcd_printnxy_number_1_1 + 2),b
   064C F5 14               638 	mov	(_lcd_printnxy_number_1_1 + 3),a
                            639 ;	lcd.c:196: char x_tmp=x;
   064E AE 0F               640 	mov	r6,_lcd_printnxy_PARM_2
                            641 ;	lcd.c:197: while(1){
   0650                     642 00104$:
                            643 ;	lcd.c:198: lcd_position(x_tmp,y);	//先输出，为0也输出0
   0650 85 10 0A            644 	mov	_lcd_position_PARM_2,_lcd_printnxy_PARM_3
   0653 8E 82               645 	mov	dpl,r6
   0655 C0 06               646 	push	ar6
   0657 12 05 80            647 	lcall	_lcd_position
                            648 ;	lcd.c:199: lcd_write(1,number%10+48);
   065A 75 59 0A            649 	mov	__modslong_PARM_2,#0x0A
   065D E4                  650 	clr	a
   065E F5 5A               651 	mov	(__modslong_PARM_2 + 1),a
   0660 F5 5B               652 	mov	(__modslong_PARM_2 + 2),a
   0662 F5 5C               653 	mov	(__modslong_PARM_2 + 3),a
   0664 85 11 82            654 	mov	dpl,_lcd_printnxy_number_1_1
   0667 85 12 83            655 	mov	dph,(_lcd_printnxy_number_1_1 + 1)
   066A 85 13 F0            656 	mov	b,(_lcd_printnxy_number_1_1 + 2)
   066D E5 14               657 	mov	a,(_lcd_printnxy_number_1_1 + 3)
   066F 12 08 43            658 	lcall	__modslong
   0672 AF 82               659 	mov	r7,dpl
   0674 74 30               660 	mov	a,#0x30
   0676 2F                  661 	add	a,r7
   0677 F5 08               662 	mov	_lcd_write_PARM_2,a
   0679 75 82 01            663 	mov	dpl,#0x01
   067C 12 05 2D            664 	lcall	_lcd_write
   067F D0 06               665 	pop	ar6
                            666 ;	lcd.c:200: x_tmp--;	//退一位
   0681 1E                  667 	dec	r6
                            668 ;	lcd.c:201: number/=10;
   0682 75 59 0A            669 	mov	__divslong_PARM_2,#0x0A
   0685 E4                  670 	clr	a
   0686 F5 5A               671 	mov	(__divslong_PARM_2 + 1),a
   0688 F5 5B               672 	mov	(__divslong_PARM_2 + 2),a
   068A F5 5C               673 	mov	(__divslong_PARM_2 + 3),a
   068C 85 11 82            674 	mov	dpl,_lcd_printnxy_number_1_1
   068F 85 12 83            675 	mov	dph,(_lcd_printnxy_number_1_1 + 1)
   0692 85 13 F0            676 	mov	b,(_lcd_printnxy_number_1_1 + 2)
   0695 E5 14               677 	mov	a,(_lcd_printnxy_number_1_1 + 3)
   0697 C0 06               678 	push	ar6
   0699 12 08 92            679 	lcall	__divslong
   069C 85 82 11            680 	mov	_lcd_printnxy_number_1_1,dpl
   069F 85 83 12            681 	mov	(_lcd_printnxy_number_1_1 + 1),dph
   06A2 85 F0 13            682 	mov	(_lcd_printnxy_number_1_1 + 2),b
   06A5 F5 14               683 	mov	(_lcd_printnxy_number_1_1 + 3),a
   06A7 D0 06               684 	pop	ar6
                            685 ;	lcd.c:202: if(0==number)	break;	//为0则停
   06A9 E5 11               686 	mov	a,_lcd_printnxy_number_1_1
   06AB 70 0C               687 	jnz	00111$
   06AD E5 12               688 	mov	a,(_lcd_printnxy_number_1_1 + 1)
   06AF 70 08               689 	jnz	00111$
   06B1 E5 13               690 	mov	a,(_lcd_printnxy_number_1_1 + 2)
   06B3 70 04               691 	jnz	00111$
   06B5 E5 14               692 	mov	a,(_lcd_printnxy_number_1_1 + 3)
   06B7 60 02               693 	jz	00112$
   06B9                     694 00111$:
   06B9 80 95               695 	sjmp	00104$
   06BB                     696 00112$:
                            697 ;	lcd.c:204: lcd_position(++x,y);	//光标复位
   06BB 05 0F               698 	inc	_lcd_printnxy_PARM_2
   06BD 85 10 0A            699 	mov	_lcd_position_PARM_2,_lcd_printnxy_PARM_3
   06C0 85 0F 82            700 	mov	dpl,_lcd_printnxy_PARM_2
   06C3 02 05 80            701 	ljmp	_lcd_position
                            702 ;------------------------------------------------------------
                            703 ;Allocation info for local variables in function 'lcd_init'
                            704 ;------------------------------------------------------------
                            705 ;------------------------------------------------------------
                            706 ;	lcd.c:212: void lcd_init(void)
                            707 ;	-----------------------------------------
                            708 ;	 function lcd_init
                            709 ;	-----------------------------------------
   06C6                     710 _lcd_init:
                            711 ;	lcd.c:217: lcd_write(0,0x3c);		//两行5*10点阵，8位数据接口
   06C6 75 08 3C            712 	mov	_lcd_write_PARM_2,#0x3C
   06C9 75 82 00            713 	mov	dpl,#0x00
   06CC 12 05 2D            714 	lcall	_lcd_write
                            715 ;	lcd.c:222: lcd_write(0,0x06); //读写后画面固定、AC自增
   06CF 75 08 06            716 	mov	_lcd_write_PARM_2,#0x06
   06D2 75 82 00            717 	mov	dpl,#0x00
   06D5 12 05 2D            718 	lcall	_lcd_write
                            719 ;	lcd.c:227: lcd_write(0,0x0f);	//屏幕、光标和闪烁全开
   06D8 75 08 0F            720 	mov	_lcd_write_PARM_2,#0x0F
   06DB 75 82 00            721 	mov	dpl,#0x00
   06DE 12 05 2D            722 	lcall	_lcd_write
                            723 ;	lcd.c:229: lcd_cls();
   06E1 12 05 95            724 	lcall	_lcd_cls
                            725 ;	lcd.c:230: lcd_write(0,LCD_CMD_HOME);	//LCD归位（清DDRAM、DDROM、AC，清除所有移动）
   06E4 75 08 02            726 	mov	_lcd_write_PARM_2,#0x02
   06E7 75 82 00            727 	mov	dpl,#0x00
   06EA 02 05 2D            728 	ljmp	_lcd_write
                            729 	.area CSEG    (CODE)
                            730 	.area CONST   (CODE)
                            731 	.area XINIT   (CODE)
                            732 	.area CABS    (ABS,CODE)
