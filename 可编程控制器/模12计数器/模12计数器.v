/*
	ģ12�ӷ�������
*/
module main(input[3:0] data,input clk, load, reset,
				output reg[3:0] out);

	always @(posedge clk) begin
		if(reset || (out > 10))	//����������
			out = 0;
		else if(load)		//����
			out = data;
		else	//����
			out = out + 1;
	end
endmodule
