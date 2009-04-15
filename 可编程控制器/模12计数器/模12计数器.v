/*
	模12加法计数器
*/
module main(input[3:0] data,input clk, load, reset,
				output reg[3:0] out);

	always @(posedge clk) begin
		if(reset || (out > 10))	//清零或计数满
			out = 0;
		else if(load)		//置数
			out = data;
		else	//计数
			out = out + 1;
	end
endmodule
