
CC ?= gcc

CFILES = $(wildcard *.c)

ifneq ($(ll),)
CC = clang
CFLAGS += -S -emit-llvm
XFILES = activity.ll
else
CFLAGS += -static
LDFLAGS += -lm
XFILES = activity
endif

all: $(XFILES)

$(XFILES):
	$(CC) $(CFILES) $(CFLAGS) -o $@ $(LDFLAGS)

clean:
	rm -f $(XFILES) *.txt

.PHONY: all clean 
