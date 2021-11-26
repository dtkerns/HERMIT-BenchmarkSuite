CPPFLAGS += -I../../include/wfdb
CFLAGS += -fPIC
vpath %.h .:../../include/wfdb

all: ../libwfdb.so ../libwfdb.a

../libwfdb.so: wfdbinit.o annot.o signal.o calib.o wfdbio.o
	$(CC) --shared $^ -o $@

../libwfdb.a: wfdbinit.o annot.o signal.o calib.o wfdbio.o
	$(AR) rcs $@ $^

# Prerequisites for the library modules
wfdbinit.o:	wfdbinit.c wfdb.h wfdblib.h
annot.o:	annot.c wfdb.h ecgcodes.h ecgmap.h wfdblib.h
signal.o:	signal.c wfdb.h wfdblib.h
calib.o:	calib.c wfdb.h wfdblib.h
wfdbio.o:	wfdbio.c wfdb.h wfdblib.h
