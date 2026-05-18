CXX = g++
CPPFLAGS = -Wall -ggdb

MAIN = test
OBJ = $(MAIN).o HStack.o

$(MAIN).exe: $(OBJ)
	$(CXX) $(CPPFLAGS) $(OBJ) -o $(MAIN).exe

$(MAIN).o: $(MAIN).cpp HStack.hpp
	$(CXX) $(CPPFLAGS) -c $(MAIN).cpp

HStack.o: HStack.cpp HStack.hpp
	$(CXX) $(CPPFLAGS) -c HStack.cpp

run:
	./$(MAIN).exe

clean:
	rm -f *.o *.exe

all: $(MAIN).exe

.PHONY: all clean run
