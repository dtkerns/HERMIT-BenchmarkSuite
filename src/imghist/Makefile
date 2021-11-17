
CC ?= gcc

CFILES = $(wildcard *.c)
INCFILES = $(wildcard include/*.c) $(wildcard include/*.h)

ifneq ($(ll),)
CC = clang
CFLAGS += -S -emit-llvm
XFILES = imghist.ll
else
CFLAGS += -static
LDFLAGS += -lm
XFILES = imghist
endif

all: $(XFILES)

$(XFILES):
	$(CC) $(CFILES) $(CFLAGS) -o $@ $(LDFLAGS)

clean:
	rm -f $(XFILES)

.PHONY: all clean
