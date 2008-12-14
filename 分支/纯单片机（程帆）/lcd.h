#ifndef LCD_H
#define LCD_H

/*---------�˿ڶ���----------*/
//LCDָ��˿�
#define LCD_EN P3_0
#define LCD_RW P3_1
#define LCD_RS P3_2

#define LCD_BUSY P2_7		//æ��־λ
#define LCD_DATA P2		//��������

/*---------��������--------*/

//���ܺ���
void lcd_wait(void);		//��ѯLCDæ״̬����ʱ����
void lcd_write(char type, char datas);	//дLCDָ��(type=0)���ַ�(type=1)
void lcd_init(void);		//LCD��ʼ��

//��������
void lcd_position(char x,char y);	//��궨λ
void lcd_cls(void);			//����
void lcd_shift(char object, char num);	//�ƶ����(object='c')������Ļ(object='f')��numΪλ����+��-��

//��ӡ
void lcd_prints(char *string);
void lcd_printsxy(char *string, char x, char y);	//������ӡ�ִ�
void lcd_printc(char charactor);	//��ӡ�ַ�
void lcd_printcxy(char charactor, char x, char y);	//�����ӡ�ַ�
void lcd_printnxy(long int number, char x, char y);	//���յ��ӡ��ֵ

#endif
