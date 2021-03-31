CC=g++
CPPFLAGS=-fpermissive -Iauction-cpp



all:
	$(CC) $(CPPFLAGS) main.cpp platform-zedboard-linux.cpp utils.cpp AuctionSolver.cpp

test:
	$(CC) $(CPPFLAGS) -g main.cpp platform-zedboard-linux.cpp utils.cpp AuctionSolver.cpp
