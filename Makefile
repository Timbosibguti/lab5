.PHONY: clean

bin/main: obj/main.o obj/app.o
	gcc -Wall -o bin/main obj/main.o obj/app.o -lm
	
obj/main.o: src/main.c
	gcc -Wall -c src/main.c -o obj/main.o
	
obj/app.o: src/app.c
	gcc -Wall -c src/app.c -o obj/app.o
	
clean:
	rm -f bin/* obj/*