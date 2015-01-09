# 项目名，同时也是main()所在源文件、hex文件名
PRJ :=main

# 调用sdcc的命令行
CC := sdcc

#预处理器、编译、连接参数
CPPFLAGS :=
CFLAGS := -mmcs51
LDFLAGS := --iram-size 256 --xram-size 0 --code-size 8192 --stack-size 32

#文件列表
SRCS := $(PRJ).c
SRCS += $(filter-out $(PRJ).c, $(wildcard *.c))
ASMS := $(patsubst %.c, %.asm, $(SRCS) )
OBJS := $(patsubst %.c, %.rel, $(SRCS) )
IHEX := $(addsuffix .ihx, $(PRJ) )
HEX := $(addsuffix .hex, $(PRJ) )
#HEADS := $(filter-out $(PRJ).c, $(wildcard *.c) )
HEADS := $(patsubst %.c, %.h, $(SRCS) )
#-------------------------------------------------------------------------

# 默认编译文件
all: $(HEX)
$(HEX):$(IHEX)
	@printf "打包文件：\n      "
	@-packihx $(IHEX) > $(HEX)
	@printf "[完成]\n\n所有任务完成！\n"
 
$(IHEX):$(OBJS)
	@printf "生成$(IHEX)"
	@$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o $(IHEX)
	@printf "\t\t[完成]\n"
%.rel: %.c %.h
	@printf "处理：$*"
	@$(CC) $(CFLAGS) -o $@ -c $*.c
	@printf "\t\t[完成]\n"

# 只生成汇编源代码
asm: $(ASMS)
	@printf "\n创建ASM代码完成！\n"
%.asm: %.c
	@printf "处理 $* 中"
	@$(CC) -S $<
	@printf "\t\t[完成]\n"

rebuild: clean-all all

# 清除临时文件
clean-all:
	@printf "清除临时文件"
	@rm -f *.{bak,rel,asm,lst,sym,map,lnk,mem,rst,ihx}
	@printf "\t\t[完成]\n"

clean:
	@printf "清除临时文件"
	@rm -f *.{bak,asm,sym,map,lnk,mem,rst}
	@printf "\t\t[完成]\n"
