CC=g++
CPPFLAGS=-fpermissive -Iauction-cpp 
LDFLAGS=--std=c++17 -lstdc++fs

AUCTION_CPP_SRCS= \
	auction-cpp/utils.cpp \
	auction-cpp/AuctionSolver.cpp

SRCS= \
	main.cpp \
	platform-zedboard-linux.cpp


all:
	$(CC) $(CPPFLAGS) ${SRCS} ${AUCTION_CPP_SRCS} ${LDFLAGS}

test:
	$(CC) $(CPPFLAGS) -g ${SRCS} ${AUCTION_CPP_SRCS} ${LDFLAGS}
