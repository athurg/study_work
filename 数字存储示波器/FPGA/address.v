/*
	地址生成器模块
输入：
	clock:标准时钟
	sample_type:采样类型，取1为连续采样，取0为单次采样
输出：
	ram_addr:读写操作的RAM地址
说明：
	当单次采样时，RAM地址从0递增到199（即取一帧200个点）；
	当连续采样时，RAM地址从0递增到399（即取两帧400个点）；
*/
module address(
		input clock,sample_type,
		output reg [8:0] ram_addr
	);

	reg [8:0] max_addr;
	always @(sample_type) begin
		if(sample_type)	max_addr=9'd399;
		else	max_addr = 9'd199;
	end
	
	always @(posedge clock) begin
		if(ram_addr >= max_addr)	ram_addr=8'd0;
		else	ram_addr = ram_addr + 8'd1;
	end
endmodule
