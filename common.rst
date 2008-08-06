                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
                              4 ; This file was generated Mon Aug  4 20:37:20 2008
                              5 ;--------------------------------------------------------
                              6 	.module common
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _delay
                             13 ;--------------------------------------------------------
                             14 ; special function registers
                             15 ;--------------------------------------------------------
                             16 	.area RSEG    (DATA)
                             17 ;--------------------------------------------------------
                             18 ; special function bits
                             19 ;--------------------------------------------------------
                             20 	.area RSEG    (DATA)
                             21 ;--------------------------------------------------------
                             22 ; overlayable register banks
                             23 ;--------------------------------------------------------
                             24 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      25 	.ds 8
                             26 ;--------------------------------------------------------
                             27 ; internal ram data
                             28 ;--------------------------------------------------------
                             29 	.area DSEG    (DATA)
                             30 ;--------------------------------------------------------
                             31 ; overlayable items in internal ram 
                             32 ;--------------------------------------------------------
                             33 	.area	OSEG    (OVR,DATA)
                             34 ;--------------------------------------------------------
                             35 ; indirectly addressable internal ram data
                             36 ;--------------------------------------------------------
                             37 	.area ISEG    (DATA)
                             38 ;--------------------------------------------------------
                             39 ; absolute internal ram data
                             40 ;--------------------------------------------------------
                             41 	.area IABS    (ABS,DATA)
                             42 	.area IABS    (ABS,DATA)
                             43 ;--------------------------------------------------------
                             44 ; bit data
                             45 ;--------------------------------------------------------
                             46 	.area BSEG    (BIT)
                             47 ;--------------------------------------------------------
                             48 ; paged external ram data
                             49 ;--------------------------------------------------------
                             50 	.area PSEG    (PAG,XDATA)
                             51 ;--------------------------------------------------------
                             52 ; external ram data
                             53 ;--------------------------------------------------------
                             54 	.area XSEG    (XDATA)
                             55 ;--------------------------------------------------------
                             56 ; absolute external ram data
                             57 ;--------------------------------------------------------
                             58 	.area XABS    (ABS,XDATA)
                             59 ;--------------------------------------------------------
                             60 ; external initialized ram data
                             61 ;--------------------------------------------------------
                             62 	.area XISEG   (XDATA)
                             63 	.area HOME    (CODE)
                             64 	.area GSINIT0 (CODE)
                             65 	.area GSINIT1 (CODE)
                             66 	.area GSINIT2 (CODE)
                             67 	.area GSINIT3 (CODE)
                             68 	.area GSINIT4 (CODE)
                             69 	.area GSINIT5 (CODE)
                             70 	.area GSINIT  (CODE)
                             71 	.area GSFINAL (CODE)
                             72 	.area CSEG    (CODE)
                             73 ;--------------------------------------------------------
                             74 ; global & static initialisations
                             75 ;--------------------------------------------------------
                             76 	.area HOME    (CODE)
                             77 	.area GSINIT  (CODE)
                             78 	.area GSFINAL (CODE)
                             79 	.area GSINIT  (CODE)
                             80 ;--------------------------------------------------------
                             81 ; Home
                             82 ;--------------------------------------------------------
                             83 	.area HOME    (CODE)
                             84 	.area HOME    (CODE)
                             85 ;--------------------------------------------------------
                             86 ; code
                             87 ;--------------------------------------------------------
                             88 	.area CSEG    (CODE)
                             89 ;------------------------------------------------------------
                             90 ;Allocation info for local variables in function 'delay'
                             91 ;------------------------------------------------------------
                             92 ;num                       Allocated to registers r2 
                             93 ;i                         Allocated to registers r3 r4 
                             94 ;j                         Allocated to registers r5 r6 
                             95 ;------------------------------------------------------------
                             96 ;	common.c:16: void delay(char num)
                             97 ;	-----------------------------------------
                             98 ;	 function delay
                             99 ;	-----------------------------------------
   0783                     100 _delay:
                    0002    101 	ar2 = 0x02
                    0003    102 	ar3 = 0x03
                    0004    103 	ar4 = 0x04
                    0005    104 	ar5 = 0x05
                    0006    105 	ar6 = 0x06
                    0007    106 	ar7 = 0x07
                    0000    107 	ar0 = 0x00
                    0001    108 	ar1 = 0x01
   0783 AA 82               109 	mov	r2,dpl
                            110 ;	common.c:26: while(num){
   0785                     111 00101$:
   0785 EA                  112 	mov	a,r2
   0786 60 35               113 	jz	00103$
                            114 ;	common.c:27: for(i=200;i>0;i--)
   0788 7B C8               115 	mov	r3,#0xC8
   078A 7C 00               116 	mov	r4,#0x00
   078C                     117 00108$:
   078C C3                  118 	clr	c
   078D E4                  119 	clr	a
   078E 9B                  120 	subb	a,r3
   078F 74 80               121 	mov	a,#(0x00 ^ 0x80)
   0791 8C F0               122 	mov	b,r4
   0793 63 F0 80            123 	xrl	b,#0x80
   0796 95 F0               124 	subb	a,b
   0798 50 20               125 	jnc	00111$
                            126 ;	common.c:28: for(j=200;j>0;j--);
   079A 7D C8               127 	mov	r5,#0xC8
   079C 7E 00               128 	mov	r6,#0x00
   079E                     129 00104$:
   079E C3                  130 	clr	c
   079F E4                  131 	clr	a
   07A0 9D                  132 	subb	a,r5
   07A1 74 80               133 	mov	a,#(0x00 ^ 0x80)
   07A3 8E F0               134 	mov	b,r6
   07A5 63 F0 80            135 	xrl	b,#0x80
   07A8 95 F0               136 	subb	a,b
   07AA 50 07               137 	jnc	00110$
   07AC 1D                  138 	dec	r5
   07AD BD FF EE            139 	cjne	r5,#0xff,00104$
   07B0 1E                  140 	dec	r6
   07B1 80 EB               141 	sjmp	00104$
   07B3                     142 00110$:
                            143 ;	common.c:27: for(i=200;i>0;i--)
   07B3 1B                  144 	dec	r3
   07B4 BB FF D5            145 	cjne	r3,#0xff,00108$
   07B7 1C                  146 	dec	r4
   07B8 80 D2               147 	sjmp	00108$
   07BA                     148 00111$:
                            149 ;	common.c:29: num--;
   07BA 1A                  150 	dec	r2
   07BB 80 C8               151 	sjmp	00101$
   07BD                     152 00103$:
                            153 ;	common.c:31: return;
   07BD 22                  154 	ret
                            155 	.area CSEG    (CODE)
                            156 	.area CONST   (CODE)
                            157 	.area XINIT   (CODE)
                            158 	.area CABS    (ABS,CODE)
