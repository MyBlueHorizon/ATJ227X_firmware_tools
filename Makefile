DEFINES=
CC=gcc
LD=gcc
CFLAGS=-g -std=c99 -W -Wall $(DEFINES)
LDFLAGS=
BINS=atjboottool

all: $(BINS)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

atjboottool: atjboottool.o fwu.o misc.o
	$(LD) -o $@ $^ $(LDFLAGS)

clean:
	rm -fr *.o

veryclean:
	rm -rf $(BINS)
