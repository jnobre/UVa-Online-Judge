CC_FILES = $(wildcard p)
BIN_FILES = $(patsubst p%/%.cc, %, $(CC_FILES))
CC_FLAGS = -Wall -02 -lm
CC = g++

all: $(BIN_FILES)

%:  p%/%.cc
	 $(CC) $(CC_FLAGS) -o $@ $<

clean:
	rm -f $(BIN_FILES)