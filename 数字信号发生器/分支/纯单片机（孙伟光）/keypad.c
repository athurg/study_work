#include "keypad.h"

char key_make(char key)
{
/******************************
*    ����ֵ���ɺ���
*
*  ����������ɨ�����õ�����ֵ
*  ���أ���ֵ���ߡ�B��(BLANK)
*
******************************/
    char i;
    struct keypad{char index;char value;};		//���̼�ֵ��ṹ
    struct keypad keytable[]={
	{0xee,1},{0xde,2},{0xbe,3},{0x7e,21},
	{0xed,4},{0xdd,5},{0xbd,6},{0x7d,22},
	{0xeb,7},{0xdb,8},{0xbb,9},{0x7b,23},
	{0xe7,0},{0xd7,11},{0xb7,12},{0x77,24},{0x00,'F'}
    };
	/*
	1	2	3	w
	6	5	4	f
	7	8	9	a
	10	0	c	s
	*/
    for(i=16;i>=0;i--){
		if(keytable[i].index==key)	return keytable[i].value;
    }
    return 'F';
}

char key_scan(void)
{
/*
*    ����ɨ�躯��
*
*    ����:��
*    ����:ɨ������ֵ
*
*    ˵��:
*        ��ɨ�����(0111,1011,1101,1110)û���κι��ɿ�ѭ�����ǽ���ȡ����(1000,0100,0010,0001)����
*    ���֣�ɨ�������һ��ż�����У�8��4��2��1����
*        ��˿���ͨ����ż������ȡ���õ���ɨ���룬Ȼ������������ڲ�ʹ����γ�2�ķ�ʽ�����һ��ɨ��
*    ������֮���2ǡ��Ϊ0��������Ϊwhile()�˳����������á�
*/
    unsigned char line=0x08;			//��ɨ����ʼ��(00001000B)

    while(line){
		KEYPAD_DB=~line;
		if((KEYPAD_DB>>4)!=0x0f) break;
		line/=2;
    }
    line=KEYPAD_DB;
    KEYPAD_DB=0xf0; //���³�ʼ��P1�ڣ��Լ��������Լ�����

    return line;
}
