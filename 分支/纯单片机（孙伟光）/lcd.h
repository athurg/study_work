#ifndef LCD_H
#define LCD_H

#include <mcs51/8051.h>

/*---------端口定义----------*/
//LCD指令端口
#define LCD_EN P3_5
#define LCD_RW P3_6
#define LCD_RS P3_7

#define LCD_BUSY P0_7		//忙标志位
#define LCD_DATA P0		//数据总线

/*---------函数声明--------*/

//功能函数
void lcd_wait(void);		//查询LCD忙状态，闲时返回
void lcd_write(char type, char datas);	//写LCD指令(type=0)或字符(type=1)
void lcd_init(void);		//LCD初始化

//辅助函数
void lcd_position(char x,char y);	//光标定位
void lcd_cls(void);			//清屏
void lcd_shift(char object, char num);	//移动光标(object='c')或者屏幕(object='f')，num为位数，+右-左

//打印
void lcd_prints(char *string);
void lcd_printsxy(char *string, char x, char y);	//定起点打印字串
void lcd_printc(char charactor);	//打印字符
void lcd_printcxy(char charactor, char x, char y);	//定点打印字符
void lcd_printnxy(long int number, char x, char y);	//定终点打印数值

#endif
