;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
; This file was generated Thu Oct  2 08:42:43 2008
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _sign
	.globl _keycache
	.globl _stand_pos
	.globl _stand_str
	.globl _state
	.globl _keypad_interrupt
	.globl _flush
	.globl _refresh
	.globl _interrupt_init
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_state::
	.ds 1
_stand_str::
	.ds 38
_stand_pos::
	.ds 1
_keycache::
	.ds 4
_sign::
	.ds 6
_keypad_interrupt_key_1_1:
	.ds 2
_keypad_interrupt_sloc0_1_0:
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
	ljmp	_keypad_interrupt
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
;	main.c:17: char state=0;	//状态变量,0为待机,W波形,F频率,A幅度
	mov	_state,#0x00
;	main.c:18: char stand_str[38]="     Wave;F=     KHz;A=   Vol   ";
	mov	_stand_str,#0x20
	mov	(_stand_str + 0x0001),#0x20
	mov	(_stand_str + 0x0002),#0x20
	mov	(_stand_str + 0x0003),#0x20
	mov	(_stand_str + 0x0004),#0x20
	mov	(_stand_str + 0x0005),#0x57
	mov	(_stand_str + 0x0006),#0x61
	mov	(_stand_str + 0x0007),#0x76
	mov	(_stand_str + 0x0008),#0x65
	mov	(_stand_str + 0x0009),#0x3B
	mov	(_stand_str + 0x000a),#0x46
	mov	(_stand_str + 0x000b),#0x3D
	mov	(_stand_str + 0x000c),#0x20
	mov	(_stand_str + 0x000d),#0x20
	mov	(_stand_str + 0x000e),#0x20
	mov	(_stand_str + 0x000f),#0x20
	mov	(_stand_str + 0x0010),#0x20
	mov	(_stand_str + 0x0011),#0x4B
	mov	(_stand_str + 0x0012),#0x48
	mov	(_stand_str + 0x0013),#0x7A
	mov	(_stand_str + 0x0014),#0x3B
	mov	(_stand_str + 0x0015),#0x41
	mov	(_stand_str + 0x0016),#0x3D
	mov	(_stand_str + 0x0017),#0x20
	mov	(_stand_str + 0x0018),#0x20
	mov	(_stand_str + 0x0019),#0x20
	mov	(_stand_str + 0x001a),#0x56
	mov	(_stand_str + 0x001b),#0x6F
	mov	(_stand_str + 0x001c),#0x6C
	mov	(_stand_str + 0x001d),#0x20
	mov	(_stand_str + 0x001e),#0x20
	mov	(_stand_str + 0x001f),#0x20
	mov	(_stand_str + 0x0020),#0x00
;	main.c:19: char stand_pos=0;	//控制待机时屏幕流动显示的位置；
	mov	_stand_pos,#0x00
;	main.c:21: long int keycache=0;		//键盘输入缓存
	clr	a
	mov	_keycache,a
	mov	(_keycache + 1),a
	mov	(_keycache + 2),a
	mov	(_keycache + 3),a
;	main.c:26: }sign={1,1000,5};
	mov	_sign,#0x01
	mov	(_sign + 0x0001),#0xE8
	mov	((_sign + 0x0001) + 1),#0x03
	mov	((_sign + 0x0001) + 2),#0x00
	mov	((_sign + 0x0001) + 3),#0x00
	mov	(_sign + 0x0005),#0x05
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
;Allocation info for local variables in function 'keypad_interrupt'
;------------------------------------------------------------
;key                       Allocated with name '_keypad_interrupt_key_1_1'
;sloc0                     Allocated with name '_keypad_interrupt_sloc0_1_0'
;------------------------------------------------------------
;	main.c:40: void keypad_interrupt(void) interrupt 0
;	-----------------------------------------
;	 function keypad_interrupt
;	-----------------------------------------
_keypad_interrupt:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;	main.c:50: key=key_make(key_scan());
	lcall	_key_scan
	lcall	_key_make
	mov	a,dpl
	mov	r2,a
	mov	_keypad_interrupt_key_1_1,a
	rlc	a
	subb	a,acc
	mov	(_keypad_interrupt_key_1_1 + 1),a
