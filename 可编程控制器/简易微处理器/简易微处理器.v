/**
	简易微处理器
作者：Athurg Gooth<athurg@gooth.cn>
日期：2009-04-07
版本：v 0.0.1
说明：
	1、简易微处理器，能实现两个八位操作数的加减、操作数的自增减四种操作。
	2、输入端口18位，高两位为操作数，次八位和末八位分别为原操作数和被操作数；
	3、操作数取0~3分别对应自增、自减、相加、相减；
**/

module mpc(input[17:0] ins, input clk, output reg [8:0] res);
	wire[8:0] result;
	
	mpc1 my(ins, result);	//采用自己编写的模块
	
	always @(posedge clk)	res=result;

endmodule

/*
	模块一

本人编写
*/
module mpc1(input[17:0] ins, output reg[8:0] result);

	reg[7:0]	tmp;

	always @(*) begin
		tmp=ins[16] ? ins[7:0] : 8'd1;
			
		if(ins[17])	result = ins[15:8] + tmp;
		else		result = ins[15:8] - tmp;
	end

endmodule

/*
	模块二

参考资料：
	《数字系统设计与 Verilog HDL》（第2版），王金明 编著，电子工业出版社；第9章第3节 第234页；

待修复：
	貌似综合出来的RTL级结果和参考资料（图9.12）不一致。
	参考资料上比QuartusII综合的多一个加法器和两个门电路；
*/
module mpc2(input[17:0] ins, output  reg[8:0] result);

	reg func;
	reg[7:0]	op1, op2;

	/*函数*/
	function[16:0] code_add(input[17:0] ins);
		reg add_func;
		reg[7:0] code,op1,op2;

		code=ins[17:16];
		op1=ins[7:0];
		case(code)
			2'b00:begin
				add_func=1;
				op2=ins[15:8];
				end
			2'b01:begin
				add_func=0;
				op2=ins[15:8];
				end
			2'b10:begin
				add_func=1;
				op2=8'd1;
				end
			default:begin
				add_func=0;
				op2=8'd1;
				end
		endcase
		code_add={add_func,op2,op1};
	endfunction

	/*功能块开始*/
	always @(*) begin
		{func,op2,op1}=code_add(ins);
		if(func==1)	result=op1+op2;
		else			result=op1-op2;		
	end

endmodule
