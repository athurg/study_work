/*
	ʱ��ģ��
���룺
	in_clk:20MHz��׼ʱ��
	divisor:��Ƶϵ����2λ��ȡֵ0~3�ֱ��Ӧ����Ƶ��1MHz��100KHz����10KHz��100Hz��
�����
	sample_clk:�������ʱ��
	resume_clk:����ָ�ʱ��
˵����
	��ģ����������20MHzʱ�ӣ����ü�������Ƶ����1MHz��100KHz��10KHz��1KHz��100Hz�Ļ�׼ʱ�ӣ�
	�Է�Ƶϵ��divisorΪ�����ӻ�׼ʱ����ѡ���������ʱ�ӣ�
	���ʱֱ�ӽ�1KHzʱ�Ӱ�Ϊ�ָ�ʱ�ӣ�
*/
module clock(
		input in_clk,
		input [1:0] divisor,
		output sample_clk, resume_clk
	);

	//��Ƶʱ�ӼĴ���
	reg clock_1m, clock_100k, clock_10k, clock_1k, clock_100, sample_clk_reg;
	//��Ƶ�õļ�����
	reg[3:0] counter_1m;
	reg[2:0] counter_100k ,counter_10k, counter_1k ,counter_100;

	assign resume_clk = clock_1m;	//�ָ�ʱ��Ϊ10K
	assign sample_clk = sample_clk_reg;	//�Ƿ����

	always @(divisor, clock_1m, clock_100k, clock_10k, clock_100) begin	//ѡ�����ʱ��
		case(divisor)
			2'd0:	sample_clk_reg = clock_1m;
			2'd1:	sample_clk_reg = clock_100k;
			2'd2:	sample_clk_reg = clock_10k;
			2'd3:	sample_clk_reg = clock_100;
		endcase
	end

	always @(posedge in_clk) begin	//����1MHzʱ��
		if(counter_1m >= 4'd9) begin
			clock_1m = ~clock_1m;
			counter_1m = 4'd0;
		end else
			counter_1m = counter_1m + 4'd1;
	end

	always @(posedge clock_1m) begin	//����100KHzʱ��
		if(counter_100k >= 3'd4) begin
			clock_100k = ~clock_100k;
			counter_100k = 3'd0;
		end else
			counter_100k = counter_100k + 3'd1;
	end

	always @(posedge clock_100k) begin	//����10KHzʱ��
		if(counter_10k >= 3'd4) begin
			clock_10k = ~clock_10k;
			counter_10k = 3'd0;
		end else
			counter_10k = counter_10k + 3'd1;		
	end

	always @(posedge clock_10k) begin	//����1KHzʱ��
		if(counter_1k >= 3'd4) begin
			clock_1k = ~clock_1k;
			counter_1k = 3'd0;
		end else
			counter_1k = counter_1k + 3'd1;	
	end
	

	always @(posedge clock_1k) begin	//����100Hzʱ��
		if(counter_100 >= 3'd4) begin
			clock_100 = ~clock_100;
			counter_100 = 3'd0;
		end else
			counter_100 = counter_100 + 3'd1;	
	end

endmodule
