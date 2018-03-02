CC=gcc
CFLAGS=-I.

all: main.c
	gcc -o main main.c -I.
