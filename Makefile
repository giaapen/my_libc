all: my_libc.a

my_libc.a: my_strlen.o my_strcpy.o my_strncpy.o
	ar rcs my_libc.a my_strlen.o my_strcpy.o my_strncpy.o

my_strlen.o: my_strlen.c
	cc -Wall -Wextra -Werror -c my_strlen.c

my_strcpy.o: my_strcpy.c
	cc -Wall -Wextra -Werror -c my_strcpy.c

my_strncpy.o: my_strncpy.c
	cc -Wall -Wextra -Werror -c my_strncpy.c

clean:
	rm -f my_strlen.o
	rm -f my_strcpy.o
	rm -f my_strncpy.o

fclean: clean
	rm -f my_libc.a

re: fclean all
