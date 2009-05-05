/**
	时钟模块
输入：
	std_clk:20MHz标准时钟
	freq_switch:频率选择开关，2位，取值0~2分别对应采样频率1MHz、100KHz、100Hz；
输出：
	clock_out:输出时钟
**/
module clock(
		input in_clk,
		input [1:0] switch,
		output reg out_clk
	);
	
	//三个分频用的计数器
	reg[3:0] counter1;
	reg[2:0] counter2;
	reg[8:0] counter3;

	//时钟组
	reg[2:0] clk_group;
	
	always @(switch or clk_group)	out_clk=clk_group[switch];	//更新输出时钟

	always @(posedge in_clk) begin	//生成1MHz时钟
		if(counter1>=4'd9) begin
			clk_group[2]=~clk_group[2];
			counter1=4'd0;
		end else
			counter1=counter1+4'd1;
	end
	
	always @(posedge clk_group[2]) begin	//生成100KHz时钟
		if(counter2>=3'd4) begin
			clk_group[1]=~clk_group[1];
			counter2=3'd0;
		end else
			counter2=counter2+3'd1;
	end
	
	always @(posedge clk_group[1]) begin	//生成100Hz时钟
		if(counter3>9'd499) begin
			clk_group[0]=~clk_group[0];
			counter3=8'd0;
		end else
			counter3=counter3+8'd1;
	end
endmodule
