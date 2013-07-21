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

#define MAX038_A0 P2_0
#define MAX038_A1 P2_1
#define CAP_CS P2_2
#define DA_CS P3_3

/*----------------------------  ȫ �� �� ��  --------------------------��-*/
char state=0;	//״̬����,0Ϊ����,W����,FƵ��,A����
char stand_str[38]="     Wave;F=     KHz;A=   Vol   ";
char stand_pos=0;	//���ƴ���ʱ��Ļ������ʾ��λ�ã�
char freq_type=0;	//�ߵ�Ƶ��ʾ�л�

long int keycache=0;		//�������뻺��
struct signal{
	char w;		//����
	long int f;	//Ƶ��
	char a;		//���
}sign={3,1000,5};

/*----------------------------  �� �� �� ��  ----------------------------*/
void interrupt_init(void);	//�жϳ�ʼ��

void flush(void);	//���ݴ�����
void refresh(void);	//���ݴ�����

void insert_str(char *str_p,char x, char y);
void insert_num(long int num,char x, char y);

void serial_write(unsigned int datas);

/*����ʵ��*/

void flush(void)
{
    switch(state){
		case 1:
			sign.w=keycache;
			P2&=0xfc;
			P2|=sign.w-1;	//���������1��2��3���ζ�Ӧ��Ӧ�Ĳ��Σ�ֱ�Ӵ�P2�������
			break;
		case 2:
			if(freq_type)	sign.f=keycache*1000;
			else			sign.f=keycache;
			//TODO:�˴���ӵ���ѡ��Ĵ���
			//P0=����ѡ�������
			//CAP_CS=1;	CAP_CS=0;
			serial_write(sign.f);
			break;
		case 3:
			sign.a=keycache;
			break;
    }
	state=0;		//������ɻָ�����״̬
}

void refresh(void)
{
	lcd_printsxy("                ",0,0);
	lcd_printsxy("                ",0,1);
	switch(state){
		case 0:
			switch(sign.w){
				case 1:lcd_printsxy("Rect    A=   Vol",0,0);	break;
				case 2:lcd_printsxy("Tria    A=   Vol",0,0);	break;
				case 3:lcd_printsxy("sine    A=   Vol",0,0);	break;
			}
			lcd_printnxy(sign.a,12,0);

			if(sign.f>1000000){
				lcd_printsxy("F=       KHz",0,1);
				lcd_printnxy(sign.f/1000,8,1);
			}else{
				lcd_printsxy("F=        Hz",0,1);
				lcd_printnxy(sign.f,8,1);
			}
			break;
		case 1:
			lcd_printsxy("Wave Select",0,0);
			switch(keycache){
				case 1: lcd_printsxy("Rect Wave",0,1);break;
				case 2: lcd_printsxy("Tria Wave",0,1);break;
				case 3: lcd_printsxy("Sine Wave",0,1);break;
				default: lcd_printsxy("1.Rec 2.Tri 3.Sin",0,1);break;
			}
			break;
		case 2:
			lcd_printsxy("Frequence Set",0,0);
			if(freq_type)	lcd_printsxy("KHz",13,1);
			else			lcd_printsxy(" Hz",13,1);
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
/*
	//�ⲿ�ж�0
    EX0=1;	//�ⲿ�ж�0
    
    PX0=1;	//�ⲿ�ж�����
    
    IT0=1;	//�½��س���
*/
	//����
	SCON=0x00;	//��ʽ0
    ES =1;		//�����ж�
    //�ܿ���
    EA=1;
}

unsigned char fuck(unsigned char indata)
{
	unsigned char i,outdata=0;

	for(i=0; i<8; i++){
		outdata<<=1;
		outdata+=indata%2;
		indata>>=1;
	}
	return outdata;
}

void serial_write(unsigned int datas)
{
	DA_CS=0;

	SBUF=fuck(datas>>8);
	while(!TI);
	TI=0;
	SBUF=fuck(datas);
	while(!TI);
	TI=0;
	DA_CS=1;	//��MAX531Ƭѡ��һ��������
}

void main(void)
{

	unsigned char key;
	unsigned int tmp;
	//��ʼ��
    lcd_init();
    interrupt_init();
    P1=0xf0;

	refresh();

	while(1){
	    key=key_make(key_scan());

		if(key!='F'){
	
		    if(key>10){	//������
				key-=20;
				if(key==5)		freq_type=!freq_type;
				else if(key==4)		flush();	//���ܴ���
				else			state=key;
				keycache=0;	//������뻺��
		    }else if(state){	//������״̬�����ְ�������
				if(state==1)	keycache=key;//����ѡ��ֻ�ռ�һ�ΰ���
				else		keycache=keycache>99999999 ? 0 : (key+keycache*10);	//Ƶ�ʷ�����Ҫ����
			}
		    refresh();
			delay(1);
		}
	}
	
}
