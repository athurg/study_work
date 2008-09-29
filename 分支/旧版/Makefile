all: main.ihx
	rm all.hex
	packihx main.ihx > all.hex

# 编译器为SDCC
CC=sdcc

main.ihx: main.c keypad.rel lcd.rel common.rel
	$(CC) main.rel keypad.rel lcd.rel common.rel

keypad.rel: keypad.c
	$(CC) -c keypad.c
lcd.rel: lcd.c
	$(CC) -c lcd.c
common.rel: common.c
	$(CC) -c common.c


# -S 编译，不汇编和连接
# -c 编译汇编，不连接
# -E 预处理，不编译