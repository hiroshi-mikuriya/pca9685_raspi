CXX			:= gcc
CXXFLAGS	:= -Wall -std=c99 -fPIC

TARGET		:= pca9685_raspi
HEADER		:= stick.h
PROJ_ROOT	:= $(realpath .)
SRCS		:= main.c i2c.c
OBJS		:= $(SRCS:.c=.o)

### Rules ######################################################################

.PHONY: all
all: $(TARGET)

.PHONY: make
make: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -o $@ $(OBJS)

.PHONY: clean
clean:
	$(RM) $(TARGET) *.o

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $<
