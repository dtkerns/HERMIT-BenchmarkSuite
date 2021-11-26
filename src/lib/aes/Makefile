CPPFLAGS += -I../../include/aes
CFLAGS += -fPIC
vpath %.h .:../../include/aes

all: ../libaes.so ../libaes.a

# with wolfmath
../libaesww.so: aes.o asn.o cpuid.o error.o hash.o hmac.o integer.o logging.o md4.o md5.o memory.o misc.o pwdbased.o random.o sha256.o sha.o wc_port.o wolfmath.o
	$(CC) --shared $^ -o $@

../libaes.so: lib.o
	$(CC) --shared $^ -o $@
../libaes.a: lib.o
	$(AR) rcs $@ $^
