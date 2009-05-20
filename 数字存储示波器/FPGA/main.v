//! 	���ִ洢ʾ����
//!
//! Author:	Athurg
//! Date:		2009/05/06 11:01
//! Version:	0.0.3
//! Dscrip:
//! 	1���˿�ӳ���
//! 		�˿���			���		����
//! 		======================================
//! 		sys_clk		FJ5		PIN17
//! 		freq_switch[1:0]	FJ5		PIN73��72
//! 		sample_type		FJ5		PIN74
//! 		adc_db[7:0]		FJ9		PIN9��8��7��4��3��144��143��142
//! 		x_out[7:0]		FJ2		PIN104��103��101��100��99��97��96��94
//! 		y_out_a[7:0]		FJ3		PIN121��120��119��118��114��115��112��113
//! 		y_out_b[7:0]		TODO		TODU
//! TODO:
//! 	1��bͨ����������˿ڷ��䣻
//! 	2��DAC�����źŷ��䣻
//! ChangeLog:
//! 	v0.0.1	2009/05/05 20:24	Xͨ��ɨ���źš�ϵͳ��ܣ�
//! 	v0.0.2	2009/05/05 22:14	��ͨ��������ɣ�
//! 	v0.0.3	2009/05/06 11:01	˫ͨ��������ɣ�
//! 	v0.0.4	2009/05/07 23:03	����˫ͨ����ʱ�����������Ļ�ƶ����ܣ�������ַ������
//!	

/*
	����ģ��
���룺
	sys_clk	ϵͳ����ʱ�ӣ�FPGAƬ�ϵ�25MHzʱ��Դ����
	sample_type	�������ͣ�ȡ1Ϊ����������ȡ0Ϊ���β�����
	freq_switch	ɨ��/����Ƶ��ѡ��Ϊ0~2�ֱ��Ӧ1MHz��100KHz��100Hz����/ɨ�裻
	key_right	�������ƶ��ź�
	key_left	�������ƶ��ź�
	adc_db_a	����ģ��ת����aͨ�������ݣ�
	adc_db_b	����ģ��ת����bͨ�������ݣ�
�����
	x_out		Xͨ������
	y_out_a	aͨ������
	y_out_b	bͨ������
˵����
	�����β���ʱ��RAM��ַ��0������199����ȡһ֡200���㣩��
	����������ʱ��RAM��ַ��0������399����ȡ��֡400���㣩��
*/
module main(
		/*ϵͳʱ��*/
		input sys_clk,
		input reset,
		
		/*������ģ��ӿ�*/
		input sample_init,

		/*������ģ��ӿ�*/
		input  successive, expand, d_channel,	//��������չ��˫ͨ����־
		input [1:0] divisor,	//����Ƶ��ϵ��
		input [7:0] offset,	//��ʾ��㣨ƫ������
		output sample_ok,	//�������ж��ź�

		/*ģ������ģת��ģ��ӿ�*/
		input [7:0] adc_a, adc_b,	//����ģ��ת��ͨ��������
		output [7:0] dac_a, dac_b,dac_x	//����ģ��ת��ͨ���������Xͨ��ɨ�����
	);
		/*ϵͳ״̬����*/
		parameter sleep_state=2'b00, sample_state=2'b01, resume_state=2'b11;
		reg [1:0] state, next_state;		//ϵͳ״̬��״̬��־��
		
		wire [8:0] sample_depth;	
		reg rd_ena, wr_ena;	//��дRAMʹ���ź�
		wire resume_ok;	//��ʾ���ź�
		wire sample_clk, resume_clk, rd_clk, wr_clk;	//ϵͳ����ʱ�ӡ��ָ�ʱ��
		wire [8:0] rd_address, wr_address;	//֡����RAM��д��ַ
		wire [7:0] y_out_a, y_out_b;	//����ͨ��RAM���������ݼĴ���

	/*Y��A��Bͨ����X��DAC����˿ڰ�*/
	assign dac_a = y_out_a & {8{(~rd_clk) & rd_ena}};
	assign dac_b = y_out_b & {8{rd_clk & rd_ena & d_channel}};	//Bͨ���ܵ�/˫�ٿ���
	assign dac_x = rd_address[7:0];

	/* ��дʱ�ӣ��ɷ�Ƶ����Ƶ����ʱ�ӺͶ�д����������õ� */
	assign wr_clk = sample_clk & wr_ena;
	assign rd_clk = resume_clk & rd_ena;


	/* ������չ��־�л�������� */
	assign sample_depth = expand ? 9'd399 : 9'd199;

	/* ״̬�л����� */
	always @(posedge sample_ok, posedge resume_ok, posedge sample_init) begin
		case(state)
			sample_state:
				if(sample_ok)	next_state = resume_state;
				else	next_state = sample_state;
			resume_state:
				if(successive && resume_ok)	next_state = sleep_state;
				else	next_state = resume_state;
			default:
				if(sample_init)	next_state = sample_state;
				else	next_state = sleep_state;
		endcase
	end
	always @(posedge sys_clk, posedge reset) begin
		if(reset)	state = sleep_state;
		else	state = next_state;
	end

	/* ״̬������� */
	always @(state) begin
		case(state)
			sample_state:begin
				wr_ena <= 1'b1;
				rd_ena <= 1'b0;
			end
			resume_state:begin
				wr_ena <= 1'b0;
				rd_ena <= 1'b1;
			end
			default:begin
				wr_ena <= 1'b0;
				rd_ena <= 1'b0;
			end
		endcase
	end

	/* ��Ƶ��ȡ�����ͻָ�ʱ�� */
	clock clock_division(
		.in_clk(sys_clk),
		.divisor(divisor),
		.sample_clk(sample_clk),
		.resume_clk(resume_clk)
	);

	/* RAMд��ַ������ */
	address wr_addr_counter(
		.clock(wr_clk),
		.reset(reset),
		.depth(sample_depth),	//��ַ��Χ9'd0~9'd399
		.q(wr_address),
		.full(sample_ok)
	);

	/* RAM����ַ������ */
	address rd_addr_counter(
		.clock(rd_clk),
		.reset(reset),
		.depth(9'd199),	//��ַ��Χ9'd0~9'd399
		.q(rd_address),
		.full(resume_ok)
	);

	/* Aͨ��֡���ݴ洢�� */
	ram ram_a(
		.wrclock(sys_clk), .rdclock(sys_clk),	//����ͨ������ʱ�ӣ��½���Aͨ����Ч
		.data(adc_a), .q(y_out_a),
		.wraddress(wr_address), .rdaddress(offset + rd_address),
		.wren(1'b1)
	);
	/* Bͨ��֡���ݴ洢�� */
	ram ram_b(
		.wrclock(sys_clk), .rdclock(sys_clk),	//����ͨ������ʱ�ӣ��½���Bͨ����Ч
		.data(adc_b), .q(y_out_b),
		.wraddress(wr_address), .rdaddress(offset + rd_address),
		.wren(1'b1)
	);

endmodule
