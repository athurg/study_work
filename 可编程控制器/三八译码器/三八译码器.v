/*
	����������

Author:	Athurg Gooth <athurg@gooth.cn>
Date:		2009/04/02
Ver:		0.0.1
Descrip:
	ͬ������������
*/
module decoder38(in,out);
	input[2:0] in;
	output[7:0]	out;
	reg[7:0]	out;

always @(in)
begin
	out=0;
	out[in]=1;
end

endmodule
