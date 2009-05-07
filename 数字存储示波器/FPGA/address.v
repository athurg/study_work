/*
	地址生成器模块
输入：
	clock:标准时钟
	sample_type:采样类型，取1为连续采样，取0为单次采样
	move:显示起始地址移动信号
输出：
	ram_addr:读写操作的RAM地址
说明：
	当单次采样时，RAM地址从0递增到199（即取一帧200个点）；
	当连续采样时，RAM地址从0递增到399（即取两帧400个点）；
*/
module address(
		input clock, sample_type, key_right, key_left,
		output reg [8:0] rd_addr, wr_addr
	);

	reg [7:0] start_addr;
	reg [8:0] end_addr, wr_depth;

	
	/*
		RAM读写地址产生进程
	写地址比读地址大1，先写后读相差一个时钟周期；
	实现方式：在进程增加写地址前，先将写地址赋给读地址
		屏幕显示波形左右移动键处理进程
	说明：
		左（右）移分别对应显示起始地址减（增）
	*/
	always @(posedge clock) begin
		//根据采样类型，确定采样RAM的深度
		wr_depth = sample_type ? 9'd399 : 9'd199;
		wr_addr = (wr_addr < wr_depth) ? (wr_addr + 9'd1) : 9'd0;

		if({key_right,key_left}) begin	//处理移动键
			if(key_left)	start_addr = (start_addr > 8'd0) ? (start_addr -1) : 8'd0;
			else	start_addr = (start_addr < 8'd200) ? (start_addr +1) : 8'd200;
			end_addr = start_addr + 8'd200;
		end
		rd_addr =(rd_addr < end_addr)? (rd_addr + 1) : start_addr;
	end
endmodule
