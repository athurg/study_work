                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
                              4 ; This file was generated Mon Aug  4 20:37:20 2008
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
                             25 	.globl _RD
                             26 	.globl _WR
                             27 	.globl _T1
                             28 	.globl _T0
                             29 	.globl _INT1
                             30 	.globl _INT0
                             31 	.globl _TXD
                             32 	.globl _RXD
                             33 	.globl _P3_7
                             34 	.globl _P3_6
                             35 	.globl _P3_5
                             36 	.globl _P3_4
                             37 	.globl _P3_3
                             38 	.globl _P3_2
                             39 	.globl _P3_1
                             40 	.globl _P3_0
                             41 	.globl _EA
                             42 	.globl _ES
                             43 	.globl _ET1
                             44 	.globl _EX1
                             45 	.globl _ET0
                             46 	.globl _EX0
                             47 	.globl _P2_7
                             48 	.globl _P2_6
                             49 	.globl _P2_5
                             50 	.globl _P2_4
                             51 	.globl _P2_3
                             52 	.globl _P2_2
                             53 	.globl _P2_1
                             54 	.globl _P2_0
                             55 	.globl _SM0
                             56 	.globl _SM1
                             57 	.globl _SM2
                             58 	.globl _REN
                             59 	.globl _TB8
                             60 	.globl _RB8
                             61 	.globl _TI
                             62 	.globl _RI
                             63 	.globl _P1_7
                             64 	.globl _P1_6
                             65 	.globl _P1_5
                             66 	.globl _P1_4
                             67 	.globl _P1_3
                             68 	.globl _P1_2
                             69 	.globl _P1_1
                             70 	.globl _P1_0
                             71 	.globl _TF1
                             72 	.globl _TR1
                             73 	.globl _TF0
                             74 	.globl _TR0
                             75 	.globl _IE1
                             76 	.globl _IT1
                             77 	.globl _IE0
                             78 	.globl _IT0
                             79 	.globl _P0_7
                             80 	.globl _P0_6
                             81 	.globl _P0_5
                             82 	.globl _P0_4
                             83 	.globl _P0_3
                             84 	.globl _P0_2
                             85 	.globl _P0_1
                             86 	.globl _P0_0
                             87 	.globl _T2CON_7
                             88 	.globl _T2CON_6
                             89 	.globl _T2CON_5
                             90 	.globl _T2CON_4
                             91 	.globl _T2CON_3
                             92 	.globl _T2CON_2
                             93 	.globl _T2CON_1
                             94 	.globl _T2CON_0
                             95 	.globl _B
                             96 	.globl _ACC
                             97 	.globl _PSW
                             98 	.globl _IP
                             99 	.globl _P3
                            100 	.globl _IE
                            101 	.globl _P2
                            102 	.globl _SBUF
                            103 	.globl _SCON
                            104 	.globl _P1
                            105 	.globl _TH1
                            106 	.globl _TH0
                            107 	.globl _TL1
                            108 	.globl _TL0
                            109 	.globl _TMOD
                            110 	.globl _TCON
                            111 	.globl _PCON
                            112 	.globl _DPH
                            113 	.globl _DPL
                            114 	.globl _SP
                            115 	.globl _P0
                            116 	.globl _RCAP2L
                            117 	.globl _RCAP2H
                            118 	.globl _T2CON
                            119 	.globl _AUXR
                            120 	.globl _lcd_position_PARM_2
                            121 	.globl _delay
                            122 	.globl _lcd_wait
                            123 	.globl _lcd_cmd
                            124 	.globl _lcd_data
                            125 	.globl _lcd_init
                            126 	.globl _lcd_shift
                            127 	.globl _lcd_cursor_shift
                            128 	.globl _lcd_position
                            129 	.globl _lcd_cls
                            130 	.globl _lcd_print
                            131 ;--------------------------------------------------------
                            132 ; special function registers
                            133 ;--------------------------------------------------------
                            134 	.area RSEG    (DATA)
                    008E    135 _AUXR	=	0x008e
                    00C8    136 _T2CON	=	0x00c8
                    00CB    137 _RCAP2H	=	0x00cb
                    00CA    138 _RCAP2L	=	0x00ca
                    0080    139 _P0	=	0x0080
                    0081    140 _SP	=	0x0081
                    0082    141 _DPL	=	0x0082
                    0083    142 _DPH	=	0x0083
                    0087    143 _PCON	=	0x0087
                    0088    144 _TCON	=	0x0088
                    0089    145 _TMOD	=	0x0089
                    008A    146 _TL0	=	0x008a
                    008B    147 _TL1	=	0x008b
                    008C    148 _TH0	=	0x008c
                    008D    149 _TH1	=	0x008d
                    0090    150 _P1	=	0x0090
                    0098    151 _SCON	=	0x0098
                    0099    152 _SBUF	=	0x0099
                    00A0    153 _P2	=	0x00a0
                    00A8    154 _IE	=	0x00a8
                    00B0    155 _P3	=	0x00b0
                    00B8    156 _IP	=	0x00b8
                    00D0    157 _PSW	=	0x00d0
                    00E0    158 _ACC	=	0x00e0
                    00F0    159 _B	=	0x00f0
                            160 ;--------------------------------------------------------
                            161 ; special function bits
                            162 ;--------------------------------------------------------
                            163 	.area RSEG    (DATA)
                    00C8    164 _T2CON_0	=	0x00c8
                    00C9    165 _T2CON_1	=	0x00c9
                    00CA    166 _T2CON_2	=	0x00ca
                    00CB    167 _T2CON_3	=	0x00cb
                    00CC    168 _T2CON_4	=	0x00cc
                    00CD    169 _T2CON_5	=	0x00cd
                    00CE    170 _T2CON_6	=	0x00ce
                    00CF    171 _T2CON_7	=	0x00cf
                    0080    172 _P0_0	=	0x0080
                    0081    173 _P0_1	=	0x0081
                    0082    174 _P0_2	=	0x0082
                    0083    175 _P0_3	=	0x0083
                    0084    176 _P0_4	=	0x0084
                    0085    177 _P0_5	=	0x0085
                    0086    178 _P0_6	=	0x0086
                    0087    179 _P0_7	=	0x0087
                    0088    180 _IT0	=	0x0088
                    0089    181 _IE0	=	0x0089
                    008A    182 _IT1	=	0x008a
                    008B    183 _IE1	=	0x008b
                    008C    184 _TR0	=	0x008c
                    008D    185 _TF0	=	0x008d
                    008E    186 _TR1	=	0x008e
                    008F    187 _TF1	=	0x008f
                    0090    188 _P1_0	=	0x0090
                    0091    189 _P1_1	=	0x0091
                    0092    190 _P1_2	=	0x0092
                    0093    191 _P1_3	=	0x0093
                    0094    192 _P1_4	=	0x0094
                    0095    193 _P1_5	=	0x0095
                    0096    194 _P1_6	=	0x0096
                    0097    195 _P1_7	=	0x0097
                    0098    196 _RI	=	0x0098
                    0099    197 _TI	=	0x0099
                    009A    198 _RB8	=	0x009a
                    009B    199 _TB8	=	0x009b
                    009C    200 _REN	=	0x009c
                    009D    201 _SM2	=	0x009d
                    009E    202 _SM1	=	0x009e
                    009F    203 _SM0	=	0x009f
                    00A0    204 _P2_0	=	0x00a0
                    00A1    205 _P2_1	=	0x00a1
                    00A2    206 _P2_2	=	0x00a2
                    00A3    207 _P2_3	=	0x00a3
                    00A4    208 _P2_4	=	0x00a4
                    00A5    209 _P2_5	=	0x00a5
                    00A6    210 _P2_6	=	0x00a6
                    00A7    211 _P2_7	=	0x00a7
                    00A8    212 _EX0	=	0x00a8
                    00A9    213 _ET0	=	0x00a9
                    00AA    214 _EX1	=	0x00aa
                    00AB    215 _ET1	=	0x00ab
                    00AC    216 _ES	=	0x00ac
                    00AF    217 _EA	=	0x00af
                    00B0    218 _P3_0	=	0x00b0
                    00B1    219 _P3_1	=	0x00b1
                    00B2    220 _P3_2	=	0x00b2
                    00B3    221 _P3_3	=	0x00b3
                    00B4    222 _P3_4	=	0x00b4
                    00B5    223 _P3_5	=	0x00b5
                    00B6    224 _P3_6	=	0x00b6
                    00B7    225 _P3_7	=	0x00b7
                    00B0    226 _RXD	=	0x00b0
                    00B1    227 _TXD	=	0x00b1
                    00B2    228 _INT0	=	0x00b2
                    00B3    229 _INT1	=	0x00b3
                    00B4    230 _T0	=	0x00b4
                    00B5    231 _T1	=	0x00b5
                    00B6    232 _WR	=	0x00b6
                    00B7    233 _RD	=	0x00b7
                    00B8    234 _PX0	=	0x00b8
                    00B9    235 _PT0	=	0x00b9
                    00BA    236 _PX1	=	0x00ba
                    00BB    237 _PT1	=	0x00bb
                    00BC    238 _PS	=	0x00bc
                    00D0    239 _P	=	0x00d0
                    00D1    240 _F1	=	0x00d1
                    00D2    241 _OV	=	0x00d2
                    00D3    242 _RS0	=	0x00d3
                    00D4    243 _RS1	=	0x00d4
                    00D5    244 _F0	=	0x00d5
                    00D6    245 _AC	=	0x00d6
                    00D7    246 _CY	=	0x00d7
                            247 ;--------------------------------------------------------
                            248 ; overlayable register banks
                            249 ;--------------------------------------------------------
                            250 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     251 	.ds 8
                            252 ;--------------------------------------------------------
                            253 ; internal ram data
                            254 ;--------------------------------------------------------
                            255 	.area DSEG    (DATA)
   0008                     256 _lcd_position_PARM_2:
   0008                     257 	.ds 1
                            258 ;--------------------------------------------------------
                            259 ; overlayable items in internal ram 
                            260 ;--------------------------------------------------------
                            261 	.area	OSEG    (OVR,DATA)
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
                            318 ;Allocation info for local variables in function 'delay'
                            319 ;------------------------------------------------------------
                            320 ;num                       Allocated to registers r2 
                            321 ;i                         Allocated to registers r3 r4 
                            322 ;j                         Allocated to registers r5 r6 
                            323 ;------------------------------------------------------------
                            324 ;	common.c:16: void delay(char num)
                            325 ;	-----------------------------------------
                            326 ;	 function delay
                            327 ;	-----------------------------------------
   0618                     328 _delay:
                    0002    329 	ar2 = 0x02
                    0003    330 	ar3 = 0x03
                    0004    331 	ar4 = 0x04
                    0005    332 	ar5 = 0x05
                    0006    333 	ar6 = 0x06
                    0007    334 	ar7 = 0x07
                    0000    335 	ar0 = 0x00
                    0001    336 	ar1 = 0x01
   0618 AA 82               337 	mov	r2,dpl
                            338 ;	common.c:26: while(num){
   061A                     339 00101$:
   061A EA                  340 	mov	a,r2
   061B 60 35               341 	jz	00103$
                            342 ;	common.c:27: for(i=200;i>0;i--)
   061D 7B C8               343 	mov	r3,#0xC8
   061F 7C 00               344 	mov	r4,#0x00
   0621                     345 00108$:
   0621 C3                  346 	clr	c
   0622 E4                  347 	clr	a
   0623 9B                  348 	subb	a,r3
   0624 74 80               349 	mov	a,#(0x00 ^ 0x80)
   0626 8C F0               350 	mov	b,r4
   0628 63 F0 80            351 	xrl	b,#0x80
   062B 95 F0               352 	subb	a,b
   062D 50 20               353 	jnc	00111$
                            354 ;	common.c:28: for(j=200;j>0;j--);
   062F 7D C8               355 	mov	r5,#0xC8
   0631 7E 00               356 	mov	r6,#0x00
   0633                     357 00104$:
   0633 C3                  358 	clr	c
   0634 E4                  359 	clr	a
   0635 9D                  360 	subb	a,r5
   0636 74 80               361 	mov	a,#(0x00 ^ 0x80)
   0638 8E F0               362 	mov	b,r6
   063A 63 F0 80            363 	xrl	b,#0x80
   063D 95 F0               364 	subb	a,b
   063F 50 07               365 	jnc	00110$
   0641 1D                  366 	dec	r5
   0642 BD FF EE            367 	cjne	r5,#0xff,00104$
   0645 1E                  368 	dec	r6
   0646 80 EB               369 	sjmp	00104$
   0648                     370 00110$:
                            371 ;	common.c:27: for(i=200;i>0;i--)
   0648 1B                  372 	dec	r3
   0649 BB FF D5            373 	cjne	r3,#0xff,00108$
   064C 1C                  374 	dec	r4
   064D 80 D2               375 	sjmp	00108$
   064F                     376 00111$:
                            377 ;	common.c:29: num--;
   064F 1A                  378 	dec	r2
   0650 80 C8               379 	sjmp	00101$
   0652                     380 00103$:
                            381 ;	common.c:31: return;
   0652 22                  382 	ret
                            383 ;------------------------------------------------------------
                            384 ;Allocation info for local variables in function 'lcd_wait'
                            385 ;------------------------------------------------------------
                            386 ;------------------------------------------------------------
                            387 ;	lcd.c:46: void lcd_wait(void)
                            388 ;	-----------------------------------------
                            389 ;	 function lcd_wait
                            390 ;	-----------------------------------------
   0653                     391 _lcd_wait:
                            392 ;	lcd.c:56: while(1)
   0653                     393 00104$:
                            394 ;	lcd.c:58: LCD_EN=0;
   0653 C2 A2               395 	clr	_P2_2
                            396 ;	lcd.c:59: LCD_RS=0;
   0655 C2 A0               397 	clr	_P2_0
                            398 ;	lcd.c:60: LCD_RW=1;
   0657 D2 A1               399 	setb	_P2_1
                            400 ;	lcd.c:61: LCD_DATA=0xFF;
   0659 75 80 FF            401 	mov	_P0,#0xFF
                            402 ;	lcd.c:62: LCD_EN=1;
   065C D2 A2               403 	setb	_P2_2
                            404 ;	lcd.c:63: if(!LCD_BUSY)		break;		//忙完了，不玩了：）
   065E 20 87 F2            405 	jb	_P0_7,00104$
                            406 ;	lcd.c:65: LCD_EN=0;
   0661 C2 A2               407 	clr	_P2_2
                            408 ;	lcd.c:66: return;
   0663 22                  409 	ret
                            410 ;------------------------------------------------------------
                            411 ;Allocation info for local variables in function 'lcd_cmd'
                            412 ;------------------------------------------------------------
                            413 ;cmd                       Allocated to registers r2 
                            414 ;------------------------------------------------------------
                            415 ;	lcd.c:69: void lcd_cmd(char cmd)
                            416 ;	-----------------------------------------
                            417 ;	 function lcd_cmd
                            418 ;	-----------------------------------------
   0664                     419 _lcd_cmd:
   0664 AA 82               420 	mov	r2,dpl
                            421 ;	lcd.c:80: EA=0;
   0666 C2 AF               422 	clr	_EA
                            423 ;	lcd.c:81: lcd_wait();
   0668 C0 02               424 	push	ar2
   066A 12 06 53            425 	lcall	_lcd_wait
   066D D0 02               426 	pop	ar2
                            427 ;	lcd.c:82: LCD_RS=0;
   066F C2 A0               428 	clr	_P2_0
                            429 ;	lcd.c:83: LCD_RW=0;
   0671 C2 A1               430 	clr	_P2_1
                            431 ;	lcd.c:84: LCD_EN=1;
   0673 D2 A2               432 	setb	_P2_2
                            433 ;	lcd.c:85: LCD_DATA=cmd;
   0675 8A 80               434 	mov	_P0,r2
                            435 ;	lcd.c:86: LCD_EN=0;
   0677 C2 A2               436 	clr	_P2_2
                            437 ;	lcd.c:87: EA=1;
   0679 D2 AF               438 	setb	_EA
                            439 ;	lcd.c:88: return;
   067B 22                  440 	ret
                            441 ;------------------------------------------------------------
                            442 ;Allocation info for local variables in function 'lcd_data'
                            443 ;------------------------------------------------------------
                            444 ;datas                     Allocated to registers r2 
                            445 ;------------------------------------------------------------
                            446 ;	lcd.c:91: void lcd_data(char datas)
                            447 ;	-----------------------------------------
                            448 ;	 function lcd_data
                            449 ;	-----------------------------------------
   067C                     450 _lcd_data:
   067C AA 82               451 	mov	r2,dpl
                            452 ;	lcd.c:102: EA=0;
   067E C2 AF               453 	clr	_EA
                            454 ;	lcd.c:103: lcd_wait();
   0680 C0 02               455 	push	ar2
   0682 12 06 53            456 	lcall	_lcd_wait
   0685 D0 02               457 	pop	ar2
                            458 ;	lcd.c:104: LCD_RS=1;
   0687 D2 A0               459 	setb	_P2_0
                            460 ;	lcd.c:105: LCD_RW=0;
   0689 C2 A1               461 	clr	_P2_1
                            462 ;	lcd.c:106: LCD_EN=1;
   068B D2 A2               463 	setb	_P2_2
                            464 ;	lcd.c:107: LCD_DATA=datas;
   068D 8A 80               465 	mov	_P0,r2
                            466 ;	lcd.c:108: LCD_EN=0;
   068F C2 A2               467 	clr	_P2_2
                            468 ;	lcd.c:109: EA=1;
   0691 D2 AF               469 	setb	_EA
                            470 ;	lcd.c:110: return;
   0693 22                  471 	ret
                            472 ;------------------------------------------------------------
                            473 ;Allocation info for local variables in function 'lcd_init'
                            474 ;------------------------------------------------------------
                            475 ;------------------------------------------------------------
                            476 ;	lcd.c:114: void lcd_init(void)
                            477 ;	-----------------------------------------
                            478 ;	 function lcd_init
                            479 ;	-----------------------------------------
   0694                     480 _lcd_init:
                            481 ;	lcd.c:121: lcd_cls();
   0694 12 07 48            482 	lcall	_lcd_cls
                            483 ;	lcd.c:122: lcd_cmd(LCD_CURSOR);
   0697 75 82 0A            484 	mov	dpl,#0x0A
   069A 12 06 64            485 	lcall	_lcd_cmd
                            486 ;	lcd.c:123: lcd_cmd(LCD_AC_AUTO_INCREMENT);
   069D 75 82 06            487 	mov	dpl,#0x06
   06A0 12 06 64            488 	lcall	_lcd_cmd
                            489 ;	lcd.c:124: lcd_cmd(LCD_DISPLAY_ON);
   06A3 75 82 0C            490 	mov	dpl,#0x0C
   06A6 12 06 64            491 	lcall	_lcd_cmd
                            492 ;	lcd.c:126: lcd_cmd(LCD_LINES);	//工作方式（行数）
   06A9 75 82 38            493 	mov	dpl,#0x38
   06AC 12 06 64            494 	lcall	_lcd_cmd
                            495 ;	lcd.c:128: lcd_position(2,0);		//定位到第一行第一列
   06AF 75 08 00            496 	mov	_lcd_position_PARM_2,#0x00
   06B2 75 82 02            497 	mov	dpl,#0x02
   06B5 02 07 10            498 	ljmp	_lcd_position
                            499 ;------------------------------------------------------------
                            500 ;Allocation info for local variables in function 'lcd_shift'
                            501 ;------------------------------------------------------------
                            502 ;num                       Allocated to registers r2 
                            503 ;------------------------------------------------------------
                            504 ;	lcd.c:133: void lcd_shift(char num)
                            505 ;	-----------------------------------------
                            506 ;	 function lcd_shift
                            507 ;	-----------------------------------------
   06B8                     508 _lcd_shift:
   06B8 AA 82               509 	mov	r2,dpl
                            510 ;	lcd.c:141: while(num){
   06BA                     511 00104$:
   06BA EA                  512 	mov	a,r2
   06BB 60 26               513 	jz	00106$
                            514 ;	lcd.c:142: if(num>0){		//右
   06BD C3                  515 	clr	c
   06BE 74 80               516 	mov	a,#(0x00 ^ 0x80)
   06C0 8A F0               517 	mov	b,r2
   06C2 63 F0 80            518 	xrl	b,#0x80
   06C5 95 F0               519 	subb	a,b
   06C7 50 0D               520 	jnc	00102$
                            521 ;	lcd.c:143: lcd_cmd(0x1c);num--;
   06C9 75 82 1C            522 	mov	dpl,#0x1C
   06CC C0 02               523 	push	ar2
   06CE 12 06 64            524 	lcall	_lcd_cmd
   06D1 D0 02               525 	pop	ar2
   06D3 1A                  526 	dec	r2
   06D4 80 E4               527 	sjmp	00104$
   06D6                     528 00102$:
                            529 ;	lcd.c:145: lcd_cmd(0x18);	num++;
   06D6 75 82 18            530 	mov	dpl,#0x18
   06D9 C0 02               531 	push	ar2
   06DB 12 06 64            532 	lcall	_lcd_cmd
   06DE D0 02               533 	pop	ar2
   06E0 0A                  534 	inc	r2
   06E1 80 D7               535 	sjmp	00104$
   06E3                     536 00106$:
                            537 ;	lcd.c:148: return;
   06E3 22                  538 	ret
                            539 ;------------------------------------------------------------
                            540 ;Allocation info for local variables in function 'lcd_cursor_shift'
                            541 ;------------------------------------------------------------
                            542 ;num                       Allocated to registers r2 
                            543 ;------------------------------------------------------------
                            544 ;	lcd.c:151: void lcd_cursor_shift(char num)
                            545 ;	-----------------------------------------
                            546 ;	 function lcd_cursor_shift
                            547 ;	-----------------------------------------
   06E4                     548 _lcd_cursor_shift:
   06E4 AA 82               549 	mov	r2,dpl
                            550 ;	lcd.c:160: while(num){
   06E6                     551 00104$:
   06E6 EA                  552 	mov	a,r2
   06E7 60 26               553 	jz	00106$
                            554 ;	lcd.c:161: if(num>0){
   06E9 C3                  555 	clr	c
   06EA 74 80               556 	mov	a,#(0x00 ^ 0x80)
   06EC 8A F0               557 	mov	b,r2
   06EE 63 F0 80            558 	xrl	b,#0x80
   06F1 95 F0               559 	subb	a,b
   06F3 50 0D               560 	jnc	00102$
                            561 ;	lcd.c:162: lcd_cmd(0x14);num--; //右
   06F5 75 82 14            562 	mov	dpl,#0x14
   06F8 C0 02               563 	push	ar2
   06FA 12 06 64            564 	lcall	_lcd_cmd
   06FD D0 02               565 	pop	ar2
   06FF 1A                  566 	dec	r2
   0700 80 E4               567 	sjmp	00104$
   0702                     568 00102$:
                            569 ;	lcd.c:164: lcd_cmd(0x10);	num++;
   0702 75 82 10            570 	mov	dpl,#0x10
   0705 C0 02               571 	push	ar2
   0707 12 06 64            572 	lcall	_lcd_cmd
   070A D0 02               573 	pop	ar2
   070C 0A                  574 	inc	r2
   070D 80 D7               575 	sjmp	00104$
   070F                     576 00106$:
                            577 ;	lcd.c:167: return;
   070F 22                  578 	ret
                            579 ;------------------------------------------------------------
                            580 ;Allocation info for local variables in function 'lcd_position'
                            581 ;------------------------------------------------------------
                            582 ;y                         Allocated with name '_lcd_position_PARM_2'
                            583 ;x                         Allocated to registers r2 
                            584 ;------------------------------------------------------------
                            585 ;	lcd.c:170: void lcd_position(char x,char y)
                            586 ;	-----------------------------------------
                            587 ;	 function lcd_position
                            588 ;	-----------------------------------------
   0710                     589 _lcd_position:
   0710 AA 82               590 	mov	r2,dpl
                            591 ;	lcd.c:180: y=y>16?15:y--;
   0712 C3                  592 	clr	c
   0713 74 90               593 	mov	a,#(0x10 ^ 0x80)
   0715 85 08 F0            594 	mov	b,_lcd_position_PARM_2
   0718 63 F0 80            595 	xrl	b,#0x80
   071B 95 F0               596 	subb	a,b
   071D 50 04               597 	jnc	00105$
   071F 7B 0F               598 	mov	r3,#0x0F
   0721 80 02               599 	sjmp	00106$
   0723                     600 00105$:
   0723 AB 08               601 	mov	r3,_lcd_position_PARM_2
   0725                     602 00106$:
                            603 ;	lcd.c:181: x=x>2?1:x--;
   0725 C3                  604 	clr	c
   0726 74 82               605 	mov	a,#(0x02 ^ 0x80)
   0728 8A F0               606 	mov	b,r2
   072A 63 F0 80            607 	xrl	b,#0x80
   072D 95 F0               608 	subb	a,b
   072F 50 04               609 	jnc	00107$
   0731 7C 01               610 	mov	r4,#0x01
   0733 80 02               611 	sjmp	00108$
   0735                     612 00107$:
   0735 8A 04               613 	mov	ar4,r2
   0737                     614 00108$:
   0737 8C 02               615 	mov	ar2,r4
                            616 ;	lcd.c:183: if(y)			x+=0x40;		//0x40：第二行起始位置偏移量
   0739 EB                  617 	mov	a,r3
   073A 60 04               618 	jz	00102$
   073C 74 40               619 	mov	a,#0x40
   073E 2A                  620 	add	a,r2
   073F FA                  621 	mov	r2,a
   0740                     622 00102$:
                            623 ;	lcd.c:184: lcd_cmd(0x80+x);	//0x80第一行显示起始位置
   0740 74 80               624 	mov	a,#0x80
   0742 2A                  625 	add	a,r2
   0743 F5 82               626 	mov	dpl,a
                            627 ;	lcd.c:185: return ;
   0745 02 06 64            628 	ljmp	_lcd_cmd
                            629 ;------------------------------------------------------------
                            630 ;Allocation info for local variables in function 'lcd_cls'
                            631 ;------------------------------------------------------------
                            632 ;------------------------------------------------------------
                            633 ;	lcd.c:188: void lcd_cls(void)
                            634 ;	-----------------------------------------
                            635 ;	 function lcd_cls
                            636 ;	-----------------------------------------
   0748                     637 _lcd_cls:
                            638 ;	lcd.c:195: lcd_cmd(0x01);
   0748 75 82 01            639 	mov	dpl,#0x01
                            640 ;	lcd.c:196: return;
   074B 02 06 64            641 	ljmp	_lcd_cmd
                            642 ;------------------------------------------------------------
                            643 ;Allocation info for local variables in function 'lcd_print'
                            644 ;------------------------------------------------------------
                            645 ;string                    Allocated to registers r2 r3 r4 
                            646 ;i                         Allocated to registers r5 
                            647 ;------------------------------------------------------------
                            648 ;	lcd.c:199: void lcd_print(char *string)
                            649 ;	-----------------------------------------
                            650 ;	 function lcd_print
                            651 ;	-----------------------------------------
   074E                     652 _lcd_print:
   074E AA 82               653 	mov	r2,dpl
   0750 AB 83               654 	mov	r3,dph
   0752 AC F0               655 	mov	r4,b
                            656 ;	lcd.c:206: while(string[i]!=0x00)	{
   0754 7D 00               657 	mov	r5,#0x00
   0756                     658 00101$:
   0756 ED                  659 	mov	a,r5
   0757 2A                  660 	add	a,r2
   0758 FE                  661 	mov	r6,a
   0759 E4                  662 	clr	a
   075A 3B                  663 	addc	a,r3
   075B FF                  664 	mov	r7,a
   075C 8C 00               665 	mov	ar0,r4
   075E 8E 82               666 	mov	dpl,r6
   0760 8F 83               667 	mov	dph,r7
   0762 88 F0               668 	mov	b,r0
   0764 12 09 B5            669 	lcall	__gptrget
   0767 FE                  670 	mov	r6,a
   0768 60 18               671 	jz	00103$
                            672 ;	lcd.c:207: lcd_data(string[i]);
   076A 8E 82               673 	mov	dpl,r6
   076C C0 02               674 	push	ar2
   076E C0 03               675 	push	ar3
   0770 C0 04               676 	push	ar4
   0772 C0 05               677 	push	ar5
   0774 12 06 7C            678 	lcall	_lcd_data
   0777 D0 05               679 	pop	ar5
   0779 D0 04               680 	pop	ar4
   077B D0 03               681 	pop	ar3
   077D D0 02               682 	pop	ar2
                            683 ;	lcd.c:208: i++;
   077F 0D                  684 	inc	r5
   0780 80 D4               685 	sjmp	00101$
   0782                     686 00103$:
                            687 ;	lcd.c:210: return;
   0782 22                  688 	ret
                            689 	.area CSEG    (CODE)
                            690 	.area CONST   (CODE)
                            691 	.area XINIT   (CODE)
                            692 	.area CABS    (ABS,CODE)
