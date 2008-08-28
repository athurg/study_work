/***************************************************************
*           主函数文件
*
* 作者 : Athurg
*
* 修订：
*     08/04：增加Make规则编译
*
*****************************************************************/


#include "lcd.c"
#include "keypad.c"

/*全局变量*/
char state=0;	//状态变量,0为待机,W波形,F频率,A幅度
char lcd_str[2][16]={{0}};	//保存LCD显示数据
long int keycache=0;		//键盘输入缓存

/*函数声明*/
void lcd_int(void) interrupt 0;	//键盘中断处理函数
void refresh(void);	//LCD显示内容刷新函数
void update_str(char * p,char line);
void num_refresh(void);
void menu_refresh(void);


/*函数实现*/
void lcd_int(void) interrupt 0
{
/*************************
*
*         键盘中断处理程序
*
*     参数：INT0有效
*     调用：delay、键盘处理函数
*
*************************/
    int key;
    key=key_make(key_scan());
    if(key>10)
    {//功能区
	if(key!=state)
	{	//按键非当前状态才处理
		state=key;
		keycache=0;	//清空输入缓存
	}
	menu_refresh();
    }
    else
    {//数字区
    	if(state)
	{
	    if(state=='w')	//波形选择只收集一次按键
		keycache=key;
	    else	//频率幅度需要叠加
		keycache=keycache>999999999?0:(key+keycache*10);
	}
	num_refresh();
    }
    refresh();
    delay(1);	//歇会儿，你娃要一直按，我就不甩你
}

void refresh(void)
{
/****************
* LCD屏幕刷新函数
*
****************/
    lcd_position(0,0);
    lcd_print(lcd_str[0]);
    lcd_position(0,1);
    lcd_print(lcd_str[1]);
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

void update_str(char * p,char line)
{
/*********************
* 用字符串刷新LCD字串函数
*
*********************/
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



void main(void)
{
	//初始化
	lcd_init();	//LCD初始化
	EA=1;EX0=1;PX0=1;IT0=0;	//外部中断0初始化
	P1=0xf0;		//端口初始化
	
	//while(1)	refresh();
}
