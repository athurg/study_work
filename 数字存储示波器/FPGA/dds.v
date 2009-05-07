module dds(
		input clock,
		output [7:0] q
	);
	reg [7:0] phase;

	rom wave_rom(
		.address(phase),
		.clock(clock),
		.q(q)
	);

	always @(posedge clock) begin
		//相位累加，取样点数200；
		phase = (phase < 8'd199) ? (phase + 8'd1) : 8'd0;
	end
endmodule
