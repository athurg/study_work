/*
	��ַ������ģ��
���룺
	clock:��׼ʱ��
	sample_type:�������ͣ�ȡ1Ϊ����������ȡ0Ϊ���β���
	move:��ʾ��ʼ��ַ�ƶ��ź�
�����
	ram_addr:��д������RAM��ַ
˵����
	�����β���ʱ��RAM��ַ��0������199����ȡһ֡200���㣩��
	����������ʱ��RAM��ַ��0������399����ȡ��֡400���㣩��
*/
module address(
		input clock, sample_type, key_right, key_left,
		output reg [8:0] rd_addr, wr_addr
	);

	reg [7:0] start_addr;
	reg [8:0] end_addr, wr_depth;

	
	/*
		RAM��д��ַ��������
	д��ַ�ȶ���ַ��1����д������һ��ʱ�����ڣ�
	ʵ�ַ�ʽ���ڽ�������д��ַǰ���Ƚ�д��ַ��������ַ
		��Ļ��ʾ���������ƶ����������
	˵����
		���ң��Ʒֱ��Ӧ��ʾ��ʼ��ַ��������
	*/
	always @(posedge clock) begin
		//���ݲ������ͣ�ȷ������RAM�����
		wr_depth = sample_type ? 9'd399 : 9'd199;
		wr_addr = (wr_addr < wr_depth) ? (wr_addr + 9'd1) : 9'd0;

		if({key_right,key_left}) begin	//�����ƶ���
			if(key_left)	start_addr = (start_addr > 8'd0) ? (start_addr -1) : 8'd0;
			else	start_addr = (start_addr < 8'd200) ? (start_addr +1) : 8'd200;
			end_addr = start_addr + 8'd200;
		end
		rd_addr =(rd_addr < end_addr)? (rd_addr + 1) : start_addr;
	end
endmodule
