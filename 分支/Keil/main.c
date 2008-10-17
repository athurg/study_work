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
	unsigned int f;	//Ƶ��
	char a;		//���
}sign={1,1000,5};

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
	serial_write(sign.f);
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
	//�ⲿ�ж�0
    EX0=1;	//�ⲿ�ж�0
    
    PX0=1;	//�ⲿ�ж�����
    
    IT0=1;	//�½��س���

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
	P3_3=0;

	SBUF=fuck(datas>>8);
	while(!TI);
	TI=0;delay(2);
	SBUF=fuck(datas);
	while(!TI);
	TI=0;delay(2);
	P3_3=1;	//��MAX531Ƭѡ��һ��������
}
void main(void)
{

	unsigned char  key;
	unsigned int tmp;
	//��ʼ��
    //lcd_init();	//LCD��ʼ��
    interrupt_init();	//�жϳ�ʼ��
    P1=0xf0;	//���̳�ʼ��

	refresh();
	for(tmp=0; tmp<0xffff; tmp++)
	serial_write(tmp);

	while(1){
	    key=key_make(key_scan());

		if(key!='F'){
	
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
	}
	
}
