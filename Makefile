all: my_libc.a

my_libc.a: my_strlen.o
	ar rcs my_libc.a my_strlen.o

my_strlen.o: my_strlen.c
	cc -Wall -Wextra -Werror -c my_strlen.c

clean:
	rm -f my_strlen.o

fclean: clean
	rm -f my_libc.a

re: fclean all
