CC=gcc
EDCFLAGS= -O2 -Wall $(CFLAGS)
EDLDFLAGS= -lpthread $(LDFLAGS)

COBJS=main.o

all: $(COBJS)
	$(CC) -o test.out $(COBJS) $(EDLDFLAGS)

%.o: %.c
	$(CC) -o $@ -c $< $(EDCFLAGS)

.PHONY:
	clean

clean:
	rm -vf *.o
	rm -vf *.out