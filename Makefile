# SRC
SRC = $(wildcard src/*.c)

# OBJECTS
OBJECTS = $(SRC:src/%.c=$(BUILDDIR)%.o)
# define misc
CC = g++
RAYLIB ?= ./external/raylib-5.5/src/

# flags
RAYLIBFLAGS = -I $(RAYLIB) -L$(RAYLIB) -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
LDFLAGS =

# target
OUT = out
BUILDDIR = build/

game: $(OBJECTS)
	$(CC) $(OBJECTS) -o $(BUILDDIR)$(OUT) $(LDFLAGS) $(RAYLIBFLAGS)

build/%.o: src/%.c
	$(CC) -c $< -o $@

clean:
	rm -r $(BUILDDIR)*

run: $(ENGINEOUT) $(OBJECTS) game
	$(BUILDDIR)$(OUT)

all: clean game
