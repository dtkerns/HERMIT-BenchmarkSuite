
CC ?= gcc

CFILES = $(wildcard *.c)
INCFILES = $(wildcard include/*.c) $(wildcard include/*.h)

ifneq ($(ll),)
CC = clang
CFLAGS += -S -emit-llvm
XFILES = wapb.ll
else
CFLAGS += -static
LDFLAGS += -lm
XFILES = wabp
endif

all: $(XFILES)

$(XFILES):
	$(CC) $(CFILES) $(CFLAGS) -o $@ $(LDFLAGS)

clean:
	rm -f $(XFILES) *.wabp

.PHONY: all clean
