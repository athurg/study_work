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



/*----------------------------  全 局 变 量  --------------------------－-*/
char state=0;	//状态变量,0为待机,W波形,F频率,A幅度
char stand_str[38]="     Wave;F=     KHz;A=   Vol   ";
char stand_pos=0;	//控制待机时屏幕流动显示的位置；

long int keycache=0;		//键盘输入缓存
struct signal{
	char w;		//波形
	long int f;	//频率
	char a;		//振幅
}sign={1,1000,5};

/*----------------------------  函 数 声 明  ----------------------------*/
void interrupt_init(void);	//中断初始化
void keypad_interrupt(void);	//键盘中断处理函数

void flush(void);	//数据处理函数
void refresh(void);	//数据处理函数

void insert_str(char *str_p,char x, char y);
void insert_num(long int num,char x, char y);

/*函数实现*/

void keypad_interrupt(void) interrupt 0
{
/*************************
*
*         键盘中断处理程序
*
*     参数：INT0有效
*     调用：delay、键盘处理函数
*************************/
    int key;
    key=key_make(key_scan());
    
    if(key>10){	//功能区
		key-=20;
		if(key==4)		flush();	//功能处理
		else			state=key;
		keycache=0;	//清空输入缓存
    }else if(state){	//非设置状态的数字按键丢弃
		if(state==1)	keycache=key;//波形选择只收集一次按键
		else		keycache=keycache>999999999 ? 0 : (key+keycache*10);	//频率幅度需要叠加
    }
    refresh();
	delay(1);
}

void flush(void)
{
    switch(state){
		case 1:
			sign.w=keycache;
			break;
		case 2:
			sign.f=keycache;
			break;
		case 3:
			sign.a=keycache;
			break;
    }
    //TODO:
    //此处要添加输出到总线的代码；

	state=0;		//处理完成恢复待机状态
}

void refresh(void)
{
	lcd_printsxy("                ",0,0);
	lcd_printsxy("                ",0,1);
	switch(state){
		case 0:
			switch(sign.w){
				case 2:lcd_printsxy("Rect    A=   Vol",0,0);	break;
				case 3:lcd_printsxy("Tria    A=   Vol",0,0);	break;
				default:lcd_printsxy("sine    A=   Vol",0,0);	break;
			}

			lcd_printsxy("F=       KHz",0,1);
			lcd_printnxy(sign.a,12,0);lcd_printnxy(sign.f,8,1);
			break;
		case 1:
			lcd_printsxy("Wave Select",0,0);
			switch(keycache){
				case 1: lcd_printsxy("Sine Wave",0,1);break;
				case 2: lcd_printsxy("Deco Wave",0,1);break;
				case 3: lcd_printsxy("Tria Wave",0,1);break;
				default: lcd_printsxy("1.Sin 2.Dec 3.Tri",0,1);break;
			}
			break;
		case 2:
			lcd_printsxy("Frequence Set",0,0);
			lcd_printsxy("KHz",13,1);
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
    //中断开关，开外部中断0，关其他中断
    EX0=1;    EX1=0;	//外部中断
    ET0=0;    ET1=0;	//定时器中断
    ES =0;		//串行中断
    
    //优先级设置,外部中断优先
    PX0=1;	//外部
    PT0=0;	//定时器
    
    //外部中断触发方式
    IT1=0;	//低电平触发，设为1为下降沿触发
    
    EA=1;	//打开中断总开关
}


void main(void)
{
	//初始化
    lcd_init();	//LCD初始化
    interrupt_init();	//外部中断0初始化
    P1=0xf0;	//键盘初始化
	lcd_printsxy("Hello,Athurg",0,0);
	delay(1);
	lcd_printsxy("Hello,Athurg",0,1);
	while(1);
	//refresh();
	//while(1)	refresh();
	/*
	while(1){
		if(state){
			lcd_printsxy(lcd_str[0],0,0);
			lcd_printsxy(lcd_str[1],0,1);
		}else{
			lcd_printsxy("WELCOME TO USE",0,0);
			
			for(i=0; i<16; i++){
				switch(sign.w){
					case 1: stand=stand_sine;break;
					case 2: stand=stand_rect;break;
					case 3: stand=stand_tria;break;
				}
				lcd_printsxy(stand,0-i,1);
				lcd_printnxy(sign.f,16-i,1);	lcd_printnxy(sign.a,25-i,1);
				delay(1);
			}
		}
	
	}
	*/
}
