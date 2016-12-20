CC=gcc
CFLAGS= 
LDFLAGS=-lm

symmetry.out:symmetry.o
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -o $@

clean:
	rm *.o *.*~

example:symmetry.out
	wget http://doye.chem.ox.ac.uk/jon/structures/LJ/points/147
	
