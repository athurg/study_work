/*
	4x4 键盘模块
	
作者:	Athurg Gooth<athurg@gooth.cn>
时间:	2009/03/31
说明:
	行列式键盘，采用了case语句直接译码的方式

*/
module keypad(lines,rows,result);
	input[3:0] lines,rows;
	output[3:0] result;
	reg[3:0] result;
always @(posedge lines,posedge rows)
begin
	case({lines,rows})
		//第一行
		8'h11:	result=4'd1;
		8'h12:	result=4'd2;
		8'h14:	result=4'd3;
		8'h18:	result=4'd4;
		//第二行
		8'h21:	result=4'd5;
		8'h22:	result=4'd6;
		8'h24:	result=4'd7;
		8'h28:	result=4'd8;
		//第三行
		8'h41:	result=4'd9;
		8'h42:	result=4'd10;
		8'h44:	result=4'd11;
		8'h48:	result=4'd12;
		//第四行
		8'h81:	result=4'd13;
		8'h82:	result=4'd14;
		8'h84:	result=4'd15;
		8'h88:	result=4'd16;
		default:result=4'd0;
	endcase
end
endmodule