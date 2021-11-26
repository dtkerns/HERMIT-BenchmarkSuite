
CC ?= gcc

CFILES = sqrs.c
CPPFLAGS += -I../include
LDFLAGS += -L../lib

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
	$(CC) $(CPPFLAGS) $(CFILES) $(CFLAGS) -o $@ $(LDFLAGS) -lwfdb

clean:
	rm -f $(XFILES) *.qrs

.PHONY: all clean
