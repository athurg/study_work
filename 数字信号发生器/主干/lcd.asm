;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Jul 21 2008) (UNIX)
; This file was generated Fri Sep 19 16:01:40 2008
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
	.globl _lcd_printnum_PARM_3
	.globl _lcd_printnum_PARM_2
	.globl _lcd_printchar_PARM_3
	.globl _lcd_printchar_PARM_2
	.globl _lcd_printstr_PARM_3
	.globl _lcd_printstr_PARM_2
	.globl _lcd_position_PARM_2
	.globl _lcd_shift_PARM_2
	.globl _lcd_write_PARM_2
	.globl _lcd_wait
	.globl _lcd_write
	.globl _lcd_shift
	.globl _lcd_position
	.globl _lcd_cls
	.globl _lcd_print
	.globl _lcd_printstr
	.globl _lcd_printchar
	.globl _lcd_printnum
	.globl _lcd_init
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
_lcd_write_PARM_2:
	.ds 1
_lcd_shift_PARM_2:
	.ds 1
_lcd_position_PARM_2:
	.ds 1
_lcd_printstr_PARM_2:
	.ds 1
_lcd_printstr_PARM_3:
	.ds 1
_lcd_printchar_PARM_2:
	.ds 1
_lcd_printchar_PARM_3:
	.ds 1
_lcd_printnum_PARM_2:
	.ds 1
