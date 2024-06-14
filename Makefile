GCCFLAGS	= -std=c99 -Wall -Werror -O2 -g
EMCCFLAGS	= -std=c99 -DNDEBUG=1 -DEMCC  -sSTANDALONE_WASM=1 -sPURE_WASI=1
LDFLAGS = 

CC	= gcc
CFLAGS  = $(GCCFLAGS)

wasm: forsp.c
	emcc $(EMCCFLAGS) -o forsp.js forsp.c

forsp: forsp.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o forsp forsp.c 
