/*---------------------------------
		���ļ�

	���� : Athurg

	�޶���
		08/04������Make�������
		08/11��������������
-----------------------------------*/

#include "8051.h"
#include "lcd.h"
#include "keypad.h"
#include "common.h"



/*----------------------------  ȫ �� �� ��  --------------------------��-*/
char state=0;	//״̬����,0Ϊ����,W����,FƵ��,A����
char stand_str[38]="     Wave;F=     KHz;A=   Vol   ";
char stand_pos=0;	//���ƴ���ʱ��Ļ������ʾ��λ�ã�

long int keycache=0;		//�������뻺��
struct signal{
	char w;		//����
	long int f;	//Ƶ��
	char a;		//���
}sign={1,1000,5};

/*----------------------------  �� �� �� ��  ----------------------------*/
void interrupt_init(void);	//�жϳ�ʼ��
void keypad_interrupt(void);	//�����жϴ�����

void flush(void);	//���ݴ�����
void refresh(void);	//���ݴ�����

void insert_str(char *str_p,char x, char y);
void insert_num(long int num,char x, char y);

/*����ʵ��*/

void keypad_interrupt(void) interrupt 0
{
/*************************
*
*         �����жϴ������
*
*     ������INT0��Ч
*     ���ã�delay�����̴�����
*************************/
    int key;
    key=key_make(key_scan());
    
    if(key>10){	//������
		key-=20;
		if(key==4)		flush();	//���ܴ���
		else			state=key;
		keycache=0;	//������뻺��
    }else if(state){	//������״̬�����ְ�������
		if(state==1)	keycache=key;//����ѡ��ֻ�ռ�һ�ΰ���
		else		keycache=keycache>999999999 ? 0 : (key+keycache*10);	//Ƶ�ʷ�����Ҫ����
    }
    refresh();
	delay(1);
}

void flush(void)
{
    switch(state){
		case 1:
			sign.w=keycache;
			break;
		case 2:
			sign.f=keycache;
			break;
		case 3:
			sign.a=keycache;
			break;
    }
    //TODO:
    //�˴�Ҫ�����������ߵĴ��룻

	state=0;		//������ɻָ�����״̬
}

void refresh(void)
{
	lcd_printsxy("                ",0,0);
	lcd_printsxy("                ",0,1);
	switch(state){
		case 0:
			switch(sign.w){
				case 2:lcd_printsxy("Rect    A=   Vol",0,0);	break;
				case 3:lcd_printsxy("Tria    A=   Vol",0,0);	break;
				default:lcd_printsxy("sine    A=   Vol",0,0);	break;
			}

			lcd_printsxy("F=       KHz",0,1);
			lcd_printnxy(sign.a,12,0);lcd_printnxy(sign.f,8,1);
			break;
		case 1:
			lcd_printsxy("Wave Select",0,0);
			switch(keycache){
				case 1: lcd_printsxy("Sine Wave",0,1);break;
				case 2: lcd_printsxy("Deco Wave",0,1);break;
				case 3: lcd_printsxy("Tria Wave",0,1);break;
				default: lcd_printsxy("1.Sin 2.Dec 3.Tri",0,1);break;
			}
			break;
		case 2:
			lcd_printsxy("Frequence Set",0,0);
			lcd_printsxy("KHz",13,1);
			lcd_printnxy(keycache,12,1);
			break;
		case 3:
			lcd_printsxy("Ample Setting",0,0);
			lcd_printsxy("Vol",13,1);
			lcd_printnxy(keycache,12,1);
			break;
	}
	stand_pos=0;
}


/****************************
	    �жϳ�ʼ��
    ˵����
	��ƽ��ʽ�ⲿ�жϡ������ж���Ӧ��CPU�޷��Զ������ж����󣬱������ж���Ӧ�������ֶ�������
	������ʽCPU���Զ�����
*****************************/
void interrupt_init(void)
{
    //�жϿ��أ����ⲿ�ж�0���������ж�
    EX0=1;    EX1=0;	//�ⲿ�ж�
    ET0=0;    ET1=0;	//��ʱ���ж�
    ES =0;		//�����ж�
    
    //���ȼ�����,�ⲿ�ж�����
    PX0=1;	//�ⲿ
    PT0=0;	//��ʱ��
    
    //�ⲿ�жϴ�����ʽ
    IT1=0;	//�͵�ƽ��������Ϊ1Ϊ�½��ش���
    
    EA=1;	//���ж��ܿ���
}


void main(void)
{
	//��ʼ��
    lcd_init();	//LCD��ʼ��
    interrupt_init();	//�ⲿ�ж�0��ʼ��
    P1=0xf0;	//���̳�ʼ��
	lcd_printsxy("Hello,Athurg",0,0);
	delay(1);
	lcd_printsxy("Hello,Athurg",0,1);
	while(1);
	//refresh();
	//while(1)	refresh();
	/*
	while(1){
		if(state){
			lcd_printsxy(lcd_str[0],0,0);
			lcd_printsxy(lcd_str[1],0,1);
		}else{
			lcd_printsxy("WELCOME TO USE",0,0);
			
			for(i=0; i<16; i++){
				switch(sign.w){
					case 1: stand=stand_sine;break;
					case 2: stand=stand_rect;break;
					case 3: stand=stand_tria;break;
				}
				lcd_printsxy(stand,0-i,1);
				lcd_printnxy(sign.f,16-i,1);	lcd_printnxy(sign.a,25-i,1);
				delay(1);
			}
		}
	
	}
	*/
}
