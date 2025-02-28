RAYLIB ?= ./external/raylib-5.5/src/
SRC = src/*.c
LDFLAGS = 
RAYLIBFLAGS = -I $(RAYLIB) -L$(RAYLIB) -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
OUT = build/out
CC = gcc


all:
	$(CC) $(SRC) $(LDFLAGS) $(RAYLIBFLAGS) -o $(OUT)
