#include <8051.h>


/*函数声明*/
char key_make(char);	//键值生成函数
char key_scan(void);		//键扫描函数



/*函数实现*/
char key_make(char key)
{
/******************************
*    键盘值生成函数
*
*  参数：键盘扫描所得的特征值
*  返回：键值或者’F‘
*
******************************/
    char i;
    struct keypad{char index;char value;};		//键盘键值表结构
    struct keypad keytable[]={
	{0xee,1},{0xde,2},{0xbe,3},{0x7e,'w'},
	{0xed,6},{0xdd,5},{0xbd,4},{0x7d,'f'},
	{0xeb,7},{0xdb,8},{0xbb,9},{0x7b,'a'},
	{0xe7,10},{0xd7,0},{0xb7,'c'},{0x77,'s'}
    };

	for(i=16;i>=0;i--)
	{
		if(keytable[i].index==key)
		{	return keytable[i].value;}
	}
	return 'O';
}

char key_scan(void)
{
/*
*    键盘扫描函数
*
*    参数:无
*    返回:扫描特征值
*
*    说明:
*        行扫描代码(0111,1011,1101,1110)没有任何规律可循，但是将其取反后(1000,0100,0010,0001)可以
*    发现，扫描代码是一个偶数数列（8，4，2，1）。
*        因此可以通过用偶数数列取反得到行扫描码，然后输出；而且内部使用逐次除2的方式，最后一个扫描
*    码生成之后除2恰好为0，可以作为while()退出的条件利用。
*/
	char line=0x08;			//行扫描起始码(00001000B)
	
	while(line){
		P1=~line;
		if((P1>>4)!=0x0f) break;
		line/=2;
	}
	line=P1;
	P1=0xf0; //重新初始化P1口，自己的事情自己搞完
	return line;
}
