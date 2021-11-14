
CC = gcc

CFILES = $(wildcard *.c)
INCFILES = $(wildcard include/*.c) $(wildcard include/*.h)
XFILES = $(CFILES:.c=)

CFLAGS = -static

%: %.c
	$(CC) $(CFILES) $(CFLAGS) -o $@

all: $(XFILES)

.PHONY: clean
clean:
	rm -f $(XFILES) *.qrs
