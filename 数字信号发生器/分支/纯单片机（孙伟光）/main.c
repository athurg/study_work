#include <mcs51/8051.h>
#include "lcd.h"
#include "keypad.h"
#include "common.h"
#include "main.h"

/* ȫ �� �� ��*/
unsigned char State=0;	//״̬����,0Ϊ������1���Ρ�2���ڡ�3����
long int KeyCache=0;		//�������뻺��
struct signal{
	unsigned char w;		//���Σ�1���ҡ�2������3���ǣ�
	long int c;	//����
	unsigned char a;		//���
}Signal={1,1000,5};
code unsigned char WaveDB[3][64]={
	{128,141,153,165,177,189,200,210,219,228,235,241,247,251,254,255,255,255,253,250,245,240,233,225,217,207,197,186,174,162,150,137,125,112,100,87,76,64,54,44,35,26,19,13,8,4,2,0,0,1,4,7,12,18,25,33,42,52,62,73,85,97,109,122}, 
	{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff},
	{0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,248,240,232,224,216,208,200,192,184,176,168,160,152,144,136,128,120,112,104,96,88,80,72,64,56,48,40,32,24,16,8,0}
}; 
	
unsigned char Counter=0x00,Tl1=0xff,Th1=0xff;//Th=0xff:1KHz��f8:30Hz;

/*����ʵ��*/
void sys_init(void)
{
/*
	ϵͳ��ʼ������
*/

	//��Һ����ˢ����ʾ
	lcd_init();
	refresh();

	//��ʱ����ʼ�����ⲿ�ж��޹ء���ʱ��T1����ʽ1��16λ�ֶ�װ�룩
	TH1=0xff;
	TL1=0xff;
	TMOD=0x10;
	
	//���жϣ�T1�жϿ������жϿ�
	EA=1;
	ET1=1;
	TR1=1;

}
void flush(void)
{
    switch(State){
		case 1://����
			Signal.w=--KeyCache;
			break;
		case 2://����
			Signal.c=KeyCache;
			//��ʱ����ֵ=0xffff-����>>6+0x2a
			KeyCache>>=6;
			KeyCache=0xffff-KeyCache;
			KeyCache+=0x2a;
			//���¶�ʱ����ֵ
			Tl1=KeyCache;
			Th1=(KeyCache)>>8;
			break;
		case 3://����
			Signal.a=KeyCache;
			//�������ֵ=(����ֵ/4)*256
			DB_BUS=Signal.a*51;
			A_CS=0;
			;;;
			A_CS=1;
			break;
    }
}

void refresh(void)
{
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
