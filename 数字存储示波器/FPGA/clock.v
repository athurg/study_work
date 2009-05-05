/**
	ʱ��ģ��
���룺
	std_clk:20MHz��׼ʱ��
	freq_switch:Ƶ��ѡ�񿪹أ�2λ��ȡֵ0~2�ֱ��Ӧ����Ƶ��1MHz��100KHz��100Hz��
�����
	clock_out:���ʱ��
**/
module clock(
		input in_clk,
		input [1:0] switch,
		output reg out_clk
	);
	
	//������Ƶ�õļ�����
	reg[3:0] counter1;
	reg[2:0] counter2;
	reg[8:0] counter3;

	//ʱ����
	reg[2:0] clk_group;
	
	always @(switch or clk_group)	out_clk=clk_group[switch];	//�������ʱ��

	always @(posedge in_clk) begin	//����1MHzʱ��
		if(counter1>=4'd9) begin
			clk_group[2]=~clk_group[2];
			counter1=4'd0;
		end else
			counter1=counter1+4'd1;
	end
	
	always @(posedge clk_group[2]) begin	//����100KHzʱ��
		if(counter2>=3'd4) begin
			clk_group[1]=~clk_group[1];
			counter2=3'd0;
		end else
			counter2=counter2+3'd1;
	end
	
	always @(posedge clk_group[1]) begin	//����100Hzʱ��
		if(counter3>9'd499) begin
			clk_group[0]=~clk_group[0];
			counter3=8'd0;
		end else
			counter3=counter3+8'd1;
	end
endmodule
