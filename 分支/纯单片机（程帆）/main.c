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
	{127,139,152,164,176,187,198,208,217,225,233,239,244,249,252,253,254,253,252,249,244,239,233,225,217,208,197,187,176,164,152,139,127,114,102,90,78,67,56,46,37,29,21,15,10,5,2,1,0,1,2,6,10,15,21,29,37,47,57,67,79,90,102,115,128,177,218,245,255,245,218,177,128,80,38,11,0,11,38,80,128},
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff},
	{0,4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64,68,72,76,80,85,89,93,97,101,105,109,113,117,121,125,129,133,137,141,145,149,153,157,161,165,170,174,178,182,186,190,194,198,202,206,210, 214,218,222,226,230,234,238,242,246,250,255}	//�˴������ǲ��������滻
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
