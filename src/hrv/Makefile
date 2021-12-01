# file: Makefile	Joe Mietus and George Moody	Feb 12 2008
#					Last revised:	Aug 4 2009 (by GBM)
# 'make' description file for the HRV Toolkit

# The WFDB library must be installed before the HRV Toolkit can be compiled.
# Get the WFDB software from http://physionet.org/physiotools/wfdb.shtml .

# The HRV Toolkit will be installed in BINDIR (by default, /usr/bin). If you
# change it, make sure that your PATH includes BINDIR.
BINDIR=/usr/bin

# These scripts need a POSIX shell (e.g., sh or bash) in order to run.
SCRIPTS = get_hrv plt_rrs

# These binaries are compiled by 'make all'.
ALL = filt filtnn hours hrv pwr rrlist seconds statnn

ifneq ($(ll),)
ALL := $(addsuffix .ll,$(ALL))
endif

all:		$(ALL)

%.ll : %.c
	clang -S -emit-llvm -I../include $^ -o $@

# 'make install' copies the HRV toolkit's scripts and binaries to BINDIR.
install:	all
	cp -p $(SCRIPTS) $(ALL) $(BINDIR)

# 'make bin-tarball' creates a tarball of binaries.
bin-tarball:	all
	mkdir HRV
	cp -p $(SCRIPTS) $(ALL) Usages HRV
	tar cfvz HRV-`arch`-`uname`.tar.gz HRV
	rm -rf HRV

# 'make clean' removes old copies of the executables.
clean:
	rm -f $(ALL)

filt :		filt.c
	$(CC) -O -o $@ $^

filtnn :	filtnn.c
	$(CC) -O -o $@ $^

hours :		hours.c
	$(CC) -O -o $@ $^

hrv :		hrv.c
	$(CC) -O -o $@ $^ -lm

pwr :		pwr.c
	$(CC) -O -o $@ $^

rrlist :	rrlist.c
	$(CC) -O -o $@ $^ -I../include -L../lib -lwfdb

seconds :	seconds.c
	$(CC) -O -o $@ $^

statnn :	statnn.c
	$(CC) -O -o $@ $^ -lm

.PHONY: all install clean bin-tarball