;	main.c:52: if(key>10){	//功能区
	clr	c
	mov	a,#0x0A
	subb	a,_keypad_interrupt_key_1_1
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_keypad_interrupt_key_1_1 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	main.c:53: key-=20;
	mov	a,_keypad_interrupt_key_1_1
	add	a,#0xec
	mov	_keypad_interrupt_key_1_1,a
	mov	a,(_keypad_interrupt_key_1_1 + 1)
	addc	a,#0xff
	mov	(_keypad_interrupt_key_1_1 + 1),a
;	main.c:54: if(key==4)		flush();	//功能处理
	mov	a,#0x04
	cjne	a,_keypad_interrupt_key_1_1,00122$
	clr	a
	cjne	a,(_keypad_interrupt_key_1_1 + 1),00122$
	sjmp	00123$
00122$:
	sjmp	00102$
00123$:
	lcall	_flush
	sjmp	00103$
00102$:
;	main.c:55: else			state=key;
	mov	_state,_keypad_interrupt_key_1_1
00103$:
;	main.c:56: keycache=0;	//清空输入缓存
	clr	a
	mov	_keycache,a
	mov	(_keycache + 1),a
	mov	(_keycache + 2),a
	mov	(_keycache + 3),a
	ljmp	00111$
00110$:
;	main.c:57: }else if(state){	//非设置状态的数字按键丢弃
	mov	a,_state
	jnz	00124$
	ljmp	00111$
00124$:
;	main.c:58: if(state==1)	keycache=key;//波形选择只收集一次按键
	mov	a,#0x01
	cjne	a,_state,00105$
	mov	_keycache,_keypad_interrupt_key_1_1
	mov	a,(_keypad_interrupt_key_1_1 + 1)
	mov	(_keycache + 1),a
	rlc	a
	subb	a,acc
	mov	(_keycache + 2),a
	mov	(_keycache + 3),a
	sjmp	00111$
00105$:
;	main.c:59: else		keycache=keycache>999999999 ? 0 : (key+keycache*10);	//频率幅度需要叠加
	clr	c
	mov	a,#0xFF
	subb	a,_keycache
	mov	a,#0xC9
	subb	a,(_keycache + 1)
	mov	a,#0x9A
	subb	a,(_keycache + 2)
	mov	a,#(0x3B ^ 0x80)
	mov	b,(_keycache + 3)
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00115$
00114$:
	mov	__mullong_PARM_2,_keycache
	mov	(__mullong_PARM_2 + 1),(_keycache + 1)
	mov	(__mullong_PARM_2 + 2),(_keycache + 2)
	mov	(__mullong_PARM_2 + 3),(_keycache + 3)
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	_keypad_interrupt_sloc0_1_0,dpl
	mov	(_keypad_interrupt_sloc0_1_0 + 1),dph
	mov	(_keypad_interrupt_sloc0_1_0 + 2),b
	mov	(_keypad_interrupt_sloc0_1_0 + 3),a
	mov	r2,_keypad_interrupt_key_1_1
	mov	a,(_keypad_interrupt_key_1_1 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	a,_keypad_interrupt_sloc0_1_0
	add	a,r2
	mov	r4,a
	mov	a,(_keypad_interrupt_sloc0_1_0 + 1)
	addc	a,r3
	mov	r5,a
	mov	a,(_keypad_interrupt_sloc0_1_0 + 2)
	addc	a,r0
	mov	r6,a
	mov	a,(_keypad_interrupt_sloc0_1_0 + 3)
	addc	a,r1
	mov	r7,a
00115$:
	mov	_keycache,r4
	mov	(_keycache + 1),r5
	mov	(_keycache + 2),r6
	mov	(_keycache + 3),r7
00111$:
;	main.c:61: refresh();
	lcall	_refresh
;	main.c:62: delay(1);
	mov	dpl,#0x01
	lcall	_delay
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'flush'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:65: void flush(void)
;	-----------------------------------------
;	 function flush
;	-----------------------------------------
_flush:
;	main.c:67: switch(state){
	mov	a,#0x01
	cjne	a,_state,00110$
	sjmp	00101$
00110$:
	mov	a,#0x02
	cjne	a,_state,00111$
	sjmp	00102$
00111$:
	mov	a,#0x03
;	main.c:68: case 1:
	cjne	a,_state,00104$
	sjmp	00103$
00101$:
;	main.c:69: sign.w=keycache;
	mov	r2,_keycache
	mov	_sign,r2
;	main.c:70: break;
;	main.c:71: case 2:
	sjmp	00104$
00102$:
;	main.c:72: sign.f=keycache;
	mov	(_sign + 0x0001),_keycache
	mov	((_sign + 0x0001) + 1),(_keycache + 1)
	mov	((_sign + 0x0001) + 2),(_keycache + 2)
	mov	((_sign + 0x0001) + 3),(_keycache + 3)
;	main.c:73: break;
;	main.c:74: case 3:
	sjmp	00104$
00103$:
;	main.c:75: sign.a=keycache;
	mov	r2,_keycache
	mov	(_sign + 0x0005),r2
;	main.c:77: }
00104$:
;	main.c:81: state=0;		//处理完成恢复待机状态
	mov	_state,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'refresh'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:84: void refresh(void)
;	-----------------------------------------
;	 function refresh
;	-----------------------------------------
_refresh:
;	main.c:86: lcd_printsxy("                ",0,0);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:87: lcd_printsxy("                ",0,1);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:88: switch(state){
	clr	a
	cjne	a,_state,00126$
	sjmp	00101$
00126$:
	mov	a,#0x01
	cjne	a,_state,00127$
	ljmp	00106$
00127$:
	mov	a,#0x02
	cjne	a,_state,00128$
	ljmp	00112$
00128$:
	mov	a,#0x03
	cjne	a,_state,00129$
	ljmp	00113$
00129$:
	ljmp	00114$
;	main.c:89: case 0:
00101$:
;	main.c:90: switch(sign.w){
	mov	r2,_sign
	cjne	r2,#0x02,00130$
	sjmp	00102$
00130$:
;	main.c:91: case 2:lcd_printsxy("Rect    A=   Vol",0,0);	break;
	cjne	r2,#0x03,00104$
	sjmp	00103$
00102$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:92: case 3:lcd_printsxy("Tria    A=   Vol",0,0);	break;
	sjmp	00105$
00103$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:93: default:lcd_printsxy("sine    A=   Vol",0,0);	break;
	sjmp	00105$
00104$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:94: }
00105$:
;	main.c:95: lcd_printsxy("F=       KHz",0,1);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:96: lcd_printnxy(sign.a,12,0);lcd_printnxy(sign.f,8,1);
	mov	r2,(_sign + 0x0005)
	mov	a,(_sign + 0x0005)
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	_lcd_printnxy_PARM_2,#0x0C
	mov	_lcd_printnxy_PARM_3,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_lcd_printnxy
	mov	_lcd_printnxy_PARM_2,#0x08
	mov	_lcd_printnxy_PARM_3,#0x01
	mov	dpl,(_sign + 0x0001)
	mov	dph,((_sign + 0x0001) + 1)
	mov	b,((_sign + 0x0001) + 2)
	mov	a,((_sign + 0x0001) + 3)
	lcall	_lcd_printnxy
;	main.c:97: break;
	ljmp	00114$
;	main.c:98: case 1:
00106$:
;	main.c:99: lcd_printsxy("Wave Select",0,0);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:100: switch(keycache){
	mov	a,#0x01
	cjne	a,_keycache,00132$
	clr	a
	cjne	a,(_keycache + 1),00132$
	clr	a
	cjne	a,(_keycache + 2),00132$
	clr	a
	cjne	a,(_keycache + 3),00132$
	sjmp	00107$
00132$:
	mov	a,#0x02
	cjne	a,_keycache,00133$
	clr	a
	cjne	a,(_keycache + 1),00133$
	clr	a
	cjne	a,(_keycache + 2),00133$
	clr	a
	cjne	a,(_keycache + 3),00133$
	sjmp	00108$
00133$:
	mov	a,#0x03
	cjne	a,_keycache,00134$
	clr	a
	cjne	a,(_keycache + 1),00134$
	clr	a
	cjne	a,(_keycache + 2),00134$
	clr	a
	cjne	a,(_keycache + 3),00134$
	sjmp	00109$
00134$:
;	main.c:101: case 1: lcd_printsxy("Sine Wave",0,1);break;
	sjmp	00110$
00107$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_lcd_printsxy
	ljmp	00114$
;	main.c:102: case 2: lcd_printsxy("Deco Wave",0,1);break;
00108$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_7
	mov	b,#0x80
	lcall	_lcd_printsxy
	ljmp	00114$
;	main.c:103: case 3: lcd_printsxy("Tria Wave",0,1);break;
00109$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_8
	mov	b,#0x80
	lcall	_lcd_printsxy
	ljmp	00114$
;	main.c:104: default: lcd_printsxy("1.Sin 2.Dec 3.Tri",0,1);break;
00110$:
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:106: break;
;	main.c:107: case 2:
	sjmp	00114$
00112$:
;	main.c:108: lcd_printsxy("Frequence Set",0,0);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_10
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:109: lcd_printsxy("KHz",13,1);
	mov	_lcd_printsxy_PARM_2,#0x0D
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_11
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:110: lcd_printnxy(keycache,12,1);
	mov	_lcd_printnxy_PARM_2,#0x0C
	mov	_lcd_printnxy_PARM_3,#0x01
	mov	dpl,_keycache
	mov	dph,(_keycache + 1)
	mov	b,(_keycache + 2)
	mov	a,(_keycache + 3)
	lcall	_lcd_printnxy
;	main.c:111: break;
;	main.c:112: case 3:
	sjmp	00114$
00113$:
;	main.c:113: lcd_printsxy("Ample Setting",0,0);
	mov	_lcd_printsxy_PARM_2,#0x00
	mov	_lcd_printsxy_PARM_3,#0x00
	mov	dptr,#__str_12
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:114: lcd_printsxy("Vol",13,1);
	mov	_lcd_printsxy_PARM_2,#0x0D
	mov	_lcd_printsxy_PARM_3,#0x01
	mov	dptr,#__str_13
	mov	b,#0x80
	lcall	_lcd_printsxy
;	main.c:115: lcd_printnxy(keycache,12,1);
	mov	_lcd_printnxy_PARM_2,#0x0C
	mov	_lcd_printnxy_PARM_3,#0x01
	mov	dpl,_keycache
	mov	dph,(_keycache + 1)
	mov	b,(_keycache + 2)
	mov	a,(_keycache + 3)
	lcall	_lcd_printnxy
;	main.c:117: }
00114$:
;	main.c:118: stand_pos=0;
	mov	_stand_pos,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:128: void interrupt_init(void)
;	-----------------------------------------
;	 function interrupt_init
;	-----------------------------------------
_interrupt_init:
;	main.c:131: EX0=1;    EX1=0;	//外部中断
	setb	_EX0
	clr	_EX1
;	main.c:132: ET0=0;    ET1=0;	//定时器中断
	clr	_ET0
	clr	_ET1
;	main.c:133: ES =0;		//串行中断
	clr	_ES
;	main.c:136: PX0=1;	//外部
	setb	_PX0
;	main.c:137: PT0=0;	//定时器
	clr	_PT0
;	main.c:140: IT1=0;	//低电平触发，设为1为下降沿触发
	clr	_IT1
;	main.c:142: EA=1;	//打开中断总开关
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:146: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:149: lcd_init();	//LCD初始化
	lcall	_lcd_init
;	main.c:150: interrupt_init();	//外部中断0初始化
	lcall	_interrupt_init
;	main.c:151: P1=0xf0;	//键盘初始化
	mov	_P1,#0xF0
;	main.c:152: refresh();
	lcall	_refresh
;	main.c:153: while(1);
00102$:
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "                "
	.db 0x00
__str_1:
	.ascii "Rect    A=   Vol"
	.db 0x00
__str_2:
	.ascii "Tria    A=   Vol"
	.db 0x00
__str_3:
	.ascii "sine    A=   Vol"
	.db 0x00
__str_4:
	.ascii "F=       KHz"
	.db 0x00
__str_5:
	.ascii "Wave Select"
	.db 0x00
__str_6:
	.ascii "Sine Wave"
	.db 0x00
__str_7:
	.ascii "Deco Wave"
	.db 0x00
__str_8:
	.ascii "Tria Wave"
	.db 0x00
__str_9:
	.ascii "1.Sin 2.Dec 3.Tri"
	.db 0x00
__str_10:
	.ascii "Frequence Set"
	.db 0x00
__str_11:
	.ascii "KHz"
	.db 0x00
__str_12:
	.ascii "Ample Setting"
	.db 0x00
__str_13:
	.ascii "Vol"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
