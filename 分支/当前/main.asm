;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
; This file was generated Tue Sep 30 08:11:53 2008
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _update_str_PARM_2
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
	.globl _lcd_str
	.globl _state
	.globl _keypad_interrupt
	.globl _flush
	.globl _refresh
	.globl _menu_refresh
	.globl _update_str
	.globl _num_refresh
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
_lcd_str::
	.ds 32
_keycache::
	.ds 4
_sign::
	.ds 6
_keypad_interrupt_key_1_1:
	.ds 2
_keypad_interrupt_sloc0_1_0:
	.ds 4
_num_refresh_i_1_1:
	.ds 1
_num_refresh_tmp_1_1:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_update_str_PARM_2::
	.ds 1
_update_str_i_1_1::
	.ds 2
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
;	main.c:18: char lcd_str[2][16]={"Welcome to use !",">>Made in SWUN<<"};	//保存LCD显示数据
	mov	_lcd_str,#0x57
	mov	(_lcd_str + 0x0001),#0x65
	mov	(_lcd_str + 0x0002),#0x6C
	mov	(_lcd_str + 0x0003),#0x63
	mov	(_lcd_str + 0x0004),#0x6F
	mov	(_lcd_str + 0x0005),#0x6D
	mov	(_lcd_str + 0x0006),#0x65
	mov	(_lcd_str + 0x0007),#0x20
	mov	(_lcd_str + 0x0008),#0x74
	mov	(_lcd_str + 0x0009),#0x6F
	mov	(_lcd_str + 0x000a),#0x20
	mov	(_lcd_str + 0x000b),#0x75
	mov	(_lcd_str + 0x000c),#0x73
	mov	(_lcd_str + 0x000d),#0x65
	mov	(_lcd_str + 0x000e),#0x20
	mov	(_lcd_str + 0x000f),#0x21
	mov	(_lcd_str + 0x0010),#0x3E
	mov	(_lcd_str + 0x0011),#0x3E
	mov	(_lcd_str + 0x0012),#0x4D
	mov	(_lcd_str + 0x0013),#0x61
	mov	(_lcd_str + 0x0014),#0x64
	mov	(_lcd_str + 0x0015),#0x65
	mov	(_lcd_str + 0x0016),#0x20
	mov	(_lcd_str + 0x0017),#0x69
	mov	(_lcd_str + 0x0018),#0x6E
	mov	(_lcd_str + 0x0019),#0x20
	mov	(_lcd_str + 0x001a),#0x53
	mov	(_lcd_str + 0x001b),#0x57
	mov	(_lcd_str + 0x001c),#0x55
	mov	(_lcd_str + 0x001d),#0x4E
	mov	(_lcd_str + 0x001e),#0x3C
	mov	(_lcd_str + 0x001f),#0x3C
;	main.c:19: long int keycache=0;		//键盘输入缓存
	clr	a
	mov	_keycache,a
	mov	(_keycache + 1),a
	mov	(_keycache + 2),a
	mov	(_keycache + 3),a
;	main.c:24: }sign={1,1000,5};
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
;	main.c:39: void keypad_interrupt(void) interrupt 0
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
;	main.c:49: key=key_make(key_scan());
	lcall	_key_scan
	lcall	_key_make
	mov	a,dpl
	mov	r2,a
	mov	_keypad_interrupt_key_1_1,a
	rlc	a
	subb	a,acc
	mov	(_keypad_interrupt_key_1_1 + 1),a
