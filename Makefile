CC=gcc
CFLAGS= 
LDFLAGS=-lm

symmetry.out:symmetry.o
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -o $@

clean:
	rm *.o *.*~ *.out

example:symmetry.out
	wget http://doye.chem.ox.ac.uk/jon/structures/LJ/points/13
	bash convert.sh 13 40
	./symmetry.out 13.symm
