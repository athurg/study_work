/*

LCD1602�����洢��˵����

DDRAM��Һ����ʾ���ݴ洢����������LCD����ʾ���ַ��������ݣ�
CGRAM��Character Generator ROM���ַ������洢�������Ա���8��5*8�ַ������룬����4��5*10�ַ�������
CGROM��Character Generator ROM���ַ������洢����������1602Ԥ�õ�174���ַ��ĵ�����

AC��Address Couter����ַ����������ǰ������ڵ�DDRAM�ַ��ĵ�ַ��
*/

#include "lcd.h"
#include "common.h"

/********************* LCDָ�� *********************/
#define LCD_CMD_CLS 0x01 //����ָ���DDRAM(DDRAM)��AC��
#define LCD_CMD_HOME 0x02 //��λ��AC=0����ꡢ�����HOMEλ����Ҳ����0x03


//LCDæ��־λ
#ifndef LCD_BUSY
    #define LCD_BUSY P0_7
#endif

/*--------------------------------��������--------------------------------*/
void lcd_wait(void)
{
/************************
*    �ȴ�LCD��æ����
*
* ��������
* ���أ��գ���æʱ�ŷ��أ�
*
*************************/

	while(1){
		LCD_EN=0;
		LCD_RS=0;
		LCD_RW=1;
		LCD_DATA=0xFF;
		LCD_EN=1;
		if(!LCD_BUSY)		break;		//æ���ˣ������ˣ���
	}
	LCD_EN=0;
	return;
}

/************************************************************
	    LCDд�뺯��

    ������
	type��д�����ͣ�0Ϊָ�1Ϊ�ַ�
	datas��8 bitsҪд�������

    ���أ���
    ���ã���
    ������
	RS=type��RW=0(д����) ==>> EN�½���ʱִ��
*************************************************************/
void lcd_write(char type, char datas)
{
    lcd_wait();	//�Ⱥ�LCD�У�������ǰ�棬�Է�ֹlcd_wait()��RS��RW���Ӱ��
    
    LCD_RS=type;
    LCD_RW=0;

    LCD_DATA=datas;
    
    //��1��0�������½�����д��
    LCD_EN=1;
    LCD_EN=0;
	;;;
}

/*************************************
	    LCD�ƶ�����
    ������
	object��cΪ��꣬fΪ��Ļ
	direct��l���ƣ�r���ƣ�
    ���أ���
    ���ã�lcd_write(0,)

    ˵����
	LCD�ƶ�ָ�����Ϊ��0x10+����+����
	����ȡֵ��0x08���桢0x00��ꣻ����ȡֵ��0x04�ҡ�0x00��
**************************************/
void lcd_shift(char object, char num)
{
    char datas=0x10;
    if(object == 'f')	//����=����
	datas+=0x08;
    if(num > 0)	//��������
	datas+=0x04;
    else
	num=-num;	//����ȡ�෴������ͳһѭ������
    
    while(num){
		lcd_write(0,datas);	//һ���ƶ�
		num--;
    }
}

/*************************************************
	    LCD��궨λ��(x,y)��

    ������x��y���꣬��0��ʼ��
    ���أ���
    ���ã�lcd_write(0,)
    ˵����
	ͨ���ı�DDRAM�洢����ACֵ���ı���һ����д���λ��
	��ָ��Ϊ0x80+��ַƫ������
	������ʾʱ����ַƫ��ȡֵΪ0x00~0x4f��
	˫����ʾʱ����Ϊ0x00~0x2f������Ϊ0x40~0x67
**************************************************/
void lcd_position(char x,char y)
{
	//������Ч�Լ��
	//x=(x>16 || x<=0)?15:x--;
	//y=(y>2 || y<=0)?1:y--;

	if(y)	x+=0x40;	//0x40���ڶ�����ʼλ��ƫ����
	lcd_write(0,0x80+x);
}


/*********************************
	    LCD����

    ��������
    ���أ���
    ���ã�lcd_write(0,)
**********************************/
void lcd_cls(void)
{
	lcd_write(0,LCD_CMD_CLS);
}


/**********************************
	    ��ӡ�ַ���

    ���ã�lcd_write(1,)
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
	    ������ӡ�ַ���

    ���ã�lcd_write(1,)��lcd_position()
******************************/
void lcd_printsxy(char *string, char x, char y)
{
    char i=0;
    lcd_position(x,y);	//�ȶ�λ
    while(string[i]!=0x00){
		lcd_write(1,string[i]);
		i++;
    }
}

/*****************************
	    ��ӡ�ַ�

    ���ã�lcd_write(1,)
******************************/
void lcd_printc(char charactor)
{
  lcd_write(1,charactor);
}

/*****************************
	    �����ӡ�ַ�

    ���ã�lcd_write(1,)��lcd_position()
******************************/
void lcd_printcxy(char charactor, char x, char y)
{
    lcd_position(x,y);
    lcd_write(1,charactor);
}

/*****************************
	    ���յ��ӡ��ֵ

    ���ã�lcd_write(1,)��lcd_position()
******************************/
void lcd_printnxy(long int number, char x, char y)
{
    char x_tmp=x;
    while(1){
      lcd_position(x_tmp,y);	//�������Ϊ0Ҳ���0
      lcd_write(1,number%10+48);
      x_tmp--;	//��һλ
      number/=10;
      if(0==number)	break;	//Ϊ0��ͣ
    }
    lcd_position(++x,y);	//��긴λ
}

/**************************************
	    LCD��ʼ��

    ���ã�lcd_cls()��lcd_write()��lcd_position()
***************************************/
void lcd_init(void)
{
    //������ʽ����
	//ȡֵΪ��0x20+���ݽӿڣ��������ַ��ֱ���
	//�ֱ��ʣ�4Ϊ5*10����0Ϊ5*7����������8Ϊ���С�0Ϊһ�У��ӿڣ�0x10Ϊ8λ���ݽӿڣ�0x00Ϊ4Ϊ���ݽӿ�
    lcd_write(0,0x3c);		//����5*10����8λ���ݽӿ�

    //���뷽ʽ(���ݶ�д��AC����Ļ�ı仯)
	//ȡֵΪ��0x04+AC������
	//���棺1�ƶ���0����; AC��2������0�Լ�
    lcd_write(0,0x06); //��д����̶���AC����

    //��ʾ����(LCD��������˸)
	//ȡֵΪ��0x08+��˸����꣫��ʾ
	//��˸��1����0�أ���꣺2����0�أ���ʾ��4����0�أ�
    lcd_write(0,0x0f);	//��Ļ��������˸ȫ��

    lcd_cls();
    lcd_write(0,LCD_CMD_HOME);	//LCD��λ����DDRAM��DDROM��AC����������ƶ���
}
