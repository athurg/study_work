;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
; This file was generated Mon Aug  4 20:37:20 2008
;--------------------------------------------------------
	.module lcd
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_lcd_position_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
