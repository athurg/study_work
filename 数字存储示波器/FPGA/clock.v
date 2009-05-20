/*
	时钟模块
输入：
	in_clk:20MHz标准时钟
	divisor:分频系数，2位，取值0~3分别对应采样频率1MHz、100KHz、、10KHz、100Hz；
输出：
	sample_clk:输出采样时钟
	resume_clk:输出恢复时钟
说明：
	本模块根据输入的20MHz时钟，采用计数器分频产生1MHz、100KHz、10KHz、1KHz、100Hz的基准时钟；
	以分频系数divisor为参数从基准时钟中选择输出采样时钟；
	输出时直接将1KHz时钟绑定为恢复时钟；
*/
module clock(
		input in_clk,
		input [1:0] divisor,
		output sample_clk, resume_clk
	);

	//分频时钟寄存器
	reg clock_1m, clock_100k, clock_10k, clock_1k, clock_100, sample_clk_reg;
	//分频用的计数器
	reg[3:0] counter_1m;
	reg[2:0] counter_100k ,counter_10k, counter_1k ,counter_100;

	assign resume_clk = clock_1m;	//恢复时钟为10K
	assign sample_clk = sample_clk_reg;	//是否采样

	always @(divisor, clock_1m, clock_100k, clock_10k, clock_100) begin	//选择采样时钟
		case(divisor)
			2'd0:	sample_clk_reg = clock_1m;
			2'd1:	sample_clk_reg = clock_100k;
			2'd2:	sample_clk_reg = clock_10k;
			2'd3:	sample_clk_reg = clock_100;
		endcase
	end

	always @(posedge in_clk) begin	//产生1MHz时钟
		if(counter_1m >= 4'd9) begin
			clock_1m = ~clock_1m;
			counter_1m = 4'd0;
		end else
			counter_1m = counter_1m + 4'd1;
	end

	always @(posedge clock_1m) begin	//产生100KHz时钟
		if(counter_100k >= 3'd4) begin
			clock_100k = ~clock_100k;
			counter_100k = 3'd0;
		end else
			counter_100k = counter_100k + 3'd1;
	end

	always @(posedge clock_100k) begin	//产生10KHz时钟
		if(counter_10k >= 3'd4) begin
			clock_10k = ~clock_10k;
			counter_10k = 3'd0;
		end else
			counter_10k = counter_10k + 3'd1;		
	end

	always @(posedge clock_10k) begin	//产生1KHz时钟
		if(counter_1k >= 3'd4) begin
			clock_1k = ~clock_1k;
			counter_1k = 3'd0;
		end else
			counter_1k = counter_1k + 3'd1;	
	end
	

	always @(posedge clock_1k) begin	//产生100Hz时钟
		if(counter_100 >= 3'd4) begin
			clock_100 = ~clock_100;
			counter_100 = 3'd0;
		end else
			counter_100 = counter_100 + 3'd1;	
	end

endmodule
