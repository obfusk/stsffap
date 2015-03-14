.PHONY: all clean

CC     = gcc
CFLAGS = -Wall -Wextra -g -mno-accumulate-outgoing-args

PROGS  = example1

%.s: %.c
	$(CC) -S $(CFLAGS) -o $@ $^

all: $(PROGS) $(patsubst %,%.s,$(PROGS))

clean:
	rm -f *.o *.s $(PROGS)
