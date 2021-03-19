CC=g++
CPPFLAGS=-fpermissive


all:
	$(CC) $(CPPFLAGS) main.cpp platform-zedboard-linux.cpp

test:
	$(CC) $(CPPFLAGS) -g main.cpp platform-zedboard-linux.cpp
