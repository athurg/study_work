;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
; This file was generated Mon Aug  4 20:38:10 2008
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
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
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
	.globl _RCAP2L
	.globl _RCAP2H
	.globl _T2CON
	.globl _AUXR
	.globl _keycache
	.globl _lcd_str
	.globl _state
	.globl _lcd_position_PARM_2
	.globl _delay
	.globl _lcd_wait
	.globl _lcd_cmd
	.globl _lcd_data
	.globl _lcd_init
	.globl _lcd_shift
	.globl _lcd_cursor_shift
	.globl _lcd_position
	.globl _lcd_cls
	.globl _lcd_print
	.globl _key_make
	.globl _key_scan
	.globl _lcd_int
	.globl _refresh
	.globl _menu_refresh
	.globl _update_str
	.globl _num_refresh
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_AUXR	=	0x008e
_T2CON	=	0x00c8
_RCAP2H	=	0x00cb
_RCAP2L	=	0x00ca
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
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
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
_lcd_position_PARM_2:
	.ds 1
_state::
	.ds 1
_lcd_str::
	.ds 32
_keycache::
	.ds 4
_lcd_int_key_1_1:
	.ds 2
_lcd_int_sloc0_1_0:
	.ds 4
_num_refresh_i_1_1:
	.ds 1
_num_refresh_tmp_1_1:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_key_make_keytable_1_1::
	.ds 32
	.area	OSEG    (OVR,DATA)
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
	ljmp	_lcd_int
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
;	main.c:15: char state=0;	//状态变量,0为待机,W波形,F频率,A幅度
	mov	_state,#0x00
;	main.c:16: char lcd_str[2][16]={{0}};	//保存LCD显示数据
	mov	_lcd_str,#0x00
