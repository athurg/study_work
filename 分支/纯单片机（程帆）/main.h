#ifndef MAIN_H
#define MAIN_H 

#define DB_BUS P0		//����
#define A_CS P3_4		//���ȵ���ʱ��

//��������
void flush(void);	//���ݴ�����
void refresh(void);	//���ݴ�����
void sys_init(void);	//ϵͳ��ʼ��
void timer_service(void) interrupt 3;	//ϵͳ��ʼ��
#endif
