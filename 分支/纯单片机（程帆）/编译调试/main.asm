;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.7.0 #4818 (May 31 2007)
; This file generated Sun Dec 14 13:15:37 2008
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WaveDB
	.globl _main
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
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
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
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
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
	.globl _P0
	.globl _Tl1
	.globl _Th1
	.globl _Counter
	.globl _Signal
	.globl _KeyCache
	.globl _State
	.globl _sys_init
	.globl _flush
	.globl _refresh
	.globl _timer_service
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
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
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
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
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
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
_State::
	.ds 1
_KeyCache::
	.ds 4
_Signal::
	.ds 6
_Counter::
	.ds 1
_Th1::
	.ds 1
_Tl1::
	.ds 1
_main_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_timer_service
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:27: unsigned char State=0;		//状态变量,0为待机、1波形、2周期、3幅度
	mov	_State,#0x00
;	main.c:28: long int KeyCache=0;		//键盘输入缓存
	clr	a
	mov	_KeyCache,a
	mov	(_KeyCache + 1),a
	mov	(_KeyCache + 2),a
	mov	(_KeyCache + 3),a
;	main.c:33: }Signal={1,1000,5};
	mov	_Signal,#0x01
	mov	(_Signal + 0x0001),#0xE8
	mov	((_Signal + 0x0001) + 1),#0x03
	mov	((_Signal + 0x0001) + 2),#0x00
	mov	((_Signal + 0x0001) + 3),#0x00
	mov	(_Signal + 0x0005),#0x05
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sys_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:43: void sys_init(void)
;	-----------------------------------------
;	 function sys_init
;	-----------------------------------------
_sys_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	main.c:49: Counter=0x00;
	mov	_Counter,#0x00
;	main.c:50: Th1=0xff;
	mov	_Th1,#0xFF
;	main.c:51: Tl1=0xff;
	mov	_Tl1,#0xFF
;	main.c:54: lcd_init();
	lcall	_lcd_init
;	main.c:55: refresh();
	lcall	_refresh
;	main.c:58: TH1=Th1;
	mov	_TH1,_Th1
;	main.c:59: TL1=Tl1;
	mov	_TL1,_Tl1
;	main.c:60: TMOD=0x10;
	mov	_TMOD,#0x10
;	main.c:63: EA=1;
	setb	_EA
;	main.c:64: ET1=1;
	setb	_ET1
;	main.c:65: TR1=1;
	setb	_TR1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flush'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:68: void flush(void)
