WARNING = -Wall -Wshadow --pedantic
ERROR = -Wvla -Werror
GCC = gcc -std=c99 -g $(WARNING) $(ERROR)
DIRS = HW1 HW2 HW4
ALLDIRS = $(wildcard */)

# listdir:
#	echo $(ALLDIRS)

test:
#	for subdir in 1 2 3 4; do \
#		echo $$subdir; \
#	done
	for subdir in $(DIRS); do \
#		echo $$subdir; \
		make -C $$subdir test; \
	done


clean:
	for subdir in $(ALLDIRS); do \
		make -C $$subdir clean; \
	done