;	main.c:17: long int keycache=0;		//键盘输入缓存
	clr	a
	mov	_keycache,a
	mov	(_keycache + 1),a
	mov	(_keycache + 2),a
	mov	(_keycache + 3),a
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;num                       Allocated to registers r2 
;i                         Allocated to registers r3 r4 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	common.c:16: void delay(char num)
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
;	common.c:26: while(num){
00101$:
	mov	a,r2
	jz	00103$
;	common.c:27: for(i=200;i>0;i--)
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
;	common.c:28: for(j=200;j>0;j--);
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
;	common.c:27: for(i=200;i>0;i--)
	dec	r3
	cjne	r3,#0xff,00108$
	dec	r4
	sjmp	00108$
00111$:
;	common.c:29: num--;
	dec	r2
	sjmp	00101$
00103$:
;	common.c:31: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_wait'
;------------------------------------------------------------
;------------------------------------------------------------
;	lcd.c:46: void lcd_wait(void)
;	-----------------------------------------
;	 function lcd_wait
;	-----------------------------------------
_lcd_wait:
;	lcd.c:56: while(1)
00104$:
;	lcd.c:58: LCD_EN=0;
	clr	_P2_2
;	lcd.c:59: LCD_RS=0;
	clr	_P2_0
;	lcd.c:60: LCD_RW=1;
	setb	_P2_1
;	lcd.c:61: LCD_DATA=0xFF;
	mov	_P0,#0xFF
;	lcd.c:62: LCD_EN=1;
	setb	_P2_2
;	lcd.c:63: if(!LCD_BUSY)		break;		//忙完了，不玩了：）
	jb	_P0_7,00104$
;	lcd.c:65: LCD_EN=0;
	clr	_P2_2
;	lcd.c:66: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_cmd'
;------------------------------------------------------------
;cmd                       Allocated to registers r2 
;------------------------------------------------------------
;	lcd.c:69: void lcd_cmd(char cmd)
;	-----------------------------------------
;	 function lcd_cmd
;	-----------------------------------------
_lcd_cmd:
	mov	r2,dpl
;	lcd.c:80: EA=0;
	clr	_EA
;	lcd.c:81: lcd_wait();
	push	ar2
	lcall	_lcd_wait
	pop	ar2
;	lcd.c:82: LCD_RS=0;
	clr	_P2_0
;	lcd.c:83: LCD_RW=0;
	clr	_P2_1
;	lcd.c:84: LCD_EN=1;
	setb	_P2_2
;	lcd.c:85: LCD_DATA=cmd;
	mov	_P0,r2
;	lcd.c:86: LCD_EN=0;
	clr	_P2_2
;	lcd.c:87: EA=1;
	setb	_EA
;	lcd.c:88: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_data'
;------------------------------------------------------------
;datas                     Allocated to registers r2 
;------------------------------------------------------------
;	lcd.c:91: void lcd_data(char datas)
;	-----------------------------------------
;	 function lcd_data
;	-----------------------------------------
_lcd_data:
	mov	r2,dpl
;	lcd.c:102: EA=0;
	clr	_EA
;	lcd.c:103: lcd_wait();
	push	ar2
	lcall	_lcd_wait
	pop	ar2
;	lcd.c:104: LCD_RS=1;
	setb	_P2_0
;	lcd.c:105: LCD_RW=0;
	clr	_P2_1
;	lcd.c:106: LCD_EN=1;
	setb	_P2_2
;	lcd.c:107: LCD_DATA=datas;
	mov	_P0,r2
;	lcd.c:108: LCD_EN=0;
	clr	_P2_2
;	lcd.c:109: EA=1;
	setb	_EA
;	lcd.c:110: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	lcd.c:114: void lcd_init(void)
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	lcd.c:121: lcd_cls();
	lcall	_lcd_cls
;	lcd.c:122: lcd_cmd(LCD_CURSOR);
	mov	dpl,#0x0A
	lcall	_lcd_cmd
;	lcd.c:123: lcd_cmd(LCD_AC_AUTO_INCREMENT);
	mov	dpl,#0x06
	lcall	_lcd_cmd
;	lcd.c:124: lcd_cmd(LCD_DISPLAY_ON);
	mov	dpl,#0x0C
	lcall	_lcd_cmd
;	lcd.c:126: lcd_cmd(LCD_LINES);	//工作方式（行数）
	mov	dpl,#0x38
	lcall	_lcd_cmd
;	lcd.c:128: lcd_position(2,0);		//定位到第一行第一列
	mov	_lcd_position_PARM_2,#0x00
	mov	dpl,#0x02
	ljmp	_lcd_position
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_shift'
;------------------------------------------------------------
;num                       Allocated to registers r2 
;------------------------------------------------------------
;	lcd.c:133: void lcd_shift(char num)
;	-----------------------------------------
;	 function lcd_shift
;	-----------------------------------------
_lcd_shift:
	mov	r2,dpl
;	lcd.c:141: while(num){
00104$:
	mov	a,r2
	jz	00106$
;	lcd.c:142: if(num>0){		//右
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	lcd.c:143: lcd_cmd(0x1c);num--;
	mov	dpl,#0x1C
	push	ar2
	lcall	_lcd_cmd
	pop	ar2
	dec	r2
	sjmp	00104$
00102$:
;	lcd.c:145: lcd_cmd(0x18);	num++;
	mov	dpl,#0x18
	push	ar2
	lcall	_lcd_cmd
	pop	ar2
	inc	r2
	sjmp	00104$
00106$:
;	lcd.c:148: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_cursor_shift'
;------------------------------------------------------------
;num                       Allocated to registers r2 
;------------------------------------------------------------
;	lcd.c:151: void lcd_cursor_shift(char num)
;	-----------------------------------------
;	 function lcd_cursor_shift
;	-----------------------------------------
_lcd_cursor_shift:
	mov	r2,dpl
;	lcd.c:160: while(num){
00104$:
	mov	a,r2
	jz	00106$
;	lcd.c:161: if(num>0){
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	lcd.c:162: lcd_cmd(0x14);num--; //右
	mov	dpl,#0x14
	push	ar2
	lcall	_lcd_cmd
	pop	ar2
	dec	r2
	sjmp	00104$
00102$:
;	lcd.c:164: lcd_cmd(0x10);	num++;
	mov	dpl,#0x10
	push	ar2
	lcall	_lcd_cmd
	pop	ar2
	inc	r2
	sjmp	00104$
00106$:
;	lcd.c:167: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_position'
;------------------------------------------------------------
;y                         Allocated with name '_lcd_position_PARM_2'
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	lcd.c:170: void lcd_position(char x,char y)
;	-----------------------------------------
;	 function lcd_position
;	-----------------------------------------
_lcd_position:
	mov	r2,dpl
;	lcd.c:180: y=y>16?15:y--;
	clr	c
	mov	a,#(0x10 ^ 0x80)
	mov	b,_lcd_position_PARM_2
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	mov	r3,#0x0F
	sjmp	00106$
00105$:
	mov	r3,_lcd_position_PARM_2
00106$:
;	lcd.c:181: x=x>2?1:x--;
	clr	c
	mov	a,#(0x02 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	mov	r4,#0x01
	sjmp	00108$
00107$:
	mov	ar4,r2
00108$:
	mov	ar2,r4
;	lcd.c:183: if(y)			x+=0x40;		//0x40：第二行起始位置偏移量
	mov	a,r3
	jz	00102$
	mov	a,#0x40
	add	a,r2
	mov	r2,a
00102$:
;	lcd.c:184: lcd_cmd(0x80+x);	//0x80第一行显示起始位置
	mov	a,#0x80
	add	a,r2
	mov	dpl,a
;	lcd.c:185: return ;
	ljmp	_lcd_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_cls'
;------------------------------------------------------------
;------------------------------------------------------------
;	lcd.c:188: void lcd_cls(void)
;	-----------------------------------------
;	 function lcd_cls
;	-----------------------------------------
_lcd_cls:
;	lcd.c:195: lcd_cmd(0x01);
	mov	dpl,#0x01
;	lcd.c:196: return;
	ljmp	_lcd_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_print'
;------------------------------------------------------------
;string                    Allocated to registers r2 r3 r4 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	lcd.c:199: void lcd_print(char *string)
;	-----------------------------------------
;	 function lcd_print
;	-----------------------------------------
_lcd_print:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	lcd.c:206: while(string[i]!=0x00)	{
	mov	r5,#0x00
00101$:
	mov	a,r5
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	jz	00103$
;	lcd.c:207: lcd_data(string[i]);
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_lcd_data
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	lcd.c:208: i++;
	inc	r5
	sjmp	00101$
00103$:
;	lcd.c:210: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_make'
;------------------------------------------------------------
;key                       Allocated to registers r2 
;i                         Allocated to registers r3 
;keytable                  Allocated with name '_key_make_keytable_1_1'
;------------------------------------------------------------
;	keypad.c:11: char key_make(char key)
;	-----------------------------------------
;	 function key_make
;	-----------------------------------------
_key_make:
	mov	r2,dpl
;	keypad.c:22: struct keypad keytable[]={
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
;	keypad.c:29: for(i=16;i>=0;i--)
	mov	r3,#0x10
00103$:
	mov	a,r3
	jb	acc.7,00106$
;	keypad.c:31: if(keytable[i].index==key)
	mov	a,r3
	add	a,r3
	mov	r4,a
	add	a,#_key_make_keytable_1_1
	mov	r0,a
	mov	a,@r0
	mov	r5,a
	cjne	a,ar2,00105$
;	keypad.c:32: {	return keytable[i].value;}
	mov	a,r4
	add	a,#_key_make_keytable_1_1
	inc	a
	mov	r0,a
	mov	dpl,@r0
	ret
00105$:
;	keypad.c:29: for(i=16;i>=0;i--)
	dec	r3
	sjmp	00103$
00106$:
;	keypad.c:34: return 'O';
	mov	dpl,#0x4F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_scan'
;------------------------------------------------------------
;line                      Allocated to registers r2 
;------------------------------------------------------------
;	keypad.c:37: char key_scan(void)
;	-----------------------------------------
;	 function key_scan
;	-----------------------------------------
_key_scan:
;	keypad.c:51: char line=0x08;			//行扫描起始码(00001000B)
	mov	r2,#0x08
;	keypad.c:53: while(line){
00103$:
	mov	a,r2
	jz	00105$
;	keypad.c:54: P1=~line;
	mov	a,r2
	cpl	a
	mov	_P1,a
;	keypad.c:55: if((P1>>4)!=0x0f) break;
	mov	a,_P1
	swap	a
	anl	a,#0x0f
	mov	r3,a
	cjne	r3,#0x0F,00105$
;	keypad.c:56: line/=2;
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
;	keypad.c:58: line=P1;
	mov	r2,_P1
;	keypad.c:59: P1=0xf0; //重新初始化P1口，自己的事情自己搞完
	mov	_P1,#0xF0
;	keypad.c:60: return line;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_int'
;------------------------------------------------------------
;key                       Allocated with name '_lcd_int_key_1_1'
;sloc0                     Allocated with name '_lcd_int_sloc0_1_0'
;------------------------------------------------------------
;	main.c:28: void lcd_int(void) interrupt 0
;	-----------------------------------------
;	 function lcd_int
;	-----------------------------------------
_lcd_int:
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
;	main.c:39: key=key_make(key_scan());
	lcall	_key_scan
	lcall	_key_make
	mov	a,dpl
	mov	r2,a
	mov	_lcd_int_key_1_1,a
	rlc	a
	subb	a,acc
	mov	(_lcd_int_key_1_1 + 1),a
;	main.c:40: if(key>10)
	clr	c
	mov	a,#0x0A
	subb	a,_lcd_int_key_1_1
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_lcd_int_key_1_1 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	main.c:42: if(key!=state)
	mov	a,_state
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r4
	cjne	a,_lcd_int_key_1_1,00121$
	mov	a,r5
	cjne	a,(_lcd_int_key_1_1 + 1),00121$
	sjmp	00102$
00121$:
;	main.c:44: state=key;
	mov	_state,_lcd_int_key_1_1
;	main.c:45: keycache=0;	//清空输入缓存
	clr	a
	mov	_keycache,a
	mov	(_keycache + 1),a
	mov	(_keycache + 2),a
	mov	(_keycache + 3),a
00102$:
;	main.c:47: menu_refresh();
	lcall	_menu_refresh
	ljmp	00110$
00109$:
;	main.c:51: if(state)
	mov	a,_state
	jnz	00122$
	ljmp	00107$
00122$:
;	main.c:53: if(state=='w')	//波形选择只收集一次按键
	mov	a,#0x77
	cjne	a,_state,00104$
;	main.c:54: keycache=key;
	mov	_keycache,_lcd_int_key_1_1
	mov	a,(_lcd_int_key_1_1 + 1)
	mov	(_keycache + 1),a
	rlc	a
	subb	a,acc
	mov	(_keycache + 2),a
	mov	(_keycache + 3),a
	sjmp	00107$
00104$:
;	main.c:56: keycache=keycache>999999999?0:(key+keycache*10);
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
	jnc	00113$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00114$
00113$:
	mov	__mullong_PARM_2,_keycache
	mov	(__mullong_PARM_2 + 1),(_keycache + 1)
	mov	(__mullong_PARM_2 + 2),(_keycache + 2)
	mov	(__mullong_PARM_2 + 3),(_keycache + 3)
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	_lcd_int_sloc0_1_0,dpl
	mov	(_lcd_int_sloc0_1_0 + 1),dph
	mov	(_lcd_int_sloc0_1_0 + 2),b
	mov	(_lcd_int_sloc0_1_0 + 3),a
	mov	r2,_lcd_int_key_1_1
	mov	a,(_lcd_int_key_1_1 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	a,_lcd_int_sloc0_1_0
	add	a,r2
	mov	r4,a
	mov	a,(_lcd_int_sloc0_1_0 + 1)
	addc	a,r3
	mov	r5,a
	mov	a,(_lcd_int_sloc0_1_0 + 2)
	addc	a,r0
	mov	r6,a
	mov	a,(_lcd_int_sloc0_1_0 + 3)
	addc	a,r1
	mov	r7,a
00114$:
	mov	_keycache,r4
	mov	(_keycache + 1),r5
	mov	(_keycache + 2),r6
	mov	(_keycache + 3),r7
00107$:
;	main.c:58: num_refresh();
	lcall	_num_refresh
00110$:
;	main.c:60: refresh();
	lcall	_refresh
;	main.c:61: delay(1);	//歇会儿，你娃要一直按，我就不甩你
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
;Allocation info for local variables in function 'refresh'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:64: void refresh(void)
;	-----------------------------------------
;	 function refresh
;	-----------------------------------------
_refresh:
;	main.c:70: lcd_position(0,0);
	mov	_lcd_position_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_lcd_position
;	main.c:71: lcd_print(lcd_str[0]);
	mov	dptr,#_lcd_str
	mov	b,#0x40
	lcall	_lcd_print
;	main.c:72: lcd_position(0,1);
	mov	_lcd_position_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_lcd_position
;	main.c:73: lcd_print(lcd_str[1]);
	mov	dptr,#(_lcd_str + 0x0010)
	mov	b,#0x40
	ljmp	_lcd_print
;------------------------------------------------------------
;Allocation info for local variables in function 'menu_refresh'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:77: void menu_refresh(void)
;	-----------------------------------------
;	 function menu_refresh
;	-----------------------------------------
_menu_refresh:
;	main.c:84: switch(state)
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
;	main.c:87: update_str("Welcome to use !",0);
	mov	_update_str_PARM_2,#0x00
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_update_str
;	main.c:88: update_str(">>Made in SWUN<<",1);
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_1
	mov	b,#0x80
;	main.c:89: break;
;	main.c:90: case 'w'://波形
	ljmp	_update_str
00102$:
;	main.c:91: update_str("=Wave Type  Set=",0);
	mov	_update_str_PARM_2,#0x00
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_update_str
;	main.c:92: update_str("1.sin 2.fan 3.tr",1);
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_3
	mov	b,#0x80
;	main.c:93: break;	    
;	main.c:94: case 'f'://频率
	ljmp	_update_str
00103$:
;	main.c:95: update_str("=Frequence  Set=",0);
	mov	_update_str_PARM_2,#0x00
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_update_str
;	main.c:96: update_str("           0 KHz",1);
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_5
	mov	b,#0x80
;	main.c:97: break;
;	main.c:98: case 'a'://振幅
	ljmp	_update_str
00104$:
;	main.c:99: update_str("=Amplitude  Set=",0);
	mov	_update_str_PARM_2,#0x00
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_update_str
;	main.c:100: update_str("           0 Vol",1);
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_7
	mov	b,#0x80
;	main.c:102: }
	ljmp	_update_str
;------------------------------------------------------------
;Allocation info for local variables in function 'update_str'
;------------------------------------------------------------
;line                      Allocated with name '_update_str_PARM_2'
;p                         Allocated to registers r2 r3 r4 
;i                         Allocated with name '_update_str_i_1_1'
;------------------------------------------------------------
;	main.c:105: void update_str(char * p,char line)
;	-----------------------------------------
;	 function update_str
;	-----------------------------------------
_update_str:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:112: while(1)
	mov	a,_update_str_PARM_2
	swap	a
	anl	a,#0xf0
	add	a,#_lcd_str
	mov	r5,a
	clr	a
	mov	_update_str_i_1_1,a
	mov	(_update_str_i_1_1 + 1),a
00104$:
;	main.c:114: lcd_str[line][i]=*p;
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
;	main.c:115: p++;i++;
	inc	_update_str_i_1_1
	clr	a
	cjne	a,_update_str_i_1_1,00110$
	inc	(_update_str_i_1_1 + 1)
00110$:
;	main.c:116: if(*p=='\0')	break;
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
;	main.c:120: void num_refresh(void)
;	-----------------------------------------
;	 function num_refresh
;	-----------------------------------------
_num_refresh:
;	main.c:127: long int tmp=keycache;
	mov	_num_refresh_tmp_1_1,_keycache
	mov	(_num_refresh_tmp_1_1 + 1),(_keycache + 1)
	mov	(_num_refresh_tmp_1_1 + 2),(_keycache + 2)
	mov	(_num_refresh_tmp_1_1 + 3),(_keycache + 3)
;	main.c:129: if(state=='w')
	mov	a,#0x77
	cjne	a,_state,00128$
	sjmp	00129$
00128$:
	ljmp	00123$
00129$:
;	main.c:131: switch(keycache)
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
;	main.c:133: case 1:
00101$:
;	main.c:134: update_str("1.Sin           ",1);break;
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_8
	mov	b,#0x80
	ljmp	_update_str
;	main.c:135: case 2:
00102$:
;	main.c:136: update_str("2.Freq          ",1);break;
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_9
	mov	b,#0x80
	ljmp	_update_str
;	main.c:137: case 3:
00103$:
;	main.c:138: update_str("3.Tri           ",1);break;
	mov	_update_str_PARM_2,#0x01
	mov	dptr,#__str_10
	mov	b,#0x80
;	main.c:145: for(i=0;i<11;i++)	lcd_str[1][i]=' ';
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
;	main.c:146: while(tmp)
	sjmp	00112$
00125$:
	mov	_num_refresh_i_1_1,r6
00106$:
	mov	a,_num_refresh_tmp_1_1
	orl	a,(_num_refresh_tmp_1_1 + 1)
	orl	a,(_num_refresh_tmp_1_1 + 2)
	orl	a,(_num_refresh_tmp_1_1 + 3)
	jz	00116$
;	main.c:148: lcd_str[1][i]=tmp%10+48;
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
;	main.c:149: tmp/=10;
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
;	main.c:150: i--;
	dec	_num_refresh_i_1_1
	sjmp	00106$
00116$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:157: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:160: lcd_init();	//LCD初始化
	lcall	_lcd_init
;	main.c:161: EA=1;EX0=1;PX0=1;IT0=0;	//外部中断0初始化
	setb	_EA
	setb	_EX0
	setb	_PX0
	clr	_IT0
;	main.c:162: P1=0xf0;		//端口初始化
	mov	_P1,#0xF0
	ret
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
