
CC ?= gcc

CFILES = sqrs.c
CPPFLAGS += -I../include

ifneq ($(ll),)
CC = clang
CFLAGS += -S -emit-llvm
XFILES = sqrs.ll
else
CFLAGS += -static
XFILES = sqrs
LDFLAGS += -L../lib -lwfdb
endif

all: $(XFILES)

$(XFILES): $(CFILES)
	$(CC) $(CPPFLAGS) $(CFILES) $(CFLAGS) -o $@ $(LDFLAGS)

clean:
	rm -f $(XFILES) *.qrs

.PHONY: all clean
