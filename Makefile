# Makefile for Writing Make Files Example

# *****************************************************
# Variables to control Makefile operation

CC = g++
CFLAGS = -Wall -g -fopenmp -lgomp

# ****************************************************
# Targets needed to bring the executable up to date

main: main.o board.o tree.o
	$(CC) $(CFLAGS) -o main main.o board.o tree.o

# The main.o target can be written more simply

main.o: main.cpp board.h tree.h
	$(CC) $(CFLAGS) -c main.cpp

board.o: board.h
tree.o: tree.h board.h

# Clean
.PHONY : clean
clean:
	rm -f *.o
