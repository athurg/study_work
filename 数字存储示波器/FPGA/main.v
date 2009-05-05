/**
	���ִ洢ʾ����

Author:	Athurg
Date:		2009/05/05 22:14
Version:	0.0.2

�˿�ӳ���
	�˿���			���		����
	======================================
	sys_clk		FJ5		PIN17
	freq_switch[1:0]	FJ5		PIN73��72
	sample_type		FJ5		PIN74
	adc_db[7:0]		FJ9		PIN9��8��7��4��3��144��143��142
	x_out[7:0]		FJ2		PIN104��103��101��100��99��97��96��94
	Y_out[7:0]		FJ3		PIN121��120��119��118��114��115��112��113
**/


/*
	����ģ��
���룺
	sys_clk	ϵͳ����ʱ�ӣ�FPGAƬ�ϵ�25MHzʱ��Դ����
	sample_type	�������ͣ�ȡ1Ϊ����������ȡ0Ϊ���β�����
	freq_switch	ɨ��/����Ƶ��ѡ��Ϊ0~2�ֱ��Ӧ1MHz��100KHz��100Hz����/ɨ�裻
	adc_db	����ģ��ת���������ݣ�
�����
	x_out		Xͨ������
	y_out		Yͨ������
˵����
	�����β���ʱ��RAM��ַ��0������199����ȡһ֡200���㣩��
	����������ʱ��RAM��ַ��0������399����ȡ��֡400���㣩��
*/
module main(
		input sys_clk, sample_type,
		input [1:0] freq_switch,
		input [7:0] adc_db,
		output [7:0] x_out,y_out
	);

	wire std_clk;	//��ʾ����ϵͳ��׼ʱ��
	wire [8:0] ram_addr;	//֡�����ݴ�RAM
	
	//��Ƶ�õ�ϵͳ��׼ʱ��
	clock clock_std(
		.in_clk(sys_clk),
		.switch(freq_switch),
		.out_clk(std_clk)
	);

	//ˮƽɨ�貨��
	dds x_scan(.clk(std_clk),.q(x_out));

	//RAM��ַ����ģ��
	address ram_addr_gen(
		.clock(std_clk),
		.sample_type(sample_type),
		.ram_addr(ram_addr)
	);

	ram frame_ram (
		.data(adc_db), .q(y_out),
		.rdaddress(ram_addr), .wraddress(ram_addr),	//ͬ����ַ
		.rdclock(std_clk),	//����ʱ�ӣ������ض������½���д��
		.wrclock(~std_clk),
		.wren(1'd1)		//��ʹ�ܣ���ʱ�ӿ���RAM��д
	);

endmodule


