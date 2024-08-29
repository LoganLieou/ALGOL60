CC=gcc
LD=-L/usr/local/opt/flex/lib

build:
	flex algol60.l
	bison -d algol60.y
	$(CC) $(LD) -lfl lex.yy.c algol60.tab.c -o algol60

clean:
	rm algol60 lex.yy.c algol60.tab.c algol60.tab.h