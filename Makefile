all: my_libc.a

my_libc.a: my_strlen.o my_strcpy.o
	ar rcs my_libc.a my_strlen.o my_strcpy.o

my_strlen.o: my_strlen.c
	cc -Wall -Wextra -Werror -c my_strlen.c

my_strcpy.o: my_strcpy.c
	cc -Wall -Wextra -Werror -c my_strcpy.c

clean:
	rm -f my_strlen.o
	rm -f my_strcpy.o

fclean: clean
	rm -f my_libc.a

re: fclean all
