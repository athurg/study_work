#include "reg51.h"
#include "8051.h"
#include "common.c"

/*--------------------------------端口定义--------------------------------*/
#define LCD_EN P2_2
#define LCD_RS P2_0
#define LCD_RW P2_1
#define LCD_BUSY P0_7		//忙标志位
#define LCD_DATA P0


/*--------------------------------常用数据定义--------------------------------*/
#define LCD_GO_HOME 0x02 //AC=0，光标、画面回HOME位

//输入方式
#define LCD_AC_AUTO_INCREMENT 0x06 //读写数据后，AC自动增一
#define LCD_AC_AUTO_DECREASE 0x04 //AC自动减一
#define LCD_MOVE_ENABLE 0x05 //数据读、写操作，画面平移
#define LCD_MOVE_DISENABLE 0x04 //数据读、写操作，画面不动

//LCD、光标及闪烁开关
#define LCD_DISPLAY_ON 0x0C //显示开
#define LCD_DISPLAY_OFF 0x08 //显示关
#define LCD_CURSOR 0x0A //光标：0A为显示，0x08不显示
#define LCD_CURSOR_BLINK 0x09 //光标闪烁：0x09为不闪烁


//LCD工作方式设置，38为两行，30为单行
#define LCD_LINES 0x38


/*--------------------------------函数声明--------------------------------*/
void lcd_wait(void);
void lcd_cmd(char);
void lcd_data(char);
void lcd_init(void);
void lcd_shift(char num);
void lcd_cursor_shift(char num);
void lcd_position(char x,char y);
void lcd_cls(void);
void lcd_print(char *string);


/*--------------------------------函数定义--------------------------------*/
void lcd_wait(void)
{
/***************************
*    等待LCD不忙函数
*
* 参数：空
* 返回：空（不忙时才返回）
*
****************************/

	while(1)
	{
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

void lcd_cmd(char cmd)
{
/******************
*    LCD写指令函数
*
*    参数：指令代码
*    返回：空
*
*    描述：
＊        EA=0 ==> RS=RW=0,EN=1 ==> 输出  ==>EN＝0，EA＝1
*******************/
	EA=0;
	lcd_wait();
	LCD_RS=0;
	LCD_RW=0;
	LCD_EN=1;
	LCD_DATA=cmd;
	LCD_EN=0;
	EA=1;
	return;
}

void lcd_data(char datas)
{
/******************
*    LCD写数据函数
*
*    参数：数据(字符格式的数字、字符等)
*    返回：空
*
*    描述：
＊        EA=0 ==> RS=EN=0,RW=1 ==> 输出  ==>EN＝0，EA＝1
*******************/
	EA=0;
	lcd_wait();
	LCD_RS=1;
	LCD_RW=0;
	LCD_EN=1;
	LCD_DATA=datas;
	LCD_EN=0;
	EA=1;
	return;
}


void lcd_init(void)
{
/*
*  初始化LCD
*
* 调用：lcd_cls()、lcd_cmd()、lcd_position
*/
	lcd_cls();
	lcd_cmd(LCD_CURSOR);
	lcd_cmd(LCD_AC_AUTO_INCREMENT);
	lcd_cmd(LCD_DISPLAY_ON);

	lcd_cmd(LCD_LINES);	//工作方式（行数）

	lcd_position(2,0);		//定位到第一行第一列

}


void lcd_shift(char num)
{
/*
*    LCD屏幕移动函数
*  参数：num；移动的位数，为负左移，为正右移；
* 返回：空
*  调用：lcd_cmd()
*/
	while(num){
		if(num>0){		//右
			lcd_cmd(0x1c);num--;
		}else{
			lcd_cmd(0x18);	num++;
		}
	}
	return;
}

void lcd_cursor_shift(char num)
{
/*
*    LCD光标移动函数
*
*  参数：num；需要移动的位数，为负左移，为正右移；
* 返回：空
*  调用：lcd_cmd()
*/
	while(num){
		if(num>0){
			lcd_cmd(0x14);num--; //右
		}else{
			lcd_cmd(0x10);	num++;
		}
	}
	return;
}

void lcd_position(char x,char y)
{
/*
*光标定位到x处
*
*    参数：x（列）、y（行）
*    调用：lcd_cmd()
*/

	//数据有效性检查
	y=y>16?15:y--;
	x=x>2?1:x--;

	if(y)			x+=0x40;		//0x40：第二行起始位置偏移量
	lcd_cmd(0x80+x);	//0x80第一行显示起始位置
	return ;
}

void lcd_cls(void)
{
/*
*       LCD清屏
*  调用：lcd_cmd()
*/

	lcd_cmd(0x01);
	return;
}

void lcd_print(char *string)
{
/*
*     输出字符串
*  调用：lcd_cmd()
*/
	char i=0;
	while(string[i]!=0x00)	{
		lcd_data(string[i]);
		i++;
	}
	return;
}
