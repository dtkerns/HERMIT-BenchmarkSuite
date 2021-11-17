
CC ?= gcc

CFILES = $(wildcard *.c)
INCFILES = $(wildcard include/*.c) $(wildcard include/*.h)

ifneq ($(ll),)
CC = clang
CFLAGS += -S -emit-llvm
XFILES = sqrs.ll
else
CFLAGS += -static
XFILES = sqrs
endif

all: $(XFILES)

$(XFILES): $(CFILES)
	$(CC) $(CFILES) $(CFLAGS) -o $@

clean:
	rm -f $(XFILES) *.qrs

.PHONY: all clean
