;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
; This file was generated Mon Sep 29 09:23:29 2008
;--------------------------------------------------------
	.module keypad
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _IE
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _key_make
	.globl _key_scan
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_IE	=	0x00a8
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
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
_key_make_keytable_1_1::
	.ds 34
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
;Allocation info for local variables in function 'key_make'
;------------------------------------------------------------
;key                       Allocated to registers r2 
;i                         Allocated to registers r3 
;keytable                  Allocated with name '_key_make_keytable_1_1'
;------------------------------------------------------------
;	keypad.c:4: char key_make(char key)
;	-----------------------------------------
;	 function key_make
;	-----------------------------------------
_key_make:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
;	keypad.c:15: struct keypad keytable[]={
	mov	_key_make_keytable_1_1,#0xEE
	mov	(_key_make_keytable_1_1 + 0x0001),#0x01
	mov	(_key_make_keytable_1_1 + 0x0002),#0xDE
	mov	(_key_make_keytable_1_1 + 0x0003),#0x02
	mov	(_key_make_keytable_1_1 + 0x0004),#0xBE
	mov	(_key_make_keytable_1_1 + 0x0005),#0x03
	mov	(_key_make_keytable_1_1 + 0x0006),#0x7E
	mov	(_key_make_keytable_1_1 + 0x0007),#0x77
	mov	(_key_make_keytable_1_1 + 0x0008),#0xED
	mov	(_key_make_keytable_1_1 + 0x0009),#0x06
	mov	(_key_make_keytable_1_1 + 0x000a),#0xDD
	mov	(_key_make_keytable_1_1 + 0x000b),#0x05
	mov	(_key_make_keytable_1_1 + 0x000c),#0xBD
	mov	(_key_make_keytable_1_1 + 0x000d),#0x04
	mov	(_key_make_keytable_1_1 + 0x000e),#0x7D
	mov	(_key_make_keytable_1_1 + 0x000f),#0x66
	mov	(_key_make_keytable_1_1 + 0x0010),#0xEB
	mov	(_key_make_keytable_1_1 + 0x0011),#0x07
	mov	(_key_make_keytable_1_1 + 0x0012),#0xDB
	mov	(_key_make_keytable_1_1 + 0x0013),#0x08
	mov	(_key_make_keytable_1_1 + 0x0014),#0xBB
	mov	(_key_make_keytable_1_1 + 0x0015),#0x09
	mov	(_key_make_keytable_1_1 + 0x0016),#0x7B
	mov	(_key_make_keytable_1_1 + 0x0017),#0x61
	mov	(_key_make_keytable_1_1 + 0x0018),#0xE7
	mov	(_key_make_keytable_1_1 + 0x0019),#0x0A
	mov	(_key_make_keytable_1_1 + 0x001a),#0xD7
	mov	(_key_make_keytable_1_1 + 0x001b),#0x00
	mov	(_key_make_keytable_1_1 + 0x001c),#0xB7
	mov	(_key_make_keytable_1_1 + 0x001d),#0x63
	mov	(_key_make_keytable_1_1 + 0x001e),#0x77
	mov	(_key_make_keytable_1_1 + 0x001f),#0x73
	mov	(_key_make_keytable_1_1 + 0x0020),#0x00
	mov	(_key_make_keytable_1_1 + 0x0021),#0x42
;	keypad.c:22: for(i=16;i>=0;i--)
	mov	r3,#0x10
00103$:
	mov	a,r3
	jb	acc.7,00106$
;	keypad.c:24: if(keytable[i].index==key)	return keytable[i].value;
	mov	a,r3
	add	a,r3
	mov	r4,a
	add	a,#_key_make_keytable_1_1
	mov	r0,a
	mov	a,@r0
	mov	r5,a
	cjne	a,ar2,00105$
	mov	a,r4
	add	a,#_key_make_keytable_1_1
	inc	a
	mov	r0,a
	mov	dpl,@r0
	ret
00105$:
;	keypad.c:22: for(i=16;i>=0;i--)
	dec	r3
	sjmp	00103$
00106$:
;	keypad.c:26: return 0x00;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_scan'
;------------------------------------------------------------
;line                      Allocated to registers r2 
;------------------------------------------------------------
;	keypad.c:29: char key_scan(void)
;	-----------------------------------------
;	 function key_scan
;	-----------------------------------------
_key_scan:
;	keypad.c:43: char line=0x08;			//行扫描起始码(00001000B)
	mov	r2,#0x08
;	keypad.c:44: while(line)
00103$:
	mov	a,r2
	jz	00105$
;	keypad.c:46: P1=~line;
	mov	a,r2
	cpl	a
	mov	_P1,a
;	keypad.c:47: if((P1>>4)!=0x0f) break;
	mov	a,_P1
	swap	a
	anl	a,#0x0f
	mov	r3,a
	cjne	r3,#0x0F,00105$
;	keypad.c:48: line/=2;
	clr	F0
	mov	b,#0x02
	mov	a,r2
	jnb	acc.7,00114$
	cpl	F0
	cpl	a
	inc	a
00114$:
	div	ab
	jnb	F0,00115$
	cpl	a
	inc	a
00115$:
	mov	r2,a
	sjmp	00103$
00105$:
;	keypad.c:50: line=P1;
	mov	r2,_P1
;	keypad.c:51: P1=0xf0; //重新初始化P1口，自己的事情自己搞完
	mov	_P1,#0xF0
;	keypad.c:53: return line;
	mov	dpl,r2
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
