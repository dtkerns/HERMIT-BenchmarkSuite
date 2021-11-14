# Makefile		Joe Mietus		Dec 19 2001

CC = gcc
BINDIR = /usr/local/bin
ALL = apdet av detruns filt ht htavsd htmedfilt ldetrend linsamp mm rrlist smooth

all :		$(ALL)

help:
	@echo "Type 'make all' to compile everything in this directory."
	@echo "Type 'make install' to install executables into" $(BINDIR)
	@echo "Type 'make clean' to remove binaries and backups."

install :	all
	-mkdir $(BINDIR)/apdet
	install -s $(ALL) $(BINDIR)/apdet
	install get_apdet $(BINDIR)

clean :
	rm -f $(ALL) *.o *~ core

apdet :		apdet.c
	$(CC) -O -o $@ $^ -lm

av :		av.c
	$(CC) -O -o $@ $^ -lm

detruns :	detruns.c
	$(CC) -O -o $@ $^

filt :		filt.c
	$(CC) -O -o $@ $^

ht :		ht.c
	$(CC) -O -o $@ $^ -lm

htavsd :	htavsd.c
	$(CC) -O -o $@ $^ -lm

htmedfilt :	htmedfilt.c
	$(CC) -O -o $@ $^

ldetrend :	ldetrend.c
	$(CC) -O -o $@ $^

linsamp :	linsamp.c
	$(CC) -O -o $@ $^

mm :		mm.c
	$(CC) -O -o $@ $^

rrlist :	rrlist.c ../../include/wfdb/signal.c
	$(CC) -O -o $@ $<

smooth :	smooth.c
	$(CC) -O -o $@ $^

