#ifndef KEYPAD_H
#define KEPAD_H

#include <mcs51/8051.h>
#define KEYPAD_DB P1

/*��������*/
char key_make(char);		//��ֵ���ɺ���
char key_scan(void);		//��ɨ�躯��

#endif
