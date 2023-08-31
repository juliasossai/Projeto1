all: helloWorld

helloWorld: helloWorld.o
	gcc -o helloWorld helloWorld.c -lm
	
clean:
	rm -f helloWorld.s output erro
	
distclean: clean
	rm -f helloWorld
	
helloWorld.o: helloWorld.c
	gcc -c helloWorld.c
	
