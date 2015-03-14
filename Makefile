.PHONY: all clean

CC     = gcc
CFLAGS = -Wall -Wextra -g -mno-accumulate-outgoing-args

%.s: %.c
	$(CC) -S $(CFLAGS) -o $@ $^

all: example1.s

clean:
	rm -f *.o *.s