;	main.c:51: if(key>10){	//功能区
	clr	c
	mov	a,#0x0A
	subb	a,_keypad_interrupt_key_1_1
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_keypad_interrupt_key_1_1 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	main.c:52: if(key!=state){	//按键非当前状态才处理
	mov	a,_state
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r4
	cjne	a,_keypad_interrupt_key_1_1,00124$
	mov	a,r5
	cjne	a,(_keypad_interrupt_key_1_1 + 1),00124$
	sjmp	00104$
00124$:
;	main.c:53: state=key;
	mov	_state,_keypad_interrupt_key_1_1
;	main.c:54: if(key=='c')	flush();	//提交功能键按下
	mov	a,#0x63
	cjne	a,_keypad_interrupt_key_1_1,00125$
	clr	a
	cjne	a,(_keypad_interrupt_key_1_1 + 1),00125$
	sjmp	00126$
00125$:
	sjmp	00102$
00126$:
	lcall	_flush
00102$:
;	main.c:55: keycache=0;	//清空输入缓存
	clr	a
	mov	_keycache,a
	mov	(_keycache + 1),a
	mov	(_keycache + 2),a
	mov	(_keycache + 3),a
00104$:
;	main.c:57: menu_refresh();
	lcall	_menu_refresh
	ljmp	00112$
00111$:
;	main.c:60: if(state)
	mov	a,_state
	jnz	00127$
	ljmp	00112$
00127$:
;	main.c:62: if(state=='w')	//波形选择只收集一次按键
	mov	a,#0x77
	cjne	a,_state,00106$
;	main.c:63: keycache=key;
	mov	_keycache,_keypad_interrupt_key_1_1
	mov	a,(_keypad_interrupt_key_1_1 + 1)
	mov	(_keycache + 1),a
	rlc	a
	subb	a,acc
	mov	(_keycache + 2),a
	mov	(_keycache + 3),a
	sjmp	00107$
00106$:
;	main.c:65: keycache=keycache>999999999?0:(key+keycache*10);
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
	jnc	00115$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00116$
00115$:
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
00116$:
	mov	_keycache,r4
	mov	(_keycache + 1),r5
	mov	(_keycache + 2),r6
	mov	(_keycache + 3),r7
00107$:
;	main.c:66: num_refresh();
	lcall	_num_refresh
00112$:
;	main.c:70: refresh();
	lcall	_refresh
;	main.c:71: delay(1);	//歇会儿，你娃要一直按，我就不甩你
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
;	main.c:75: void flush(void)
;	-----------------------------------------
;	 function flush
;	-----------------------------------------
_flush:
;	main.c:77: switch(state){
	mov	a,#0x61
	cjne	a,_state,00110$
	sjmp	00103$
00110$:
	mov	a,#0x66
	cjne	a,_state,00111$
	sjmp	00102$
00111$:
	mov	a,#0x77
	cjne	a,_state,00105$
;	main.c:79: sign.w=keycache;
	mov	r2,_keycache
	mov	_sign,r2
;	main.c:80: break;
;	main.c:81: case 'f':
	ret
00102$:
;	main.c:82: sign.f=keycache;
	mov	(_sign + 0x0001),_keycache
	mov	((_sign + 0x0001) + 1),(_keycache + 1)
	mov	((_sign + 0x0001) + 2),(_keycache + 2)
	mov	((_sign + 0x0001) + 3),(_keycache + 3)
;	main.c:83: break;
;	main.c:84: case 'a':
	ret
00103$:
;	main.c:85: sign.a=keycache;
	mov	r2,_keycache
	mov	(_sign + 0x0005),r2
;	main.c:87: }
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'refresh'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:93: void refresh(void)
;	-----------------------------------------
;	 function refresh
;	-----------------------------------------
_refresh:
;	main.c:99: lcd_position(0,0);
	mov	_lcd_position_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_lcd_position
;	main.c:100: lcd_prints(lcd_str[0]);
	mov	dptr,#_lcd_str
	mov	b,#0x40
	lcall	_lcd_prints
;	main.c:101: lcd_position(0,1);
	mov	_lcd_position_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_lcd_position
;	main.c:102: lcd_prints(lcd_str[1]);
	mov	dptr,#(_lcd_str + 0x0010)
	mov	b,#0x40
	ljmp	_lcd_prints
;------------------------------------------------------------
;Allocation info for local variables in function 'menu_refresh'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:106: void menu_refresh(void)
;	-----------------------------------------
;	 function menu_refresh
;	-----------------------------------------
_menu_refresh:
;	main.c:113: switch(state)
	mov	a,#0x61
	cjne	a,_state,00111$
	sjmp	00104$
00111$:
	mov	a,#0x66
	cjne	a,_state,00112$
	sjmp	00103$
00112$:
	mov	a,#0x77
	cjne	a,_state,00113$
	sjmp	00102$
00113$:
;	main.c:116: update_str("Welcome to use !",0);
	mov	_update_str_PARM_2,#0x00
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_update_str
;	main.c:117: update_str(">>Made in SWUN<<",1);
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_1
	mov	b,#0x80
;	main.c:118: break;
;	main.c:119: case 'w'://波形
	ljmp	_update_str
00102$:
;	main.c:120: update_str("=Wave Type  Set=",0);
	mov	_update_str_PARM_2,#0x00
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_update_str
;	main.c:121: update_str("1.sin 2.fan 3.tr",1);
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_3
	mov	b,#0x80
;	main.c:122: break;
;	main.c:123: case 'f'://频率
	ljmp	_update_str
00103$:
;	main.c:124: update_str("=Frequence  Set=",0);
	mov	_update_str_PARM_2,#0x00
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_update_str
;	main.c:125: update_str("           0 KHz",1);
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_5
	mov	b,#0x80
;	main.c:126: break;
;	main.c:127: case 'a'://振幅
	ljmp	_update_str
00104$:
;	main.c:128: update_str("=Amplitude  Set=",0);
	mov	_update_str_PARM_2,#0x00
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_update_str
;	main.c:129: update_str("           0 Vol",1);
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_7
	mov	b,#0x80
;	main.c:131: }
	ljmp	_update_str
;------------------------------------------------------------
;Allocation info for local variables in function 'update_str'
;------------------------------------------------------------
;line                      Allocated with name '_update_str_PARM_2'
;p                         Allocated to registers r2 r3 r4 
;i                         Allocated with name '_update_str_i_1_1'
;------------------------------------------------------------
;	main.c:139: void update_str(char * p,char line)
;	-----------------------------------------
;	 function update_str
;	-----------------------------------------
_update_str:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:142: while(1)
	mov	a,_update_str_PARM_2
	swap	a
	anl	a,#0xf0
	add	a,#_lcd_str
	mov	r5,a
	clr	a
	mov	_update_str_i_1_1,a
	mov	(_update_str_i_1_1 + 1),a
00104$:
;	main.c:144: lcd_str[line][i]=*p;
	mov	a,_update_str_i_1_1
	add	a,r5
	mov	r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	@r0,ar6
;	main.c:145: p++;i++;
	inc	_update_str_i_1_1
	clr	a
	cjne	a,_update_str_i_1_1,00110$
	inc	(_update_str_i_1_1 + 1)
00110$:
;	main.c:146: if(*p=='\0')	break;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'num_refresh'
;------------------------------------------------------------
;i                         Allocated with name '_num_refresh_i_1_1'
;tmp                       Allocated with name '_num_refresh_tmp_1_1'
;------------------------------------------------------------
;	main.c:151: void num_refresh(void)
;	-----------------------------------------
;	 function num_refresh
;	-----------------------------------------
_num_refresh:
;	main.c:158: long int tmp=keycache;
	mov	_num_refresh_tmp_1_1,_keycache
	mov	(_num_refresh_tmp_1_1 + 1),(_keycache + 1)
	mov	(_num_refresh_tmp_1_1 + 2),(_keycache + 2)
	mov	(_num_refresh_tmp_1_1 + 3),(_keycache + 3)
;	main.c:160: if(state=='w')
	mov	a,#0x77
	cjne	a,_state,00128$
	sjmp	00129$
00128$:
	ljmp	00123$
00129$:
;	main.c:162: switch(keycache)
	mov	a,#0x01
	cjne	a,_keycache,00130$
	clr	a
	cjne	a,(_keycache + 1),00130$
	clr	a
	cjne	a,(_keycache + 2),00130$
	clr	a
	cjne	a,(_keycache + 3),00130$
	sjmp	00101$
00130$:
	mov	a,#0x02
	cjne	a,_keycache,00131$
	clr	a
	cjne	a,(_keycache + 1),00131$
	clr	a
	cjne	a,(_keycache + 2),00131$
	clr	a
	cjne	a,(_keycache + 3),00131$
	sjmp	00102$
00131$:
	mov	a,#0x03
	cjne	a,_keycache,00132$
	clr	a
	cjne	a,(_keycache + 1),00132$
	clr	a
	cjne	a,(_keycache + 2),00132$
	clr	a
	cjne	a,(_keycache + 3),00132$
	sjmp	00103$
00132$:
	ret
;	main.c:164: case 1:
00101$:
;	main.c:165: update_str("1.Sin           ",1);break;
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_8
	mov	b,#0x80
	ljmp	_update_str
;	main.c:166: case 2:
00102$:
;	main.c:167: update_str("2.Freq          ",1);break;
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_9
	mov	b,#0x80
	ljmp	_update_str
;	main.c:168: case 3:
00103$:
;	main.c:169: update_str("3.Tri           ",1);break;
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_10
	mov	b,#0x80
;	main.c:176: for(i=0;i<11;i++)	lcd_str[1][i]=' ';
	ljmp	_update_str
00123$:
	mov	r6,#0x00
00112$:
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x8b
	jnc	00125$
	mov	a,r6
	add	a,#(_lcd_str + 0x0010)
	mov	r0,a
	mov	@r0,#0x20
	inc	r6
;	main.c:177: while(tmp)
	sjmp	00112$
00125$:
	mov	_num_refresh_i_1_1,r6
00106$:
	mov	a,_num_refresh_tmp_1_1
	orl	a,(_num_refresh_tmp_1_1 + 1)
	orl	a,(_num_refresh_tmp_1_1 + 2)
	orl	a,(_num_refresh_tmp_1_1 + 3)
	jz	00116$
;	main.c:179: lcd_str[1][i]=tmp%10+48;
	mov	a,_num_refresh_i_1_1
	add	a,#(_lcd_str + 0x0010)
	mov	r0,a
	mov	__modslong_PARM_2,#0x0A
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,_num_refresh_tmp_1_1
	mov	dph,(_num_refresh_tmp_1_1 + 1)
	mov	b,(_num_refresh_tmp_1_1 + 2)
	mov	a,(_num_refresh_tmp_1_1 + 3)
	push	ar0
	lcall	__modslong
	mov	r7,dpl
	pop	ar0
	mov	a,#0x30
	add	a,r7
	mov	@r0,a
;	main.c:180: tmp/=10;
	mov	__divslong_PARM_2,#0x0A
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_num_refresh_tmp_1_1
	mov	dph,(_num_refresh_tmp_1_1 + 1)
	mov	b,(_num_refresh_tmp_1_1 + 2)
	mov	a,(_num_refresh_tmp_1_1 + 3)
	lcall	__divslong
	mov	_num_refresh_tmp_1_1,dpl
	mov	(_num_refresh_tmp_1_1 + 1),dph
	mov	(_num_refresh_tmp_1_1 + 2),b
	mov	(_num_refresh_tmp_1_1 + 3),a
;	main.c:181: i--;
	dec	_num_refresh_i_1_1
	sjmp	00106$
00116$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:196: void interrupt_init(void)
;	-----------------------------------------
;	 function interrupt_init
;	-----------------------------------------
_interrupt_init:
;	main.c:199: EX0=1;    EX1=0;	//外部中断
	setb	_EX0
	clr	_EX1
;	main.c:200: ET0=0;    ET1=0;	//定时器中断
	clr	_ET0
	clr	_ET1
;	main.c:201: ES =0;		//串行中断
	clr	_ES
;	main.c:204: PX0=1;	//外部
	setb	_PX0
;	main.c:205: PT0=0;	//定时器
	clr	_PT0
;	main.c:208: IT1=0;	//低电平触发，设为1为下降沿触发
	clr	_IT1
;	main.c:210: EA=1;	//打开中断总开关
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:214: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:217: lcd_init();	//LCD初始化
	lcall	_lcd_init
;	main.c:218: interrupt_init();	//外部中断0初始化
	lcall	_interrupt_init
;	main.c:219: P1=0xf0;	//键盘初始化
	mov	_P1,#0xF0
;	main.c:220: refresh();	//打印待机界面
	ljmp	_refresh
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "Welcome to use !"
	.db 0x00
__str_1:
	.ascii ">>Made in SWUN<<"
	.db 0x00
__str_2:
	.ascii "=Wave Type  Set="
	.db 0x00
__str_3:
	.ascii "1.sin 2.fan 3.tr"
	.db 0x00
__str_4:
	.ascii "=Frequence  Set="
	.db 0x00
__str_5:
	.ascii "           0 KHz"
	.db 0x00
__str_6:
	.ascii "=Amplitude  Set="
	.db 0x00
__str_7:
	.ascii "           0 Vol"
	.db 0x00
__str_8:
	.ascii "1.Sin           "
	.db 0x00
__str_9:
	.ascii "2.Freq          "
	.db 0x00
__str_10:
	.ascii "3.Tri           "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
