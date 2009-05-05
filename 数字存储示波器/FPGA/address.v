/*
	��ַ������ģ��
���룺
	clock:��׼ʱ��
	sample_type:�������ͣ�ȡ1Ϊ����������ȡ0Ϊ���β���
�����
	ram_addr:��д������RAM��ַ
˵����
	�����β���ʱ��RAM��ַ��0������199����ȡһ֡200���㣩��
	����������ʱ��RAM��ַ��0������399����ȡ��֡400���㣩��
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
