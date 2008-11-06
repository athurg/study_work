/*---------------------------------
		主文件

	作者 : Athurg

	修订：
		08/04：增加Make规则编译
		08/11：修正包含规则
-----------------------------------*/

#include "8051.h"
#include "lcd.h"
#include "keypad.h"
#include "common.h"

#define MAX038_A0 P2_0
#define MAX038_A1 P2_1
#define CAP_CS P2_2
#define DA_CS P3_3

/*----------------------------  全 局 变 量  --------------------------－-*/
char state=0;	//状态变量,0为待机,W波形,F频率,A幅度
char stand_str[38]="     Wave;F=     KHz;A=   Vol   ";
char stand_pos=0;	//控制待机时屏幕流动显示的位置；
char freq_type=0;	//高低频显示切换

long int keycache=0;		//键盘输入缓存
struct signal{
	char w;		//波形
	long int f;	//频率
	char a;		//振幅
}sign={3,1000,5};

/*----------------------------  函 数 声 明  ----------------------------*/
void interrupt_init(void);	//中断初始化

void flush(void);	//数据处理函数
void refresh(void);	//数据处理函数

void insert_str(char *str_p,char x, char y);
void insert_num(long int num,char x, char y);

void serial_write(unsigned int datas);

/*函数实现*/

void flush(void)
{
    switch(state){
		case 1:
			sign.w=keycache;
			P2&=0xfc;
			P2|=sign.w-1;	//键盘输入的1、2、3依次对应相应的波形，直接从P2输出即可
			break;
		case 2:
			if(freq_type)	sign.f=keycache*1000;
			else			sign.f=keycache;
			//TODO:此处添加电容选择的代码
			//P0=电容选择的译码
			//CAP_CS=1;	CAP_CS=0;
			serial_write(sign.f);
			break;
		case 3:
			sign.a=keycache;
			break;
    }
	state=0;		//处理完成恢复待机状态
}

void refresh(void)
{
	lcd_printsxy("                ",0,0);
	lcd_printsxy("                ",0,1);
	switch(state){
		case 0:
			switch(sign.w){
				case 1:lcd_printsxy("Rect    A=   Vol",0,0);	break;
				case 2:lcd_printsxy("Tria    A=   Vol",0,0);	break;
				case 3:lcd_printsxy("sine    A=   Vol",0,0);	break;
			}
			lcd_printnxy(sign.a,12,0);

			if(sign.f>1000000){
				lcd_printsxy("F=       KHz",0,1);
				lcd_printnxy(sign.f/1000,8,1);
			}else{
				lcd_printsxy("F=        Hz",0,1);
				lcd_printnxy(sign.f,8,1);
			}
			break;
		case 1:
			lcd_printsxy("Wave Select",0,0);
			switch(keycache){
				case 1: lcd_printsxy("Rect Wave",0,1);break;
				case 2: lcd_printsxy("Tria Wave",0,1);break;
				case 3: lcd_printsxy("Sine Wave",0,1);break;
				default: lcd_printsxy("1.Rec 2.Tri 3.Sin",0,1);break;
			}
			break;
		case 2:
			lcd_printsxy("Frequence Set",0,0);
			if(freq_type)	lcd_printsxy("KHz",13,1);
			else			lcd_printsxy(" Hz",13,1);
			lcd_printnxy(keycache,12,1);
			break;
		case 3:
			lcd_printsxy("Ample Setting",0,0);
			lcd_printsxy("Vol",13,1);
			lcd_printnxy(keycache,12,1);
			break;
	}
	stand_pos=0;
}


/****************************
	    中断初始化
    说明：
	电平方式外部中断、串行中断响应后CPU无法自动撤除中断请求，必须在中断响应程序中手动撤除。
	其他方式CPU会自动撤除
*****************************/
void interrupt_init(void)
{
/*
	//外部中断0
    EX0=1;	//外部中断0
    
    PX0=1;	//外部中断优先
    
    IT0=1;	//下降沿出发
*/
	//串口
	SCON=0x00;	//方式0
    ES =1;		//串行中断
    //总开关
    EA=1;
}

unsigned char fuck(unsigned char indata)
{
	unsigned char i,outdata=0;

	for(i=0; i<8; i++){
		outdata<<=1;
		outdata+=indata%2;
		indata>>=1;
	}
	return outdata;
}

void serial_write(unsigned int datas)
{
	DA_CS=0;

	SBUF=fuck(datas>>8);
	while(!TI);
	TI=0;
	SBUF=fuck(datas);
	while(!TI);
	TI=0;
	DA_CS=1;	//给MAX531片选端一个上升沿
}

void main(void)
{

	unsigned char key;
	unsigned int tmp;
	//初始化
    lcd_init();
    interrupt_init();
    P1=0xf0;

	refresh();

	while(1){
	    key=key_make(key_scan());

		if(key!='F'){
	
		    if(key>10){	//功能区
				key-=20;
				if(key==5)		freq_type=!freq_type;
				else if(key==4)		flush();	//功能处理
				else			state=key;
				keycache=0;	//清空输入缓存
		    }else if(state){	//非设置状态的数字按键丢弃
				if(state==1)	keycache=key;//波形选择只收集一次按键
				else		keycache=keycache>99999999 ? 0 : (key+keycache*10);	//频率幅度需要叠加
			}
		    refresh();
			delay(1);
		}
	}
	
}
