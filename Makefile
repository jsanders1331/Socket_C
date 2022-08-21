COMMANDS_SRC := $(shell find . -type f -name "*.c" -print0 | xargs -0)

output: main.o commands
	gcc $(shell find . -type f -name "*.o" -print0 | xargs -0) -o shell

commands: commands/*.c
	gcc -c $(COMMANDS_SRC)
# system.o: system/system.c system/system.h
# 	gcc -c system.c
# path.o: commands/path.c commands/path.h
# 	gcc -c path.c


clean:
	rm *.o shell


target: dependencies
	action