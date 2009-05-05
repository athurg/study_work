/**
	数字存储示波器

Author:	Athurg
Date:		2009/05/05 22:14
Version:	0.0.2

端口映射表：
	端口名			插槽		引脚
	======================================
	sys_clk		FJ5		PIN17
	freq_switch[1:0]	FJ5		PIN73、72
	sample_type		FJ5		PIN74
	adc_db[7:0]		FJ9		PIN9、8、7、4、3、144、143、142
	x_out[7:0]		FJ2		PIN104、103、101、100、99、97、96、94
	Y_out[7:0]		FJ3		PIN121、120、119、118、114、115、112、113
**/


/*
	顶层模块
输入：
	sys_clk	系统输入时钟（FPGA片上的25MHz时钟源）；
	sample_type	采样类型，取1为连续采样，取0为单次采样；
	freq_switch	扫描/采样频率选择，为0~2分别对应1MHz、100KHz、100Hz采样/扫描；
	adc_db	来自模数转换器的数据；
输出：
	x_out		X通道数据
	y_out		Y通道数据
说明：
	当单次采样时，RAM地址从0递增到199（即取一帧200个点）；
	当连续采样时，RAM地址从0递增到399（即取两帧400个点）；
*/
module main(
		input sys_clk, sample_type,
		input [1:0] freq_switch,
		input [7:0] adc_db,
		output [7:0] x_out,y_out
	);

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

	ram frame_ram (
		.data(adc_db), .q(y_out),
		.rdaddress(ram_addr), .wraddress(ram_addr),	//同步地址
		.rdclock(std_clk),	//共享时钟，上升沿读出、下降沿写入
		.wrclock(~std_clk),
		.wren(1'd1)		//常使能，用时钟控制RAM读写
	);

endmodule


