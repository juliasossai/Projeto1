all: helloWorld

helloWorld: helloWorld.o myFunctions.o myFunctions2.o
	gcc -o helloWorld helloWorld.o myFunctions.o myFunctions2.o -lm
	
myFunctions.o: myFunctions.c
	gcc -c myFunctions.c
	
myFunctions2.o: myFunctions2.c
	gcc -c myFunctions2.c
	
clean:
	rm -f *.s *.o output erro
	
distclean: clean
	rm -f helloWorld
	
helloWorld.o: helloWorld.c
	gcc -c helloWorld.c
	
