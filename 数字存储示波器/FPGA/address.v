/*
	��ַ������ģ��
���룺
	clock:��׼ʱ��
	min:��ַ��ʼֵ
	max:��ַ��ֵֹ
�����
	q:��ǰ��ַ
	sign:��������־
*/
module address(
		input clock,
		input reset,
		input [8:0] depth,
		output reg [8:0] q,
		output reg full
	);

	always @(posedge clock) begin
		if(reset)	q = 9'd0;
		else if(q >= depth) begin
			q = 9'd0;
			full = 1'b1;
		end else begin
			q = q + 9'd1;
			full = 1'b0;
		end
	end
endmodule
