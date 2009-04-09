/*
	4x4 ����ģ��
	
����:	Athurg Gooth<athurg@gooth.cn>
ʱ��:	2009/03/31
˵��:
	����ʽ���̣�������case���ֱ������ķ�ʽ

*/
module keypad(lines,rows,result);
	input[3:0] lines,rows;
	output[3:0] result;
	reg[3:0] result;
always @(posedge lines,posedge rows)
begin
	case({lines,rows})
		//��һ��
		8'h11:	result=4'd1;
		8'h12:	result=4'd2;
		8'h14:	result=4'd3;
		8'h18:	result=4'd4;
		//�ڶ���
		8'h21:	result=4'd5;
		8'h22:	result=4'd6;
		8'h24:	result=4'd7;
		8'h28:	result=4'd8;
		//������
		8'h41:	result=4'd9;
		8'h42:	result=4'd10;
		8'h44:	result=4'd11;
		8'h48:	result=4'd12;
		//������
		8'h81:	result=4'd13;
		8'h82:	result=4'd14;
		8'h84:	result=4'd15;
		8'h88:	result=4'd16;
		default:result=4'd0;
	endcase
end
endmodule