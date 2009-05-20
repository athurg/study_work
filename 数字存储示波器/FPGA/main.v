//! 	数字存储示波器
//!
//! Author:	Athurg
//! Date:		2009/05/06 11:01
//! Version:	0.0.3
//! Dscrip:
//! 	1、端口映射表：
//! 		端口名			插槽		引脚
//! 		======================================
//! 		sys_clk		FJ5		PIN17
//! 		freq_switch[1:0]	FJ5		PIN73、72
//! 		sample_type		FJ5		PIN74
//! 		adc_db[7:0]		FJ9		PIN9、8、7、4、3、144、143、142
//! 		x_out[7:0]		FJ2		PIN104、103、101、100、99、97、96、94
//! 		y_out_a[7:0]		FJ3		PIN121、120、119、118、114、115、112、113
//! 		y_out_b[7:0]		TODO		TODU
//! TODO:
//! 	1、b通道输入输出端口分配；
//! 	2、DAC启动信号分配；
//! ChangeLog:
//! 	v0.0.1	2009/05/05 20:24	X通道扫描信号、系统框架；
//! 	v0.0.2	2009/05/05 22:14	单通道整体完成；
//! 	v0.0.3	2009/05/06 11:01	双通道整体完成；
//! 	v0.0.4	2009/05/07 23:03	修正双通道分时输出，增加屏幕移动功能，修正地址生成器
//!	

/*
	顶层模块
输入：
	sys_clk	系统输入时钟（FPGA片上的25MHz时钟源）；
	sample_type	采样类型，取1为连续采样，取0为单次采样；
	freq_switch	扫描/采样频率选择，为0~2分别对应1MHz、100KHz、100Hz采样/扫描；
	key_right	画面右移动信号
	key_left	画面左移动信号
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
		/*系统时钟*/
		input sys_clk,
		input reset,
		
		/*触发器模块接口*/
		input sample_init,

		/*控制器模块接口*/
		input  successive, expand, d_channel,	//连续、扩展、双通道标志
		input [1:0] divisor,	//采样频率系数
		input [7:0] offset,	//显示起点（偏移量）
		output sample_ok,	//采样满中断信号

		/*模数、数模转换模块接口*/
		input [7:0] adc_a, adc_b,	//两个模数转换通道的输入
		output [7:0] dac_a, dac_b,dac_x	//两个模数转换通道的输出、X通道扫描输出
	);
		/*系统状态定义*/
		parameter sleep_state=2'b00, sample_state=2'b01, resume_state=2'b11;
		reg [1:0] state, next_state;		//系统状态机状态标志符
		
		wire [8:0] sample_depth;	
		reg rd_ena, wr_ena;	//读写RAM使能信号
		wire resume_ok;	//显示完信号
		wire sample_clk, resume_clk, rd_clk, wr_clk;	//系统采样时钟、恢复时钟
		wire [8:0] rd_address, wr_address;	//帧数据RAM读写地址
		wire [7:0] y_out_a, y_out_b;	//两个通道RAM读出的数据寄存器

	/*Y轴A、B通道和X轴DAC输出端口绑定*/
	assign dac_a = y_out_a & {8{(~rd_clk) & rd_ena}};
	assign dac_b = y_out_b & {8{rd_clk & rd_ena & d_channel}};	//B通道受单/双踪控制
	assign dac_x = rd_address[7:0];

	/* 读写时钟：由分频器分频出的时钟和读写控制与运算得到 */
	assign wr_clk = sample_clk & wr_ena;
	assign rd_clk = resume_clk & rd_ena;


	/* 根据扩展标志切换采样深度 */
	assign sample_depth = expand ? 9'd399 : 9'd199;

	/* 状态切换进程 */
	always @(posedge sample_ok, posedge resume_ok, posedge sample_init) begin
		case(state)
			sample_state:
				if(sample_ok)	next_state = resume_state;
				else	next_state = sample_state;
			resume_state:
				if(successive && resume_ok)	next_state = sleep_state;
				else	next_state = resume_state;
			default:
				if(sample_init)	next_state = sample_state;
				else	next_state = sleep_state;
		endcase
	end
	always @(posedge sys_clk, posedge reset) begin
		if(reset)	state = sleep_state;
		else	state = next_state;
	end

	/* 状态处理进程 */
	always @(state) begin
		case(state)
			sample_state:begin
				wr_ena <= 1'b1;
				rd_ena <= 1'b0;
			end
			resume_state:begin
				wr_ena <= 1'b0;
				rd_ena <= 1'b1;
			end
			default:begin
				wr_ena <= 1'b0;
				rd_ena <= 1'b0;
			end
		endcase
	end

	/* 分频获取采样和恢复时钟 */
	clock clock_division(
		.in_clk(sys_clk),
		.divisor(divisor),
		.sample_clk(sample_clk),
		.resume_clk(resume_clk)
	);

	/* RAM写地址生成器 */
	address wr_addr_counter(
		.clock(wr_clk),
		.reset(reset),
		.depth(sample_depth),	//地址范围9'd0~9'd399
		.q(wr_address),
		.full(sample_ok)
	);

	/* RAM读地址生成器 */
	address rd_addr_counter(
		.clock(rd_clk),
		.reset(reset),
		.depth(9'd199),	//地址范围9'd0~9'd399
		.q(rd_address),
		.full(resume_ok)
	);

	/* A通道帧数据存储器 */
	ram ram_a(
		.wrclock(sys_clk), .rdclock(sys_clk),	//两个通道共享时钟，下降沿A通道有效
		.data(adc_a), .q(y_out_a),
		.wraddress(wr_address), .rdaddress(offset + rd_address),
		.wren(1'b1)
	);
	/* B通道帧数据存储器 */
	ram ram_b(
		.wrclock(sys_clk), .rdclock(sys_clk),	//两个通道共享时钟，下降沿B通道有效
		.data(adc_b), .q(y_out_b),
		.wraddress(wr_address), .rdaddress(offset + rd_address),
		.wren(1'b1)
	);

endmodule
