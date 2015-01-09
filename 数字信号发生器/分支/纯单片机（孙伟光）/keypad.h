#ifndef KEYPAD_H
#define KEPAD_H

#include <mcs51/8051.h>
#define KEYPAD_DB P1

/*函数声明*/
char key_make(char);		//键值生成函数
char key_scan(void);		//键扫描函数

#endif
