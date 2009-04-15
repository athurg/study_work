/**
	阻塞和非阻塞方式赋值比较
**/


/*
	同一进程块内阻塞（顺序）赋值
*/
module main(input clk,input[7:0] in,
			output[7:0] out1_a, out1_b, out2_a, out2_b, out3_a, out3_b);

	blocking blocking(clk, in, out1_a, out1_b);	//阻塞
	non_blocking non_blocking(clk, in, out2_a, out2_b);	//非阻塞
	parallel parallel(clk, in, out3_a, out3_b);	//并行
endmodule


/*
	同一进程块内阻塞（顺序）赋值
*/
module blocking(input clk,input[7:0] a,output reg[7:0] b, c);
	always @(posedge clk) begin
		b=a;
		c=b;
	end
endmodule

/*
	同一进程块内非阻塞（并行）赋值
*/
module non_blocking(input clk,input[7:0] a,output reg[7:0] b, c);
	always @(posedge clk) begin
		b<=a;
		c<=b;
	end
endmodule

/*
	不同进程块间并行赋值
*/
module parallel(input clk,input[7:0] a,output reg[7:0] b, c);
	always @(posedge clk)	b=a;
	always @(posedge clk)	c=b;
endmodule

