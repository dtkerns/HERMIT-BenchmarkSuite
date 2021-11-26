
CC ?= gcc

CFILES = $(wildcard *.c)
INCFILES = $(wildcard include/*.c) $(wildcard include/*.h)
CPPFLAGS += -I../include/aes
LDFLAGS += -L../lib -laes

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
	$(CC) $(CPPFLAGS) $(CFILES) $(CFLAGS) -o $@ $(LDFLAGS)

clean:
	rm -f $(XFILES)

.PHONY: all clean
