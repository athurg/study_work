/*------------------------------------------------------------------
		寄存器定义 
	作者：
		Athurg （athurg@gooth.cn）
	适用芯片：
		因特尔MCS 8051微控制器兼容芯片
	授权：
		你可以在GPL v2协议下使用、修改、发布以及重发布本软件
---------------------------------------------------------------------*/

#ifndef REG8051_H
#define REG8051_H

/* 字节寄存器 */
__sfr __at (0x80) P0;
__sfr __at (0x90) P1;
__sfr __at (0xA0) P2;
__sfr __at (0xB0) P3;

__sfr __at (0x81) SP;
__sfr __at (0x82) DPL;
__sfr __at (0x83) DPH;
__sfr __at (0x87) PCON;
__sfr __at (0x88) TCON;
__sfr __at (0x89) TMOD;

__sfr __at (0x8A) TL0;
__sfr __at (0x8B) TL1;
__sfr __at (0x8C) TH0;
__sfr __at (0x8D) TH1;

__sfr __at (0x98) SCON;
__sfr __at (0x99) SBUF;

__sfr __at (0xA8) IE;
__sfr __at (0xB8) IP;
__sfr __at (0xD0) PSW;

__sfr __at (0xE0) ACC;
__sfr __at (0xF0) B ;


/* 位寄存器 */
// P0口
__sbit __at (0x80) P0_0;
__sbit __at (0x81) P0_1;
__sbit __at (0x82) P0_2;
__sbit __at (0x83) P0_3;
__sbit __at (0x84) P0_4;
__sbit __at (0x85) P0_5;
__sbit __at (0x86) P0_6;
__sbit __at (0x87) P0_7;

// P1口
__sbit __at (0x90) P1_0;
__sbit __at (0x91) P1_1;
__sbit __at (0x92) P1_2;
__sbit __at (0x93) P1_3;
__sbit __at (0x94) P1_4;
__sbit __at (0x95) P1_5;
__sbit __at (0x96) P1_6;
__sbit __at (0x97) P1_7;

// P2口
__sbit __at (0xA0) P2_0;
__sbit __at (0xA1) P2_1;
__sbit __at (0xA2) P2_2;
__sbit __at (0xA3) P2_3;
__sbit __at (0xA4) P2_4;
__sbit __at (0xA5) P2_5;
__sbit __at (0xA6) P2_6;
__sbit __at (0xA7) P2_7;

// P3口 
__sbit __at (0xB0) P3_0;
__sbit __at (0xB1) P3_1;
__sbit __at (0xB2) P3_2;
__sbit __at (0xB3) P3_3;
__sbit __at (0xB4) P3_4;
__sbit __at (0xB5) P3_5;
__sbit __at (0xB6) P3_6;
__sbit __at (0xB7) P3_7;

// P3口总线方式
__sbit __at (0xB0) RXD;
__sbit __at (0xB1) TXD;
__sbit __at (0xB2) INT0;
__sbit __at (0xB3) INT1;
__sbit __at (0xB4) T0;
__sbit __at (0xB5) T1;
__sbit __at (0xB6) WR;
__sbit __at (0xB7) RD;

// 定时/计数器控制（TCON）
__sbit __at (0x88) IT0;
__sbit __at (0x89) IE0;
__sbit __at (0x8A) IT1;
__sbit __at (0x8B) IE1;
__sbit __at (0x8C) TR0;
__sbit __at (0x8D) TF0;
__sbit __at (0x8E) TR1;
__sbit __at (0x8F) TF1;


// 串行控制（SCON）
__sbit __at (0x98) RI;
__sbit __at (0x99) TI;
__sbit __at (0x9A) RB8;
__sbit __at (0x9B) TB8;
__sbit __at (0x9C) REN;
__sbit __at (0x9D) SM2;
__sbit __at (0x9E) SM1;
__sbit __at (0x9F) SM0;

// 中断允许控制（IE）
__sbit __at (0xA8) EX0;
__sbit __at (0xA9) ET0;
__sbit __at (0xAA) EX1;
__sbit __at (0xAB) ET1;
__sbit __at (0xAC) ES;
__sbit __at (0xAF) EA;


// 中断优先级控制（IP） 
__sbit __at (0xB8) PX0;
__sbit __at (0xB9) PT0;
__sbit __at (0xBA) PX1;
__sbit __at (0xBB) PT1;
__sbit __at (0xBC) PS;

// 程序状态字（PSW，Programme State Word） 
__sbit __at (0xD0) P ;
__sbit __at (0xD1) F1;
__sbit __at (0xD2) OV;
__sbit __at (0xD3) RS0;
__sbit __at (0xD4) RS1;
__sbit __at (0xD5) F0;
__sbit __at (0xD6) AC;
__sbit __at (0xD7) CY;

/* 无法直接访问的位定义 */
// 电源控制位（PCON）
#define IDL	0x01
#define PD	0x02
#define GF0	0x04
#define GF1	0x08
#define SMOD	0x80

// 定时/计数器方式控制（TMOD）
#define T0_M0		0x01
#define T0_M1		0x02
#define T0_CT		0x04
#define T0_GATE	0x08
#define T1_M0		0x10
#define T1_M1		0x20
#define T1_CT		0x40
#define T1_GATE	0x80

#define T0_MASK	0x0F
#define T1_MASK	0xF0

// 中断号（Interrupt numbers）：地址 ＝ （中断号＊8）＋3
#define IE0_VECTOR	0   // 0x03 外部中断 0
#define TF0_VECTOR	1   // 0x0b 定时器 0
#define IE1_VECTOR	2   // 0x13 外部中断 1
#define TF1_VECTOR	3   // 0x1b 定时器 1
#define SI0_VECTOR	4   // 0x23 串口 0

#endif

