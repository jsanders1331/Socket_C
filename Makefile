
output: main.o system/system.o
	gcc main.o system.o -o shell

main.o: main.c
	gcc -c main.c
system.o: system/system.c system/system.h
	gcc -c system.c

clean:
	rm *.o system/*.o shell


target: dependencies
	action