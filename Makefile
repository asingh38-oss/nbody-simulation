# Makefile for N-Body Simulation
CXX = g++
CXXFLAGS = -Wall -O2 -std=c++11
TARGET = nbody

all: $(TARGET)

$(TARGET): nbody.cpp vector3d.cpp
$(CXX) $(CXXFLAGS) nbody.cpp -o $(TARGET)

test_solar:
./$(TARGET) solar 200 5000000 1000

test_random_100:
./$(TARGET) random 100 1 10000 100

test_random_1000:
./$(TARGET) random 1000 1 10000 100

benchmark: all test_solar test_random_100 test_random_1000

clean:
rm -f $(TARGET) *.o *.tsv *.log

.PHONY: all clean test_solar test_random_100 test_random_1000 benchmark
