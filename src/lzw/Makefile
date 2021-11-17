
CC ?= gcc

CFILES = lzw.c
INCFILES = $(wildcard include/*.c) $(wildcard include/*.h)

ifneq ($(ll),)
CC = clang
CFLAGS += -S -emit-llvm
XFILES = lzw.ll
else
CFLAGS += -static
XFILES = lzw
endif

all: $(XFILES)

$(XFILES):
	$(CC) $(CFILES) $(CFLAGS) -o $@

clean:
	rm -f $(XFILES) *.lzw

.PHONY: all clean
