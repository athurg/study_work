/**
	�����ͷ�������ʽ��ֵ�Ƚ�
**/


/*
	ͬһ���̿���������˳�򣩸�ֵ
*/
module main(input clk,input[7:0] in,
			output[7:0] out1_a, out1_b, out2_a, out2_b, out3_a, out3_b);

	blocking blocking(clk, in, out1_a, out1_b);	//����
	non_blocking non_blocking(clk, in, out2_a, out2_b);	//������
	parallel parallel(clk, in, out3_a, out3_b);	//����
endmodule


/*
	ͬһ���̿���������˳�򣩸�ֵ
*/
module blocking(input clk,input[7:0] a,output reg[7:0] b, c);
	always @(posedge clk) begin
		b=a;
		c=b;
	end
endmodule

/*
	ͬһ���̿��ڷ����������У���ֵ
*/
module non_blocking(input clk,input[7:0] a,output reg[7:0] b, c);
	always @(posedge clk) begin
		b<=a;
		c<=b;
	end
endmodule

/*
	��ͬ���̿�䲢�и�ֵ
*/
module parallel(input clk,input[7:0] a,output reg[7:0] b, c);
	always @(posedge clk)	b=a;
	always @(posedge clk)	c=b;
endmodule

