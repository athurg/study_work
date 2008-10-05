                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
                              4 ; This file was generated Wed Oct  1 08:42:36 2008
                              5 ;--------------------------------------------------------
                              6 	.module keypad
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
                            108 	.globl _key_make
                            109 	.globl _key_scan
                            110 ;--------------------------------------------------------
                            111 ; special function registers
                            112 ;--------------------------------------------------------
                            113 	.area RSEG    (DATA)
                    0080    114 _P0	=	0x0080
                    0090    115 _P1	=	0x0090
                    00A0    116 _P2	=	0x00a0
                    00B0    117 _P3	=	0x00b0
                    0081    118 _SP	=	0x0081
                    0082    119 _DPL	=	0x0082
                    0083    120 _DPH	=	0x0083
                    0087    121 _PCON	=	0x0087
                    0088    122 _TCON	=	0x0088
                    0089    123 _TMOD	=	0x0089
                    008A    124 _TL0	=	0x008a
                    008B    125 _TL1	=	0x008b
                    008C    126 _TH0	=	0x008c
                    008D    127 _TH1	=	0x008d
                    0098    128 _SCON	=	0x0098
                    0099    129 _SBUF	=	0x0099
                    00A8    130 _IE	=	0x00a8
                    00B8    131 _IP	=	0x00b8
                    00D0    132 _PSW	=	0x00d0
                    00E0    133 _ACC	=	0x00e0
                    00F0    134 _B	=	0x00f0
                            135 ;--------------------------------------------------------
                            136 ; special function bits
                            137 ;--------------------------------------------------------
                            138 	.area RSEG    (DATA)
                    0080    139 _P0_0	=	0x0080
                    0081    140 _P0_1	=	0x0081
                    0082    141 _P0_2	=	0x0082
                    0083    142 _P0_3	=	0x0083
                    0084    143 _P0_4	=	0x0084
                    0085    144 _P0_5	=	0x0085
                    0086    145 _P0_6	=	0x0086
                    0087    146 _P0_7	=	0x0087
                    0090    147 _P1_0	=	0x0090
                    0091    148 _P1_1	=	0x0091
                    0092    149 _P1_2	=	0x0092
                    0093    150 _P1_3	=	0x0093
                    0094    151 _P1_4	=	0x0094
                    0095    152 _P1_5	=	0x0095
                    0096    153 _P1_6	=	0x0096
                    0097    154 _P1_7	=	0x0097
                    00A0    155 _P2_0	=	0x00a0
                    00A1    156 _P2_1	=	0x00a1
                    00A2    157 _P2_2	=	0x00a2
                    00A3    158 _P2_3	=	0x00a3
                    00A4    159 _P2_4	=	0x00a4
                    00A5    160 _P2_5	=	0x00a5
                    00A6    161 _P2_6	=	0x00a6
                    00A7    162 _P2_7	=	0x00a7
                    00B0    163 _P3_0	=	0x00b0
                    00B1    164 _P3_1	=	0x00b1
                    00B2    165 _P3_2	=	0x00b2
                    00B3    166 _P3_3	=	0x00b3
                    00B4    167 _P3_4	=	0x00b4
                    00B5    168 _P3_5	=	0x00b5
                    00B6    169 _P3_6	=	0x00b6
                    00B7    170 _P3_7	=	0x00b7
                    00B0    171 _RXD	=	0x00b0
                    00B1    172 _TXD	=	0x00b1
                    00B2    173 _INT0	=	0x00b2
                    00B3    174 _INT1	=	0x00b3
                    00B4    175 _T0	=	0x00b4
                    00B5    176 _T1	=	0x00b5
                    00B6    177 _WR	=	0x00b6
                    00B7    178 _RD	=	0x00b7
                    0088    179 _IT0	=	0x0088
                    0089    180 _IE0	=	0x0089
                    008A    181 _IT1	=	0x008a
                    008B    182 _IE1	=	0x008b
                    008C    183 _TR0	=	0x008c
                    008D    184 _TF0	=	0x008d
                    008E    185 _TR1	=	0x008e
                    008F    186 _TF1	=	0x008f
                    0098    187 _RI	=	0x0098
                    0099    188 _TI	=	0x0099
                    009A    189 _RB8	=	0x009a
                    009B    190 _TB8	=	0x009b
                    009C    191 _REN	=	0x009c
                    009D    192 _SM2	=	0x009d
                    009E    193 _SM1	=	0x009e
                    009F    194 _SM0	=	0x009f
                    00A8    195 _EX0	=	0x00a8
                    00A9    196 _ET0	=	0x00a9
                    00AA    197 _EX1	=	0x00aa
                    00AB    198 _ET1	=	0x00ab
                    00AC    199 _ES	=	0x00ac
                    00AF    200 _EA	=	0x00af
                    00B8    201 _PX0	=	0x00b8
                    00B9    202 _PT0	=	0x00b9
                    00BA    203 _PX1	=	0x00ba
                    00BB    204 _PT1	=	0x00bb
                    00BC    205 _PS	=	0x00bc
                    00D0    206 _P	=	0x00d0
                    00D1    207 _F1	=	0x00d1
                    00D2    208 _OV	=	0x00d2
                    00D3    209 _RS0	=	0x00d3
                    00D4    210 _RS1	=	0x00d4
                    00D5    211 _F0	=	0x00d5
                    00D6    212 _AC	=	0x00d6
                    00D7    213 _CY	=	0x00d7
                            214 ;--------------------------------------------------------
                            215 ; overlayable register banks
                            216 ;--------------------------------------------------------
                            217 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     218 	.ds 8
                            219 ;--------------------------------------------------------
                            220 ; internal ram data
                            221 ;--------------------------------------------------------
                            222 	.area DSEG    (DATA)
                            223 ;--------------------------------------------------------
                            224 ; overlayable items in internal ram 
                            225 ;--------------------------------------------------------
                            226 	.area	OSEG    (OVR,DATA)
   0059                     227 _key_make_keytable_1_1::
   0059                     228 	.ds 34
                            229 	.area	OSEG    (OVR,DATA)
                            230 ;--------------------------------------------------------
                            231 ; indirectly addressable internal ram data
                            232 ;--------------------------------------------------------
                            233 	.area ISEG    (DATA)
                            234 ;--------------------------------------------------------
                            235 ; absolute internal ram data
                            236 ;--------------------------------------------------------
                            237 	.area IABS    (ABS,DATA)
                            238 	.area IABS    (ABS,DATA)
                            239 ;--------------------------------------------------------
                            240 ; bit data
                            241 ;--------------------------------------------------------
                            242 	.area BSEG    (BIT)
                            243 ;--------------------------------------------------------
                            244 ; paged external ram data
                            245 ;--------------------------------------------------------
                            246 	.area PSEG    (PAG,XDATA)
                            247 ;--------------------------------------------------------
                            248 ; external ram data
                            249 ;--------------------------------------------------------
                            250 	.area XSEG    (XDATA)
                            251 ;--------------------------------------------------------
                            252 ; absolute external ram data
                            253 ;--------------------------------------------------------
                            254 	.area XABS    (ABS,XDATA)
                            255 ;--------------------------------------------------------
                            256 ; external initialized ram data
                            257 ;--------------------------------------------------------
                            258 	.area XISEG   (XDATA)
                            259 	.area HOME    (CODE)
                            260 	.area GSINIT0 (CODE)
                            261 	.area GSINIT1 (CODE)
                            262 	.area GSINIT2 (CODE)
                            263 	.area GSINIT3 (CODE)
                            264 	.area GSINIT4 (CODE)
                            265 	.area GSINIT5 (CODE)
                            266 	.area GSINIT  (CODE)
                            267 	.area GSFINAL (CODE)
                            268 	.area CSEG    (CODE)
                            269 ;--------------------------------------------------------
                            270 ; global & static initialisations
                            271 ;--------------------------------------------------------
                            272 	.area HOME    (CODE)
                            273 	.area GSINIT  (CODE)
                            274 	.area GSFINAL (CODE)
                            275 	.area GSINIT  (CODE)
                            276 ;--------------------------------------------------------
                            277 ; Home
                            278 ;--------------------------------------------------------
                            279 	.area HOME    (CODE)
                            280 	.area HOME    (CODE)
                            281 ;--------------------------------------------------------
                            282 ; code
                            283 ;--------------------------------------------------------
                            284 	.area CSEG    (CODE)
                            285 ;------------------------------------------------------------
                            286 ;Allocation info for local variables in function 'key_make'
                            287 ;------------------------------------------------------------
                            288 ;key                       Allocated to registers r2 
                            289 ;i                         Allocated to registers r3 
                            290 ;keytable                  Allocated with name '_key_make_keytable_1_1'
                            291 ;------------------------------------------------------------
                            292 ;	keypad.c:4: char key_make(char key)
                            293 ;	-----------------------------------------
                            294 ;	 function key_make
                            295 ;	-----------------------------------------
   0464                     296 _key_make:
                    0002    297 	ar2 = 0x02
                    0003    298 	ar3 = 0x03
                    0004    299 	ar4 = 0x04
                    0005    300 	ar5 = 0x05
                    0006    301 	ar6 = 0x06
                    0007    302 	ar7 = 0x07
                    0000    303 	ar0 = 0x00
                    0001    304 	ar1 = 0x01
   0464 AA 82               305 	mov	r2,dpl
                            306 ;	keypad.c:15: struct keypad keytable[]={
   0466 75 59 EE            307 	mov	_key_make_keytable_1_1,#0xEE
   0469 75 5A 01            308 	mov	(_key_make_keytable_1_1 + 0x0001),#0x01
   046C 75 5B DE            309 	mov	(_key_make_keytable_1_1 + 0x0002),#0xDE
   046F 75 5C 02            310 	mov	(_key_make_keytable_1_1 + 0x0003),#0x02
   0472 75 5D BE            311 	mov	(_key_make_keytable_1_1 + 0x0004),#0xBE
   0475 75 5E 03            312 	mov	(_key_make_keytable_1_1 + 0x0005),#0x03
   0478 75 5F 7E            313 	mov	(_key_make_keytable_1_1 + 0x0006),#0x7E
   047B 75 60 15            314 	mov	(_key_make_keytable_1_1 + 0x0007),#0x15
   047E 75 61 ED            315 	mov	(_key_make_keytable_1_1 + 0x0008),#0xED
   0481 75 62 06            316 	mov	(_key_make_keytable_1_1 + 0x0009),#0x06
   0484 75 63 DD            317 	mov	(_key_make_keytable_1_1 + 0x000a),#0xDD
   0487 75 64 05            318 	mov	(_key_make_keytable_1_1 + 0x000b),#0x05
   048A 75 65 BD            319 	mov	(_key_make_keytable_1_1 + 0x000c),#0xBD
   048D 75 66 04            320 	mov	(_key_make_keytable_1_1 + 0x000d),#0x04
   0490 75 67 7D            321 	mov	(_key_make_keytable_1_1 + 0x000e),#0x7D
   0493 75 68 16            322 	mov	(_key_make_keytable_1_1 + 0x000f),#0x16
   0496 75 69 EB            323 	mov	(_key_make_keytable_1_1 + 0x0010),#0xEB
   0499 75 6A 07            324 	mov	(_key_make_keytable_1_1 + 0x0011),#0x07
   049C 75 6B DB            325 	mov	(_key_make_keytable_1_1 + 0x0012),#0xDB
   049F 75 6C 08            326 	mov	(_key_make_keytable_1_1 + 0x0013),#0x08
   04A2 75 6D BB            327 	mov	(_key_make_keytable_1_1 + 0x0014),#0xBB
   04A5 75 6E 09            328 	mov	(_key_make_keytable_1_1 + 0x0015),#0x09
   04A8 75 6F 7B            329 	mov	(_key_make_keytable_1_1 + 0x0016),#0x7B
   04AB 75 70 17            330 	mov	(_key_make_keytable_1_1 + 0x0017),#0x17
   04AE 75 71 E7            331 	mov	(_key_make_keytable_1_1 + 0x0018),#0xE7
   04B1 75 72 0A            332 	mov	(_key_make_keytable_1_1 + 0x0019),#0x0A
   04B4 75 73 D7            333 	mov	(_key_make_keytable_1_1 + 0x001a),#0xD7
   04B7 75 74 00            334 	mov	(_key_make_keytable_1_1 + 0x001b),#0x00
   04BA 75 75 B7            335 	mov	(_key_make_keytable_1_1 + 0x001c),#0xB7
   04BD 75 76 14            336 	mov	(_key_make_keytable_1_1 + 0x001d),#0x14
   04C0 75 77 77            337 	mov	(_key_make_keytable_1_1 + 0x001e),#0x77
   04C3 75 78 18            338 	mov	(_key_make_keytable_1_1 + 0x001f),#0x18
   04C6 75 79 00            339 	mov	(_key_make_keytable_1_1 + 0x0020),#0x00
   04C9 75 7A 42            340 	mov	(_key_make_keytable_1_1 + 0x0021),#0x42
                            341 ;	keypad.c:27: for(i=16;i>=0;i--)
   04CC 7B 10               342 	mov	r3,#0x10
   04CE                     343 00103$:
   04CE EB                  344 	mov	a,r3
   04CF 20 E7 16            345 	jb	acc.7,00106$
                            346 ;	keypad.c:29: if(keytable[i].index==key)	return keytable[i].value;
   04D2 EB                  347 	mov	a,r3
   04D3 2B                  348 	add	a,r3
   04D4 FC                  349 	mov	r4,a
   04D5 24 59               350 	add	a,#_key_make_keytable_1_1
   04D7 F8                  351 	mov	r0,a
   04D8 E6                  352 	mov	a,@r0
   04D9 FD                  353 	mov	r5,a
   04DA B5 02 08            354 	cjne	a,ar2,00105$
   04DD EC                  355 	mov	a,r4
   04DE 24 59               356 	add	a,#_key_make_keytable_1_1
   04E0 04                  357 	inc	a
   04E1 F8                  358 	mov	r0,a
   04E2 86 82               359 	mov	dpl,@r0
   04E4 22                  360 	ret
   04E5                     361 00105$:
                            362 ;	keypad.c:27: for(i=16;i>=0;i--)
   04E5 1B                  363 	dec	r3
   04E6 80 E6               364 	sjmp	00103$
   04E8                     365 00106$:
                            366 ;	keypad.c:31: return 0x00;
   04E8 75 82 00            367 	mov	dpl,#0x00
   04EB 22                  368 	ret
                            369 ;------------------------------------------------------------
                            370 ;Allocation info for local variables in function 'key_scan'
                            371 ;------------------------------------------------------------
                            372 ;line                      Allocated to registers r2 
                            373 ;------------------------------------------------------------
                            374 ;	keypad.c:34: char key_scan(void)
                            375 ;	-----------------------------------------
                            376 ;	 function key_scan
                            377 ;	-----------------------------------------
   04EC                     378 _key_scan:
                            379 ;	keypad.c:48: char line=0x08;			//行扫描起始码(00001000B)
   04EC 7A 08               380 	mov	r2,#0x08
                            381 ;	keypad.c:49: while(line)
   04EE                     382 00103$:
   04EE EA                  383 	mov	a,r2
   04EF 60 23               384 	jz	00105$
                            385 ;	keypad.c:51: P1=~line;
   04F1 EA                  386 	mov	a,r2
   04F2 F4                  387 	cpl	a
   04F3 F5 90               388 	mov	_P1,a
                            389 ;	keypad.c:52: if((P1>>4)!=0x0f) break;
   04F5 E5 90               390 	mov	a,_P1
   04F7 C4                  391 	swap	a
   04F8 54 0F               392 	anl	a,#0x0f
   04FA FB                  393 	mov	r3,a
   04FB BB 0F 16            394 	cjne	r3,#0x0F,00105$
                            395 ;	keypad.c:53: line/=2;
   04FE C2 D5               396 	clr	F0
   0500 75 F0 02            397 	mov	b,#0x02
   0503 EA                  398 	mov	a,r2
   0504 30 E7 04            399 	jnb	acc.7,00114$
   0507 B2 D5               400 	cpl	F0
   0509 F4                  401 	cpl	a
   050A 04                  402 	inc	a
   050B                     403 00114$:
   050B 84                  404 	div	ab
   050C 30 D5 02            405 	jnb	F0,00115$
   050F F4                  406 	cpl	a
   0510 04                  407 	inc	a
   0511                     408 00115$:
   0511 FA                  409 	mov	r2,a
   0512 80 DA               410 	sjmp	00103$
   0514                     411 00105$:
                            412 ;	keypad.c:55: line=P1;
   0514 AA 90               413 	mov	r2,_P1
                            414 ;	keypad.c:56: P1=0xf0; //重新初始化P1口，自己的事情自己搞完
   0516 75 90 F0            415 	mov	_P1,#0xF0
                            416 ;	keypad.c:58: return line;
   0519 8A 82               417 	mov	dpl,r2
   051B 22                  418 	ret
                            419 	.area CSEG    (CODE)
                            420 	.area CONST   (CODE)
                            421 	.area XINIT   (CODE)
                            422 	.area CABS    (ABS,CODE)
