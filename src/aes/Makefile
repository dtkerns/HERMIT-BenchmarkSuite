
CC ?= gcc

CFILES = $(wildcard *.c)
INCFILES = $(wildcard include/*.c) $(wildcard include/*.h)

ifneq ($(ll),)
CC = clang
CFLAGS += -S -emit-llvm
XFILES = aes.ll
else
CFLAGS += -Wall -static
LDFLAGS += -lm
XFILES = aes
endif

all: $(XFILES)

$(XFILES):
	$(CC) $(CFILES) $(CFLAGS) -o $@

clean:
	rm -f $(XFILES)

.PHONY: all clean