;	-----------------------------------------
;	 function flush
;	-----------------------------------------
_flush:
;	main.c:73: switch(State){
	mov	a,#0x01
	cjne	a,_State,00110$
	sjmp	00101$
00110$:
	mov	a,#0x02
	cjne	a,_State,00111$
	sjmp	00102$
00111$:
	mov	a,#0x03
	cjne	a,_State,00112$
	ljmp	00103$
00112$:
	ret
;	main.c:74: case 1://波形
00101$:
;	main.c:75: Signal.w=--KeyCache;
	dec	_KeyCache
	mov	a,#0xff
	cjne	a,_KeyCache,00113$
	dec	(_KeyCache + 1)
	cjne	a,(_KeyCache + 1),00113$
	dec	(_KeyCache + 2)
	cjne	a,(_KeyCache + 2),00113$
	dec	(_KeyCache + 3)
00113$:
	mov	r2,_KeyCache
	mov	_Signal,r2
;	main.c:76: break;
	ret
;	main.c:77: case 2://周期
00102$:
;	main.c:78: Signal.c=KeyCache;
	mov	(_Signal + 0x0001),_KeyCache
	mov	((_Signal + 0x0001) + 1),(_KeyCache + 1)
	mov	((_Signal + 0x0001) + 2),(_KeyCache + 2)
	mov	((_Signal + 0x0001) + 3),(_KeyCache + 3)
;	main.c:79: KeyCache>>=6;
	mov	a,(_KeyCache + 1)
	mov	c,acc.7
	xch	a,_KeyCache
	rlc	a
	xch	a,_KeyCache
	rlc	a
	mov	c,acc.7
	xch	a,_KeyCache
	rlc	a
	xch	a,_KeyCache
	rlc	a
	xch	a,_KeyCache
	anl	a,#0x03
	mov	(_KeyCache + 1),a
	mov	a,(_KeyCache + 2)
	add	a,(_KeyCache + 2)
	add	a,acc
	orl	a,(_KeyCache + 1)
	mov	(_KeyCache + 1),a
	mov	a,(_KeyCache + 3)
	mov	c,acc.7
	xch	a,(_KeyCache + 2)
	rlc	a
	xch	a,(_KeyCache + 2)
	rlc	a
	mov	c,acc.7
	xch	a,(_KeyCache + 2)
	rlc	a
	xch	a,(_KeyCache + 2)
	rlc	a
	xch	a,(_KeyCache + 2)
	anl	a,#0x03
	jnb	acc.1,00114$
	orl	a,#0xfc
00114$:
	mov	(_KeyCache + 3),a
;	main.c:80: KeyCache=0xffff-KeyCache;
	mov	a,#0xFF
	clr	c
	subb	a,_KeyCache
	mov	_KeyCache,a
	mov	a,#0xFF
	subb	a,(_KeyCache + 1)
	mov	(_KeyCache + 1),a
	clr	a
	subb	a,(_KeyCache + 2)
	mov	(_KeyCache + 2),a
	clr	a
	subb	a,(_KeyCache + 3)
	mov	(_KeyCache + 3),a
;	main.c:81: KeyCache+=0x2a;
	mov	a,#0x2A
	add	a,_KeyCache
	mov	_KeyCache,a
	clr	a
	addc	a,(_KeyCache + 1)
	mov	(_KeyCache + 1),a
	clr	a
	addc	a,(_KeyCache + 2)
	mov	(_KeyCache + 2),a
	clr	a
	addc	a,(_KeyCache + 3)
	mov	(_KeyCache + 3),a
;	main.c:82: Tl1=KeyCache;
	mov	_Tl1,_KeyCache
;	main.c:83: Th1=(KeyCache)>>8;
	mov	_Th1,(_KeyCache + 1)
;	main.c:84: break;
;	main.c:85: case 3://幅度
	ret
00103$:
;	main.c:86: Signal.a=KeyCache;
	mov	r2,_KeyCache
	mov	(_Signal + 0x0005),r2
;	main.c:87: DB_BUS=Signal.a;
	mov	_P0,r2
;	main.c:88: A_CS=0;
	clr	_P3_4
;	main.c:90: A_CS=1;
	setb	_P3_4
;	main.c:92: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'refresh'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:95: void refresh(void)
;	-----------------------------------------
;	 function refresh
;	-----------------------------------------
_refresh:
;	main.c:100: lcd_cls();
	lcall	_lcd_cls
;	main.c:101: switch(State){
	mov	a,_State
	add	a,#0xff - 0x03
	jnc	00124$
	ljmp	00114$
00124$:
	mov	a,_State
	add	a,_State
	add	a,_State
	mov	dptr,#00125$
	jmp	@a+dptr
00125$:
	ljmp	00101$
	ljmp	00106$
	ljmp	00112$
	ljmp	00113$
;	main.c:102: case 0:
00101$:
;	main.c:103: switch(Signal.w){
	mov	r2,_Signal
	cjne	r2,#0x00,00126$
	sjmp	00102$
00126$:
	cjne	r2,#0x01,00127$
	sjmp	00103$
00127$:
;	main.c:104: case 0:lcd_printsxy("Sine    A=   Vol",0,0);	break;
	cjne	r2,#0x02,00105$
	sjmp	00104$
00102$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:105: case 1:lcd_printsxy("Rect    A=   Vol",0,0);	break;
	sjmp	00105$
00103$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:106: case 2:lcd_printsxy("Tria    A=   Vol",0,0);	break;
	sjmp	00105$
00104$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:107: }
00105$:
;	main.c:108: lcd_printnxy(Signal.a,12,0);
	mov	r2,(_Signal + 0x0005)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	_lcd_printnxy_PARM_2,#0x0C
	mov	_lcd_printnxy_PARM_3,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_lcd_printnxy
;	main.c:109: lcd_printsxy("C=        uS",0,1);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:110: lcd_printnxy(Signal.c,8,1);
	mov	_lcd_printnxy_PARM_2,#0x08
	mov	_lcd_printnxy_PARM_3,#0x01
	mov	dpl,(_Signal + 0x0001)
	mov	dph,((_Signal + 0x0001) + 1)
	mov	b,((_Signal + 0x0001) + 2)
	mov	a,((_Signal + 0x0001) + 3)
	lcall	_lcd_printnxy
;	main.c:111: break;
	ljmp	00114$
;	main.c:112: case 1:
00106$:
;	main.c:113: lcd_printsxy("Wave Select",0,0);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:114: switch(KeyCache){
	mov	a,#0x01
	cjne	a,_KeyCache,00129$
	clr	a
	cjne	a,(_KeyCache + 1),00129$
	clr	a
	cjne	a,(_KeyCache + 2),00129$
	clr	a
	cjne	a,(_KeyCache + 3),00129$
	sjmp	00107$
00129$:
	mov	a,#0x02
	cjne	a,_KeyCache,00130$
	clr	a
	cjne	a,(_KeyCache + 1),00130$
	clr	a
	cjne	a,(_KeyCache + 2),00130$
	clr	a
	cjne	a,(_KeyCache + 3),00130$
	sjmp	00108$
00130$:
	mov	a,#0x03
	cjne	a,_KeyCache,00131$
	clr	a
	cjne	a,(_KeyCache + 1),00131$
	clr	a
	cjne	a,(_KeyCache + 2),00131$
	clr	a
	cjne	a,(_KeyCache + 3),00131$
	sjmp	00109$
00131$:
;	main.c:115: case 1: lcd_printsxy("Sine Wave",0,1);break;
	sjmp	00110$
00107$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_lcd_printsxy
	ljmp	00114$
;	main.c:116: case 2: lcd_printsxy("Rect Wave",0,1);break;
00108$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_lcd_printsxy
	ljmp	00114$
;	main.c:117: case 3: lcd_printsxy("Tria Wave",0,1);break;
00109$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_7
	mov	b,#0x80
	lcall	_lcd_printsxy
	ljmp	00114$
;	main.c:118: default: lcd_printsxy("1.Sin 2.Rec 3.Tri",0,1);break;
00110$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_8
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:120: break;
;	main.c:121: case 2:
	sjmp	00114$
00112$:
;	main.c:122: lcd_printsxy("Cycle  Setting",0,0);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:123: lcd_printsxy(" uS",13,1);
	mov	_lcd_printsxy_PARM_2,#0x0D
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_10
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:124: lcd_printnxy(KeyCache,12,1);
	mov	_lcd_printnxy_PARM_2,#0x0C
	mov	_lcd_printnxy_PARM_3,#0x01
	mov	dpl,_KeyCache
	mov	dph,(_KeyCache + 1)
	mov	b,(_KeyCache + 2)
	mov	a,(_KeyCache + 3)
	lcall	_lcd_printnxy
;	main.c:125: break;
;	main.c:126: case 3:
	sjmp	00114$
00113$:
;	main.c:127: lcd_printsxy("Ample  Setting",0,0);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_11
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:128: lcd_printsxy("Vol",13,1);
	mov	_lcd_printsxy_PARM_2,#0x0D
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_12
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:129: lcd_printnxy(KeyCache,12,1);
	mov	_lcd_printnxy_PARM_2,#0x0C
	mov	_lcd_printnxy_PARM_3,#0x01
	mov	dpl,_KeyCache
	mov	dph,(_KeyCache + 1)
	mov	b,(_KeyCache + 2)
	mov	a,(_KeyCache + 3)
	lcall	_lcd_printnxy
;	main.c:131: }
00114$:
;	main.c:132: delay(1);
	mov	dpl,#0x01
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_service'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:135: void timer_service(void) interrupt 3
;	-----------------------------------------
;	 function timer_service
;	-----------------------------------------
_timer_service:
	push	acc
	push	dpl
	push	dph
	push	ar2
	push	ar3
	push	ar4
	push	psw
	mov	psw,#0x00
;	main.c:140: DB_BUS=WaveDB[Signal.w][Counter++];
	mov	a,_Signal
	rr	a
	rr	a
	anl	a,#0xc0
	add	a,#_WaveDB
	mov	r2,a
	clr	a
	addc	a,#(_WaveDB >> 8)
	mov	r3,a
	mov	r4,_Counter
	inc	_Counter
	mov	a,r4
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	main.c:141: if(Counter==64)	Counter=0x00;
	mov	a,#0x40
	cjne	a,_Counter,00102$
	mov	_Counter,#0x00
00102$:
;	main.c:142: TH1=Th1;TL1=Tl1;
	mov	_TH1,_Th1
	mov	_TL1,_Tl1
	pop	psw
	pop	ar4
	pop	ar3
	pop	ar2
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop ar0
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;key                       Allocated to registers r2 
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;------------------------------------------------------------
;	main.c:145: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:149: sys_init();
	lcall	_sys_init
;	main.c:151: while(1){
00118$:
;	main.c:152: key=key_make(key_scan());
	lcall	_key_scan
	lcall	_key_make
	mov	r2,dpl
;	main.c:153: if(key=='F'){
	cjne	r2,#0x46,00132$
	sjmp	00118$
00132$:
;	main.c:155: }else if(key>20){ //菜单键
	mov	a,r2
	add	a,#0xff - 0x14
	jnc	00112$
;	main.c:156: TR1=0;
	clr	_TR1
;	main.c:157: State=key-20;
	mov	a,r2
	add	a,#0xec
	mov	_State,a
;	main.c:158: KeyCache=0;	//清空输入缓存
	clr	a
	mov	_KeyCache,a
	mov	(_KeyCache + 1),a
	mov	(_KeyCache + 2),a
	mov	(_KeyCache + 3),a
	ljmp	00116$
00112$:
;	main.c:159: }else if(key>10){ //功能键
	mov	a,r2
	add	a,#0xff - 0x0A
	jnc	00109$
;	main.c:160: key-=11;
	mov	a,r2
	add	a,#0xf5
;	main.c:161: if(key)		flush();	//功能处理
	mov	r2,a
	jz	00102$
	lcall	_flush
00102$:
;	main.c:162: KeyCache=0;
;	main.c:163: State=0;
	clr	a
	mov	_KeyCache,a
	mov	(_KeyCache + 1),a
	mov	(_KeyCache + 2),a
	mov	(_KeyCache + 3),a
	mov	_State,a
;	main.c:164: refresh();
	lcall	_refresh
;	main.c:165: delay(1);
	mov	dpl,#0x01
	lcall	_delay
;	main.c:166: TR1=1;	//开中断，出波形
	setb	_TR1
;	main.c:167: continue;
	sjmp	00118$
00109$:
;	main.c:168: }else if(State){	//设置态数字键
	mov	a,_State
	jnz	00136$
	ljmp	00116$
00136$:
;	main.c:170: if(State==1)	KeyCache=key;
	mov	a,#0x01
	cjne	a,_State,00104$
	mov	_KeyCache,r2
	mov	(_KeyCache + 1),#0x00
	mov	(_KeyCache + 2),#0x00
	mov	(_KeyCache + 3),#0x00
	sjmp	00116$
00104$:
;	main.c:171: else		KeyCache=KeyCache>99999 ? 0 : (key+KeyCache*10);
	clr	c
	mov	a,#0x9F
	subb	a,_KeyCache
	mov	a,#0x86
	subb	a,(_KeyCache + 1)
	mov	a,#0x01
	subb	a,(_KeyCache + 2)
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_KeyCache + 3)
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	sjmp	00123$
00122$:
	mov	r3,#0x00
	mov	__mullong_PARM_2,_KeyCache
	mov	(__mullong_PARM_2 + 1),(_KeyCache + 1)
	mov	(__mullong_PARM_2 + 2),(_KeyCache + 2)
	mov	(__mullong_PARM_2 + 3),(_KeyCache + 3)
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	push	ar2
	push	ar3
	lcall	__mullong
	mov	_main_sloc1_1_0,dpl
	mov	(_main_sloc1_1_0 + 1),dph
	mov	(_main_sloc1_1_0 + 2),b
	mov	(_main_sloc1_1_0 + 3),a
	pop	ar3
	pop	ar2
	mov	a,r3
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	a,_main_sloc1_1_0
	add	a,r2
	mov	r3,a
	mov	a,(_main_sloc1_1_0 + 1)
	addc	a,r7
	mov	r4,a
	mov	a,(_main_sloc1_1_0 + 2)
	addc	a,r0
	mov	r5,a
	mov	a,(_main_sloc1_1_0 + 3)
	addc	a,r1
	mov	r6,a
00123$:
	mov	_KeyCache,r3
	mov	(_KeyCache + 1),r4
	mov	(_KeyCache + 2),r5
	mov	(_KeyCache + 3),r6
00116$:
;	main.c:173: refresh();
	lcall	_refresh
;	main.c:174: delay(1);
	mov	dpl,#0x01
	lcall	_delay
	ljmp	00118$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_WaveDB:
	.db #0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0xFF
	.db #0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__str_0:
	.ascii "Sine    A=   Vol"
	.db 0x00
__str_1:
	.ascii "Rect    A=   Vol"
	.db 0x00
__str_2:
	.ascii "Tria    A=   Vol"
	.db 0x00
__str_3:
	.ascii "C=        uS"
	.db 0x00
__str_4:
	.ascii "Wave Select"
	.db 0x00
__str_5:
	.ascii "Sine Wave"
	.db 0x00
__str_6:
	.ascii "Rect Wave"
	.db 0x00
__str_7:
	.ascii "Tria Wave"
	.db 0x00
__str_8:
	.ascii "1.Sin 2.Rec 3.Tri"
	.db 0x00
__str_9:
	.ascii "Cycle  Setting"
	.db 0x00
__str_10:
	.ascii " uS"
	.db 0x00
__str_11:
	.ascii "Ample  Setting"
	.db 0x00
__str_12:
	.ascii "Vol"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
