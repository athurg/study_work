;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.7.0 #4818 (May 31 2007)
; This file generated Sun Dec 14 13:15:36 2008
;--------------------------------------------------------
	.module common
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay
	.globl _delay_ms
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;num                       Allocated to registers r2 
;i                         Allocated to registers r3 r4 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	common.c:9: void delay(char num)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
;	common.c:18: while(num){
00101$:
	mov	a,r2
	jz	00103$
;	common.c:19: for(i=200;i>0;i--)
	mov	r3,#0xC8
	mov	r4,#0x00
00108$:
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	common.c:20: for(j=200;j>0;j--);
	mov	r5,#0xC8
	mov	r6,#0x00
00104$:
	clr	c
	clr	a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
	dec	r5
	cjne	r5,#0xff,00104$
	dec	r6
	sjmp	00104$
00110$:
;	common.c:19: for(i=200;i>0;i--)
	dec	r3
	cjne	r3,#0xff,00108$
	dec	r4
	sjmp	00108$
00111$:
;	common.c:21: num--;
	dec	r2
	sjmp	00101$
00103$:
;	common.c:23: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;num                       Allocated to registers r2 r3 
;j                         Allocated to registers r4 
;------------------------------------------------------------
;	common.c:26: void delay_ms(int num)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r2,dpl
	mov	r3,dph
;	common.c:35: while(num){
00101$:
	mov	a,r2
	orl	a,r3
	jz	00103$
;	common.c:36: for(j=40; j>0; j--);
	mov	r4,#0x28
00104$:
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	dec	r4
	sjmp	00104$
00107$:
;	common.c:37: num--;
	dec	r2
	cjne	r2,#0xff,00101$
	dec	r3
	sjmp	00101$
00103$:
;	common.c:39: return;
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
