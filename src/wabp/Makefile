
CC ?= gcc

CFILES = wabp.c
CPPFLAGS += -I../include

ifneq ($(ll),)
CC = clang
CFLAGS += -S -emit-llvm
XFILES = wapb.ll
else
CFLAGS += -static
LDFLAGS += -lm
XFILES = wabp
LDFLAGS += -L../lib -lwfdb
endif

all: $(XFILES)

$(XFILES):
	$(CC) $(CPPFLAGS) $(CFILES) $(CFLAGS) -o $@ $(LDFLAGS)

clean:
	rm -f $(XFILES) *.wabp

.PHONY: all clean
