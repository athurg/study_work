/*
	���ڵ�Ƭ���ļ����źŷ�����

����������
	TKStudio+SDCC

ʹ�û�����
	AT89x51����Ƭ������DAC0832��ģ��ת����������

�汾��
	V0.8

����ʱ�䣺
	2008-12-12
�޶�ʱ�䣺
	2008-12-13
*/
/****************************************�궨��****************************************/
//�ļ�����
#include "main.h"
#include <mcs51/8051.h>
#include "lcd.h"
#include "keypad.h"
#include "common.h"

//ȫ�ֱ���
unsigned char State=0;		//״̬����,0Ϊ������1���Ρ�2���ڡ�3����
long int KeyCache=0;		//�������뻺��
struct signal{
	unsigned char w;		//���Σ�1���ҡ�2������3���ǣ�
	long int c;				//����(��λuS)
	unsigned char a;		//���
}Signal={1,1000,5};
code unsigned char WaveDB[3][64]={
	{'\0'},	//�˴������Ҳ��������滻
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff},
	{'\0'}	//�˴������ǲ��������滻
};
unsigned char Counter,Th1,Tl1;	//ȡ�����������ʱ���ߵ�λ������������Th=0xff:320KHz��0xf8:30Hz��


/****************************************����ʵ��****************************************/
void sys_init(void)
{
/*
	ϵͳ��ʼ������
*/
	//ȡ���������������������ʼֵ
	Counter=0x00;
	Th1=0xff;
	Tl1=0xff;

	//��Һ����ˢ����ʾ
	lcd_init();
	refresh();

	//��ʱ����ʼ�����ⲿ�޹ء���ʱT1����ʽ1��16λ�ֶ�װ�룩
	TH1=Th1;
	TL1=Tl1;
	TMOD=0x10;
	
	//���жϡ�T1�жϿ���T1��
	EA=1;
	ET1=1;
	TR1=1;

}
void flush(void)
{
/*
	���ܴ�����
*/
    switch(State){
		case 1://����
			Signal.w=--KeyCache;
			break;
		case 2://����
			Signal.c=KeyCache;
			KeyCache>>=6;
			KeyCache=0xffff-KeyCache;
			KeyCache+=0x2a;
			Tl1=KeyCache;
			Th1=(KeyCache)>>8;
			break;
		case 3://����
			Signal.a=KeyCache;
			DB_BUS=Signal.a;
			A_CS=0;
			;;;
			A_CS=1;
			break;
    }
}

void refresh(void)
{
/*
	Һ����ʾˢ�º���
*/
	lcd_cls();
	switch(State){
		case 0:
			switch(Signal.w){
				case 0:lcd_printsxy("Sine    A=   Vol",0,0);	break;
				case 1:lcd_printsxy("Rect    A=   Vol",0,0);	break;
				case 2:lcd_printsxy("Tria    A=   Vol",0,0);	break;
			}
			lcd_printnxy(Signal.a,12,0);
			lcd_printsxy("C=        uS",0,1);
			lcd_printnxy(Signal.c,8,1);
			break;
		case 1:
			lcd_printsxy("Wave Select",0,0);
			switch(KeyCache){
				case 1: lcd_printsxy("Sine Wave",0,1);break;
				case 2: lcd_printsxy("Rect Wave",0,1);break;
				case 3: lcd_printsxy("Tria Wave",0,1);break;
				default: lcd_printsxy("1.Sin 2.Rec 3.Tri",0,1);break;
			}
			break;
		case 2:
			lcd_printsxy("Cycle  Setting",0,0);
			lcd_printsxy(" uS",13,1);
			lcd_printnxy(KeyCache,12,1);
			break;
		case 3:
			lcd_printsxy("Ample  Setting",0,0);
			lcd_printsxy("Vol",13,1);
			lcd_printnxy(KeyCache,12,1);
			break;
	}
	delay(1);
}

void timer_service(void) interrupt 3
{
/*
	��ʱ��1�жϷ�����
*/
	DB_BUS=WaveDB[Signal.w][Counter++];
	if(Counter==64)	Counter=0x00;
	TH1=Th1;TL1=Tl1;
}

void main(void)
{

	unsigned char key;
    sys_init();

	while(1){
	    key=key_make(key_scan());
		if(key=='F'){
			continue;		
		}else if(key>20){ //�˵���
			TR1=0;
			State=key-20;
			KeyCache=0;	//������뻺��
		}else if(key>10){ //���ܼ�
			key-=11;
			if(key)		flush();	//���ܴ���
			KeyCache=0;
			State=0;
			refresh();
			delay(1);
			TR1=1;	//���жϣ�������
			continue;
		}else if(State){	//����̬���ּ�
			//����ѡ��ֻ�ռ�һ�ΰ��������ڷ�����Ҫ����
			if(State==1)	KeyCache=key;
			else		KeyCache=KeyCache>99999 ? 0 : (key+KeyCache*10);
		}
		refresh();
		delay(1);
	}
	
}
