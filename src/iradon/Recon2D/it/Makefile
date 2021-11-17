CC = gcc

SOURCEDIR = ../sourcedir

EXE   = it

SOURCES  = $(SOURCEDIR)/it.c \
           $(SOURCEDIR)/em.c \
           $(SOURCEDIR)/art.c \
           $(SOURCEDIR)/cg.c \
           $(SOURCEDIR)/amatrix.c \
           $(SOURCEDIR)/itreadargs.c \
           $(SOURCEDIR)/sparse.c \
           $(SOURCEDIR)/misc.c \
           $(SOURCEDIR)/eval.c \
           $(SOURCEDIR)/imgtools.c \
           $(SOURCEDIR)/calc.c \
           $(SOURCEDIR)/egif_lib.c \
           $(SOURCEDIR)/dgif_lib.c \
           $(SOURCEDIR)/gif_err.c \
           $(SOURCEDIR)/gif_hash.c

IDIR      = -I../include

OBJS        = $(SOURCES:.c=.o)

CFLAGS     = -O3 -finline-functions -Winline -Wall -falign-loops=2 -falign-jumps=2 -falign-functions=2 -Wstrict-prototypes

#CFLAGS      = -g -Wstrict-prototypes -Winline -Wall

LFLAGS      = -lm

all: $(EXE)

$(EXE) : $(OBJS)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJS) $(LFLAGS)

%.o : %.c
	$(CC) -c $(IDIR) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJS) $(EXE)
