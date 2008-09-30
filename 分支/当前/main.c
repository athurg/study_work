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
char lcd_str[2][16]={"Welcome to use !",">>Made in SWUN<<"};	//保存LCD显示数据
long int keycache=0;		//键盘输入缓存
struct signal{
	char w;		//波形
	long int f;	//频率
	char a;		//振幅
}sign={1,1000,5};

/*----------------------------  函 数 声 明  ----------------------------*/
void interrupt_init(void);	//中断初始化

void keypad_interrupt(void) interrupt 0;	//键盘中断处理函数

void flush(void);	//数据处理函数
void refresh(void);	//LCD显示内容刷新函数
void update_str(char * p,char line);
void num_refresh(void);
void menu_refresh(void);


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
	if(key!=state){	//按键非当前状态才处理
	    state=key;
	    if(key=='c')	flush();	//提交功能键按下
	    keycache=0;	//清空输入缓存
	}
	menu_refresh();
	
    }else{	//数字区
    	if(state)
	{
	    if(state=='w')	//波形选择只收集一次按键
		keycache=key;
	    else	//频率幅度需要叠加
		keycache=keycache>999999999?0:(key+keycache*10);
	    num_refresh();
	}
	
    }
    refresh();
    delay(1);	//歇会儿，你娃要一直按，我就不甩你
}


void flush(void)
{
    switch(state){
	case 'w':
	    sign.w=keycache;
	    break;
	case 'f':
	    sign.f=keycache;
	    break;
	case 'a':
	    sign.a=keycache;
	    break;
    }
    //TODO:
    //此处要添加输出到总线的代码；
}


void refresh(void)
{
/****************
* LCD屏幕刷新函数
*
****************/
    lcd_position(0,0);
    lcd_prints(lcd_str[0]);
    lcd_position(0,1);
    lcd_prints(lcd_str[1]);
}


void menu_refresh(void)
{
/*********************
* LCD字串刷新函数(菜单)
*
*********************/

    switch(state)
    {
	default://待机
	    update_str("Welcome to use !",0);
	    update_str(">>Made in SWUN<<",1);
	    break;
	case 'w'://波形
	    update_str("=Wave Type  Set=",0);
	    update_str("1.sin 2.fan 3.tr",1);
	    break;
	case 'f'://频率
	    update_str("=Frequence  Set=",0);
	    update_str("           0 KHz",1);
	    break;
	case 'a'://振幅
	    update_str("=Amplitude  Set=",0);
	    update_str("           0 Vol",1);
	    break;
    }
}


/*********************
* 用字符串刷新LCD字串函数
*
*********************/
void update_str(char * p,char line)
{
    int i=0;
    while(1)
    {
	lcd_str[line][i]=*p;
	p++;i++;
	if(*p=='\0')	break;
    }
}


void num_refresh(void)
{
/*********************
* LCD字串刷新函数(数据)
*
*********************/
    char i;
    long int tmp=keycache;

    if(state=='w')
    {
	switch(keycache)
	{
	    case 1:
		update_str("1.Sin           ",1);break;
	    case 2:
		update_str("2.Freq          ",1);break;
	    case 3:
		update_str("3.Tri           ",1);break;
	    default:

	}
    }
    else
    {
	for(i=0;i<11;i++)	lcd_str[1][i]=' ';
	while(tmp)
	{
	    lcd_str[1][i]=tmp%10+48;
	    tmp/=10;
	    i--;
	}
    }
}

/****************************
	    中断初始化

    参数：无
    返回：无
    调用：无
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
    refresh();	//打印待机界面
    //lcd_position(0,0);
}
