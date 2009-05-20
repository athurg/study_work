/*
	地址生成器模块
输入：
	clock:标准时钟
	min:地址起始值
	max:地址终止值
输出：
	q:当前地址
	sign:计数满标志
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
