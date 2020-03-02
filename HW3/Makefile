WARNING = -Wall -Wshadow --pedantic
ERROR = -Wvla -Werror
GCC = gcc -std=c99 -g $(WARNING) $(ERROR)
SRCS = addnum.c

OBJS = $(SRCS:%.c=%.o)

main: $(OBJS) 
	$(GCC) $(OBJS) -o main

# convert .c to .o 
.c.o: 
	$(GCC) $(TESTFALGS) -c $*.c 

test: test1 test2

test1: main
	./main inputs/test1 > output1
	diff output1 expected/answer1

test2: main
	./main inputs/test2 > output2
	diff output2 expected/answer2

clean: # remove all machine generated files
	rm -f main *.o output?


