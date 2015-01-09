#ifndef MAIN_H
#define MAIN_H 

#define DB_BUS P2		//总线
#define SIGNAL_CS P3_1	//信号输出使能
#define A_CS P3_2		//幅度调节时能

//函数声明
void flush(void);	//数据处理函数
void refresh(void);	//数据处理函数
void sys_init(void);	//系统初始化
void timer_service(void) interrupt 3;	//系统初始化
#endif
