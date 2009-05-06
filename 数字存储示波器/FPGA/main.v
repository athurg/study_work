/**
	数字存储示波器

Author:	Athurg
Date:		2009/05/06 11:01
Version:	0.0.3
Dscrip:
	1、端口映射表：
		端口名			插槽		引脚
		======================================
		sys_clk		FJ5		PIN17
		freq_switch[1:0]	FJ5		PIN73、72
		sample_type		FJ5		PIN74
		adc_db[7:0]		FJ9		PIN9、8、7、4、3、144、143、142
		x_out[7:0]		FJ2		PIN104、103、101、100、99、97、96、94
		y_out_a[7:0]		FJ3		PIN121、120、119、118、114、115、112、113
		y_out_b[7:0]		TODO		TODU

TODO:
	1、b通道输入输出端口分配；
	2、DAC启动信号分配；

ChangeLog:
	v0.0.1	2009/05/05/20:24	X通道扫描信号、系统框架；
	v0.0.2	2009/05/05/22:14	单通道整体完成；
	v0.0.3	2009/05/06/11:01	双通道整体完成；
	
**/


/*
	顶层模块
输入：
	sys_clk	系统输入时钟（FPGA片上的25MHz时钟源）；
	sample_type	采样类型，取1为连续采样，取0为单次采样；
	freq_switch	扫描/采样频率选择，为0~2分别对应1MHz、100KHz、100Hz采样/扫描；
	adc_db_a	来自模数转换器a通道的数据；
	adc_db_b	来自模数转换器b通道的数据；
输出：
	x_out		X通道数据
	y_out_a	a通道数据
	y_out_b	b通道数据
说明：
	当单次采样时，RAM地址从0递增到199（即取一帧200个点）；
	当连续采样时，RAM地址从0递增到399（即取两帧400个点）；
*/
module main(
		input sys_clk, sample_type,
		input [1:0] freq_switch,
		input [7:0] adc_db_a,adc_db_b,
		output test_clock,
		output [7:0] x_out,y_out_a,y_out_b
	);

	assign test_clock=std_clk;
	wire std_clk;	//本示波器系统标准时钟
	wire [8:0] ram_addr;	//帧数据暂存RAM
	
	//分频得到系统标准时钟
	clock clock_std(
		.in_clk(sys_clk),
		.switch(freq_switch),
		.out_clk(std_clk)
	);

	//水平扫描波形
	dds x_scan(.clk(std_clk),.q(x_out));

	//RAM地址生成模块
	address ram_addr_gen(
		.clock(std_clk),
		.sample_type(sample_type),
		.ram_addr(ram_addr)
	);

	ram frame_ram_a (
		.data(adc_db_a), .q(y_out_a),
		.rdaddress(ram_addr), .wraddress(ram_addr),	//同步地址
		.rdclock(std_clk),	//共享时钟，上升沿读出、下降沿写入
		.wrclock(~std_clk),
		.wren(1'd1)		//常使能，用时钟控制RAM读写
	);

	ram frame_ram_b (
		.data(adc_db_b), .q(y_out_b),
		.rdaddress(ram_addr), .wraddress(ram_addr),	//同步地址
		.rdclock(~std_clk),	//共享时钟，上升沿写入、下降沿读出，与a通道相反，实现间隔出点
		.wrclock(std_clk),
		.wren(1'd1)		//常使能，用时钟控制RAM读写
	);

endmodule


