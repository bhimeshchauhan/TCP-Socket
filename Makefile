CC = gcc
ARGS = -Wall

all: ruptimeServer ruptimeClient

ruptimeServer: ruptimeServer.c
	$(CC) $(ARGS) -o ruptimeServer ruptimeServer.c

ruptimeClient: ruptimeClient.c
	$(CC) $(ARGS) -o ruptimeClient ruptimeClient.c

clean:
	rm -f *.o ruptimeClient ruptimeServer *~

