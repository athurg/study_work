module dds(
		input clk,
		output [7:0] q
	);
	reg [7:0] phase;

	rom wave_rom(
		.address(phase),
		.clock(clk),
		.q(q)
	);

	always @(posedge clk) begin
		//相位累加，取样点数200；
		if(phase>=8'd199)	phase = 8'd0;
		else			phase = phase+8'd1;
	end
endmodule
