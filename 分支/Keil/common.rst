                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
                              4 ; This file was generated Wed Oct  1 17:35:56 2008
                              5 ;--------------------------------------------------------
                              6 	.module common
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _delay
                             13 	.globl _delay_ms
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 	.area RSEG    (DATA)
                             18 ;--------------------------------------------------------
                             19 ; special function bits
                             20 ;--------------------------------------------------------
                             21 	.area RSEG    (DATA)
                             22 ;--------------------------------------------------------
                             23 ; overlayable register banks
                             24 ;--------------------------------------------------------
                             25 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      26 	.ds 8
                             27 ;--------------------------------------------------------
                             28 ; internal ram data
                             29 ;--------------------------------------------------------
                             30 	.area DSEG    (DATA)
                             31 ;--------------------------------------------------------
                             32 ; overlayable items in internal ram 
                             33 ;--------------------------------------------------------
                             34 	.area	OSEG    (OVR,DATA)
                             35 	.area	OSEG    (OVR,DATA)
                             36 ;--------------------------------------------------------
                             37 ; indirectly addressable internal ram data
                             38 ;--------------------------------------------------------
                             39 	.area ISEG    (DATA)
                             40 ;--------------------------------------------------------
                             41 ; absolute internal ram data
                             42 ;--------------------------------------------------------
                             43 	.area IABS    (ABS,DATA)
                             44 	.area IABS    (ABS,DATA)
                             45 ;--------------------------------------------------------
                             46 ; bit data
                             47 ;--------------------------------------------------------
                             48 	.area BSEG    (BIT)
                             49 ;--------------------------------------------------------
                             50 ; paged external ram data
                             51 ;--------------------------------------------------------
                             52 	.area PSEG    (PAG,XDATA)
                             53 ;--------------------------------------------------------
                             54 ; external ram data
                             55 ;--------------------------------------------------------
                             56 	.area XSEG    (XDATA)
                             57 ;--------------------------------------------------------
                             58 ; absolute external ram data
                             59 ;--------------------------------------------------------
                             60 	.area XABS    (ABS,XDATA)
                             61 ;--------------------------------------------------------
                             62 ; external initialized ram data
                             63 ;--------------------------------------------------------
                             64 	.area XISEG   (XDATA)
                             65 	.area HOME    (CODE)
                             66 	.area GSINIT0 (CODE)
                             67 	.area GSINIT1 (CODE)
                             68 	.area GSINIT2 (CODE)
                             69 	.area GSINIT3 (CODE)
                             70 	.area GSINIT4 (CODE)
                             71 	.area GSINIT5 (CODE)
                             72 	.area GSINIT  (CODE)
                             73 	.area GSFINAL (CODE)
                             74 	.area CSEG    (CODE)
                             75 ;--------------------------------------------------------
                             76 ; global & static initialisations
                             77 ;--------------------------------------------------------
                             78 	.area HOME    (CODE)
                             79 	.area GSINIT  (CODE)
                             80 	.area GSFINAL (CODE)
                             81 	.area GSINIT  (CODE)
                             82 ;--------------------------------------------------------
                             83 ; Home
                             84 ;--------------------------------------------------------
                             85 	.area HOME    (CODE)
                             86 	.area HOME    (CODE)
                             87 ;--------------------------------------------------------
                             88 ; code
                             89 ;--------------------------------------------------------
                             90 	.area CSEG    (CODE)
                             91 ;------------------------------------------------------------
                             92 ;Allocation info for local variables in function 'delay'
                             93 ;------------------------------------------------------------
                             94 ;num                       Allocated to registers r2 
                             95 ;i                         Allocated to registers r3 r4 
                             96 ;j                         Allocated to registers r5 r6 
                             97 ;------------------------------------------------------------
                             98 ;	common.c:10: void delay(char num)
                             99 ;	-----------------------------------------
                            100 ;	 function delay
                            101 ;	-----------------------------------------
   0408                     102 _delay:
                    0002    103 	ar2 = 0x02
                    0003    104 	ar3 = 0x03
                    0004    105 	ar4 = 0x04
                    0005    106 	ar5 = 0x05
                    0006    107 	ar6 = 0x06
                    0007    108 	ar7 = 0x07
                    0000    109 	ar0 = 0x00
                    0001    110 	ar1 = 0x01
   0408 AA 82               111 	mov	r2,dpl
                            112 ;	common.c:20: while(num){
   040A                     113 00101$:
   040A EA                  114 	mov	a,r2
   040B 60 35               115 	jz	00103$
                            116 ;	common.c:21: for(i=200;i>0;i--)
   040D 7B C8               117 	mov	r3,#0xC8
   040F 7C 00               118 	mov	r4,#0x00
   0411                     119 00108$:
   0411 C3                  120 	clr	c
   0412 E4                  121 	clr	a
   0413 9B                  122 	subb	a,r3
   0414 74 80               123 	mov	a,#(0x00 ^ 0x80)
   0416 8C F0               124 	mov	b,r4
   0418 63 F0 80            125 	xrl	b,#0x80
   041B 95 F0               126 	subb	a,b
   041D 50 20               127 	jnc	00111$
                            128 ;	common.c:22: for(j=200;j>0;j--);
   041F 7D C8               129 	mov	r5,#0xC8
   0421 7E 00               130 	mov	r6,#0x00
   0423                     131 00104$:
   0423 C3                  132 	clr	c
   0424 E4                  133 	clr	a
   0425 9D                  134 	subb	a,r5
   0426 74 80               135 	mov	a,#(0x00 ^ 0x80)
   0428 8E F0               136 	mov	b,r6
   042A 63 F0 80            137 	xrl	b,#0x80
   042D 95 F0               138 	subb	a,b
   042F 50 07               139 	jnc	00110$
   0431 1D                  140 	dec	r5
   0432 BD FF EE            141 	cjne	r5,#0xff,00104$
   0435 1E                  142 	dec	r6
   0436 80 EB               143 	sjmp	00104$
   0438                     144 00110$:
                            145 ;	common.c:21: for(i=200;i>0;i--)
   0438 1B                  146 	dec	r3
   0439 BB FF D5            147 	cjne	r3,#0xff,00108$
   043C 1C                  148 	dec	r4
   043D 80 D2               149 	sjmp	00108$
   043F                     150 00111$:
                            151 ;	common.c:23: num--;
   043F 1A                  152 	dec	r2
   0440 80 C8               153 	sjmp	00101$
   0442                     154 00103$:
                            155 ;	common.c:25: return;
   0442 22                  156 	ret
                            157 ;------------------------------------------------------------
                            158 ;Allocation info for local variables in function 'delay_ms'
                            159 ;------------------------------------------------------------
                            160 ;num                       Allocated to registers r2 r3 
                            161 ;j                         Allocated to registers r4 
                            162 ;------------------------------------------------------------
                            163 ;	common.c:28: void delay_ms(int num)
                            164 ;	-----------------------------------------
                            165 ;	 function delay_ms
                            166 ;	-----------------------------------------
   0443                     167 _delay_ms:
   0443 AA 82               168 	mov	r2,dpl
   0445 AB 83               169 	mov	r3,dph
                            170 ;	common.c:38: while(num){
   0447                     171 00101$:
   0447 EA                  172 	mov	a,r2
   0448 4B                  173 	orl	a,r3
   0449 60 18               174 	jz	00103$
                            175 ;	common.c:39: for(j=40; j>0; j--);
   044B 7C 28               176 	mov	r4,#0x28
   044D                     177 00104$:
   044D C3                  178 	clr	c
   044E 74 80               179 	mov	a,#(0x00 ^ 0x80)
   0450 8C F0               180 	mov	b,r4
   0452 63 F0 80            181 	xrl	b,#0x80
   0455 95 F0               182 	subb	a,b
   0457 50 03               183 	jnc	00107$
   0459 1C                  184 	dec	r4
   045A 80 F1               185 	sjmp	00104$
   045C                     186 00107$:
                            187 ;	common.c:40: num--;
   045C 1A                  188 	dec	r2
   045D BA FF E7            189 	cjne	r2,#0xff,00101$
   0460 1B                  190 	dec	r3
   0461 80 E4               191 	sjmp	00101$
   0463                     192 00103$:
                            193 ;	common.c:42: return;
   0463 22                  194 	ret
                            195 	.area CSEG    (CODE)
                            196 	.area CONST   (CODE)
                            197 	.area XINIT   (CODE)
                            198 	.area CABS    (ABS,CODE)
