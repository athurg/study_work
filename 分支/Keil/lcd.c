/*

LCD1602三个存储器说明：

DDRAM：液晶显示数据存储器；保存着LCD上显示的字符点阵数据；
CGRAM：Character Generator ROM，字符产生存储器；可以保存8个5*8字符点阵码，或者4个5*10字符点阵码
CGROM：Character Generator ROM，字符产生存储器；保存着1602预置的174个字符的点阵码

AC：Address Couter，地址计数器；当前光标所在的DDRAM字符的地址；
*/

#include "lcd.h"
#include "common.h"

/********************* LCD指令 *********************/
#define LCD_CMD_CLS 0x01 //清屏指令（清DDRAM(DDRAM)和AC）
#define LCD_CMD_HOME 0x02 //归位（AC=0，光标、画面回HOME位），也可用0x03


//LCD忙标志位
#ifndef LCD_BUSY
    #define LCD_BUSY P0_7
#endif

/*--------------------------------函数定义--------------------------------*/
void lcd_wait(void)
{
/************************
*    等待LCD不忙函数
*
* 参数：空
* 返回：空（不忙时才返回）
*
*************************/

	while(1){
		LCD_EN=0;
		LCD_RS=0;
		LCD_RW=1;
		LCD_DATA=0xFF;
		LCD_EN=1;
		if(!LCD_BUSY)		break;		//忙完了，不玩了：）
	}
	LCD_EN=0;
	return;
}

/************************************************************
	    LCD写入函数

    参数：
	type：写入类型，0为指令，1为字符
	datas：8 bits要写入的数据

    返回：空
    调用：无
    描述：
	RS=type，RW=0(写操作) ==>> EN下降沿时执行
*************************************************************/
void lcd_write(char type, char datas)
{
    lcd_wait();	//等候LCD闲，置于最前面，以防止lcd_wait()对RS和RW造成影响
    
    LCD_RS=type;
    LCD_RW=0;

    LCD_DATA=datas;
    
    //先1后0，产生下降沿以写入
    LCD_EN=1;
    LCD_EN=0;
	;;;
}

/*************************************
	    LCD移动函数
    参数：
	object：c为光标，f为屏幕
	direct：l左移，r右移；
    返回：空
    调用：lcd_write(0,)

    说明：
	LCD移动指令组成为：0x10+对象+方向；
	对象取值：0x08画面、0x00光标；方向取值：0x04右、0x00左
**************************************/
void lcd_shift(char object, char num)
{
    char datas=0x10;
    if(object == 'f')	//对象=画面
	datas+=0x08;
    if(num > 0)	//正号右移
	datas+=0x04;
    else
	num=-num;	//负号取相反数，以统一循环变量
    
    while(num){
		lcd_write(0,datas);	//一次移动
		num--;
    }
}

/*************************************************
	    LCD光标定位到(x,y)处

    参数：x、y坐标，从0开始；
    返回：空
    调用：lcd_write(0,)
    说明：
	通过改变DDRAM存储器的AC值来改变下一数据写入的位置
	其指令为0x80+地址偏移量；
	单行显示时，地址偏移取值为0x00~0x4f；
	双行显示时首行为0x00~0x2f，次行为0x40~0x67
**************************************************/
void lcd_position(char x,char y)
{
	//数据有效性检查
	//x=(x>16 || x<=0)?15:x--;
	//y=(y>2 || y<=0)?1:y--;

	if(y)	x+=0x40;	//0x40：第二行起始位置偏移量
	lcd_write(0,0x80+x);
}


/*********************************
	    LCD清屏

    参数：无
    返回：空
    调用：lcd_write(0,)
**********************************/
void lcd_cls(void)
{
	lcd_write(0,LCD_CMD_CLS);
}


/**********************************
	    打印字符串

    调用：lcd_write(1,)
***********************************/
void lcd_prints(char *string)
{
    char i=0;
    while(string[i]!=0x00){
		lcd_write(1,string[i]);
		i++;
    }
}


/*****************************
	    定起点打印字符串

    调用：lcd_write(1,)、lcd_position()
******************************/
void lcd_printsxy(char *string, char x, char y)
{
    char i=0;
    lcd_position(x,y);	//先定位
    while(string[i]!=0x00){
		lcd_write(1,string[i]);
		i++;
    }
}

/*****************************
	    打印字符

    调用：lcd_write(1,)
******************************/
void lcd_printc(char charactor)
{
  lcd_write(1,charactor);
}

/*****************************
	    定点打印字符

    调用：lcd_write(1,)、lcd_position()
******************************/
void lcd_printcxy(char charactor, char x, char y)
{
    lcd_position(x,y);
    lcd_write(1,charactor);
}

/*****************************
	    定终点打印数值

    调用：lcd_write(1,)、lcd_position()
******************************/
void lcd_printnxy(long int number, char x, char y)
{
    char x_tmp=x;
    while(1){
      lcd_position(x_tmp,y);	//先输出，为0也输出0
      lcd_write(1,number%10+48);
      x_tmp--;	//退一位
      number/=10;
      if(0==number)	break;	//为0则停
    }
    lcd_position(++x,y);	//光标复位
}

/**************************************
	    LCD初始化

    调用：lcd_cls()、lcd_write()、lcd_position()
***************************************/
void lcd_init(void)
{
    //工作方式设置
	//取值为：0x20+数据接口＋行数＋字符分辨率
	//分辨率：4为5*10点阵、0为5*7点阵；行数：8为两行、0为一行；接口：0x10为8位数据接口，0x00为4为数据接口
    lcd_write(0,0x3c);		//两行5*10点阵，8位数据接口

    //输入方式(数据读写后AC和屏幕的变化)
	//取值为：0x04+AC＋画面
	//画面：1移动、0不动; AC：2自增、0自减
    lcd_write(0,0x06); //读写后画面固定、AC自增

    //显示开关(LCD、光标和闪烁)
	//取值为：0x08+闪烁＋光标＋显示
	//闪烁：1开、0关；光标：2开、0关；显示：4开、0关；
    lcd_write(0,0x0f);	//屏幕、光标和闪烁全开

    lcd_cls();
    lcd_write(0,LCD_CMD_HOME);	//LCD归位（清DDRAM、DDROM、AC，清除所有移动）
}