_lcd_printnum_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'lcd_wait'
;------------------------------------------------------------
;------------------------------------------------------------
;	lcd.c:26: void lcd_wait(void)
;	-----------------------------------------
;	 function lcd_wait
;	-----------------------------------------
_lcd_wait:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	lcd.c:36: while(1){
00104$:
;	lcd.c:37: LCD_EN=0;
	clr	_P2_2
;	lcd.c:38: LCD_RS=0;
	clr	_P2_0
;	lcd.c:39: LCD_RW=1;
	setb	_P2_1
;	lcd.c:40: LCD_DATA=0xFF;
	mov	_P0,#0xFF
;	lcd.c:41: LCD_EN=1;
	setb	_P2_2
;	lcd.c:42: if(!LCD_BUSY)		break;		//忙完了，不玩了：）
	jb	_P0_7,00104$
;	lcd.c:44: LCD_EN=0;
	clr	_P2_2
;	lcd.c:45: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_write'
;------------------------------------------------------------
;datas                     Allocated with name '_lcd_write_PARM_2'
;type                      Allocated to registers r2 
;------------------------------------------------------------
;	lcd.c:60: void lcd_write(char type, char datas)
;	-----------------------------------------
;	 function lcd_write
;	-----------------------------------------
_lcd_write:
	mov	r2,dpl
;	lcd.c:62: lcd_wait();	//等候LCD闲，置于最前面，以防止lcd_wait()对RS和RW造成影响
	push	ar2
	lcall	_lcd_wait
	pop	ar2
;	lcd.c:64: LCD_RS=type;
	mov	a,r2
	add	a,#0xff
	mov	_P2_0,c
;	lcd.c:65: LCD_RW=0;
	clr	_P2_1
;	lcd.c:67: LCD_DATA=datas;
	mov	_P0,_lcd_write_PARM_2
;	lcd.c:70: LCD_EN=1;
	setb	_P2_2
;	lcd.c:71: LCD_EN=0;
	clr	_P2_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_shift'
;------------------------------------------------------------
;num                       Allocated with name '_lcd_shift_PARM_2'
;object                    Allocated to registers r2 
;datas                     Allocated to registers r3 
;------------------------------------------------------------
;	lcd.c:86: void lcd_shift(char object, char num)
;	-----------------------------------------
;	 function lcd_shift
;	-----------------------------------------
_lcd_shift:
	mov	r2,dpl
;	lcd.c:88: char datas=0x10;
	mov	r3,#0x10
;	lcd.c:89: if(object == 'f')	//对象=画面
	cjne	r2,#0x66,00102$
;	lcd.c:90: datas+=0x08;
	mov	r3,#0x18
00102$:
;	lcd.c:91: if(num > 0)	//正号右移
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,_lcd_shift_PARM_2
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	lcd.c:92: datas+=0x04;
	mov	a,r3
	add	a,#0x04
	mov	r3,a
	sjmp	00114$
00104$:
;	lcd.c:94: num=-num;	//负号取相反数，以统一循环变量
	clr	c
	clr	a
	subb	a,_lcd_shift_PARM_2
	mov	_lcd_shift_PARM_2,a
;	lcd.c:96: while(num){
00114$:
	mov	r2,_lcd_shift_PARM_2
00106$:
	mov	a,r2
	jz	00109$
;	lcd.c:97: lcd_write(0,datas);	//一次移动
	mov	_lcd_write_PARM_2,r3
	mov	dpl,#0x00
	push	ar2
	push	ar3
	lcall	_lcd_write
	pop	ar3
	pop	ar2
;	lcd.c:98: num--;
	dec	r2
	sjmp	00106$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_position'
;------------------------------------------------------------
;y                         Allocated with name '_lcd_position_PARM_2'
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	lcd.c:114: void lcd_position(char x,char y)
;	-----------------------------------------
;	 function lcd_position
;	-----------------------------------------
_lcd_position:
	mov	r2,dpl
;	lcd.c:120: if(y)	x+=0x40;	//0x40：第二行起始位置偏移量
	mov	a,_lcd_position_PARM_2
	jz	00102$
	mov	a,#0x40
	add	a,r2
	mov	r2,a
00102$:
;	lcd.c:121: lcd_write(0,0x80+x);
	mov	a,#0x80
	add	a,r2
	mov	_lcd_write_PARM_2,a
	mov	dpl,#0x00
	ljmp	_lcd_write
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_cls'
;------------------------------------------------------------
;------------------------------------------------------------
;	lcd.c:132: void lcd_cls(void)
;	-----------------------------------------
;	 function lcd_cls
;	-----------------------------------------
_lcd_cls:
;	lcd.c:134: lcd_write(0,LCD_CMD_CLS);
	mov	_lcd_write_PARM_2,#0x01
	mov	dpl,#0x00
	ljmp	_lcd_write
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_print'
;------------------------------------------------------------
;string                    Allocated to registers r2 r3 r4 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	lcd.c:143: void lcd_print(char *string)
;	-----------------------------------------
;	 function lcd_print
;	-----------------------------------------
_lcd_print:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	lcd.c:146: while(string[i]!=0x00){
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
	jz	00104$
;	lcd.c:147: lcd_write(1,string[i]);
	mov	_lcd_write_PARM_2,r6
	mov	dpl,#0x01
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_lcd_write
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	lcd.c:148: i++;
	inc	r5
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_printstr'
;------------------------------------------------------------
;x                         Allocated with name '_lcd_printstr_PARM_2'
;y                         Allocated with name '_lcd_printstr_PARM_3'
;string                    Allocated to registers r2 r3 r4 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	lcd.c:158: void lcd_printstr(char *string, char x, char y)
;	-----------------------------------------
;	 function lcd_printstr
;	-----------------------------------------
_lcd_printstr:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	lcd.c:161: lcd_position(x,y);	//先定位
	mov	_lcd_position_PARM_2,_lcd_printstr_PARM_3
	mov	dpl,_lcd_printstr_PARM_2
	push	ar2
	push	ar3
	push	ar4
	lcall	_lcd_position
	pop	ar4
	pop	ar3
	pop	ar2
;	lcd.c:162: while(string[i]!=0x00){
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
	jz	00104$
;	lcd.c:163: lcd_write(1,string[i]);
	mov	_lcd_write_PARM_2,r6
	mov	dpl,#0x01
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_lcd_write
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	lcd.c:164: i++;
	inc	r5
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_printchar'
;------------------------------------------------------------
;x                         Allocated with name '_lcd_printchar_PARM_2'
;y                         Allocated with name '_lcd_printchar_PARM_3'
;charactor                 Allocated to registers r2 
;------------------------------------------------------------
;	lcd.c:174: void lcd_printchar(char charactor, char x, char y)
;	-----------------------------------------
;	 function lcd_printchar
;	-----------------------------------------
_lcd_printchar:
	mov	r2,dpl
;	lcd.c:176: lcd_position(x,y);
	mov	_lcd_position_PARM_2,_lcd_printchar_PARM_3
	mov	dpl,_lcd_printchar_PARM_2
	push	ar2
	lcall	_lcd_position
	pop	ar2
;	lcd.c:177: lcd_write(1,charactor);
	mov	_lcd_write_PARM_2,r2
	mov	dpl,#0x01
	ljmp	_lcd_write
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_printnum'
;------------------------------------------------------------
;x                         Allocated with name '_lcd_printnum_PARM_2'
;y                         Allocated with name '_lcd_printnum_PARM_3'
;number                    Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	lcd.c:185: void lcd_printnum(long int number, char x, char y)
;	-----------------------------------------
;	 function lcd_printnum
;	-----------------------------------------
_lcd_printnum:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	lcd.c:187: while(1){
00104$:
;	lcd.c:188: lcd_position(x,y);	//先输出，为0也输出0
	mov	_lcd_position_PARM_2,_lcd_printnum_PARM_3
	mov	dpl,_lcd_printnum_PARM_2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_lcd_position
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	lcd.c:189: lcd_write(1,number%10+32);
	mov	__modslong_PARM_2,#0x0A
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__modslong
	mov	r6,dpl
	mov	a,#0x20
	add	a,r6
	mov	_lcd_write_PARM_2,a
	mov	dpl,#0x01
	lcall	_lcd_write
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	lcd.c:191: number/=10;
	mov	__divslong_PARM_2,#0x0A
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	lcd.c:192: if(!number)	break;	//为0则停
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	lcd.c:201: void lcd_init(void)
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	lcd.c:206: lcd_write(0,0x3c);		//两行5*10点阵，8位数据接口
	mov	_lcd_write_PARM_2,#0x3C
	mov	dpl,#0x00
	lcall	_lcd_write
;	lcd.c:211: lcd_write(0,0x06); //读写后画面固定、AC自增
	mov	_lcd_write_PARM_2,#0x06
	mov	dpl,#0x00
	lcall	_lcd_write
;	lcd.c:216: lcd_write(0,0x0f);	//屏幕、光标和闪烁全开
	mov	_lcd_write_PARM_2,#0x0F
	mov	dpl,#0x00
	lcall	_lcd_write
;	lcd.c:218: lcd_cls();
	lcall	_lcd_cls
;	lcd.c:219: lcd_write(0,LCD_CMD_HOME);	//LCD归位（清DDRAM、DDROM、AC，清除所有移动）
	mov	_lcd_write_PARM_2,#0x02
	mov	dpl,#0x00
	ljmp	_lcd_write
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
