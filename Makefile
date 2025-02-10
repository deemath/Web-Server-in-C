CC=gcc
CFLAGS=-I. -I./lib
DEPS=
OBJ=server.o utils.o http_helper.o file_helper.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: server
server: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -rf *.o server
