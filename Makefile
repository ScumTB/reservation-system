CC=g++
CFLAGS=-Wall

all: main

main: main.o manager.o orderFile.o student.o teacher.o
	$(CC) $(CFLAGS) main.o manager.o orderFile.o student.o teacher.o -o main

main.o: main.cpp manager.h orderFile.h student.h teacher.h
	$(CC) $(CFLAGS) -c main.cpp

manager.o: manager.cpp manager.h orderFile.h student.h teacher.h computerRoom.h globalFile.h Identity.h
	$(CC) $(CFLAGS) -c manager.cpp

orderFile.o: orderFile.cpp orderFile.h
	$(CC) $(CFLAGS) -c orderFile.cpp

student.o: student.cpp student.h Identity.h
	$(CC) $(CFLAGS) -c student.cpp

teacher.o: teacher.cpp teacher.h Identity.h
	$(CC) $(CFLAGS) -c teacher.cpp

clean:
	rm -f main *.o
