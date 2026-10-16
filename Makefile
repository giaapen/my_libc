all: my_libc.a

my_libc.a: my_strlen.o my_strcpy.o my_strncpy.o my_strcat.o my_strncat.o my_strcmp.o
	ar rcs my_libc.a my_strlen.o my_strcpy.o my_strncpy.o my_strcat.o my_strncat.o my_strcmp.o

my_strlen.o: my_strlen.c
	cc -Wall -Wextra -Werror -c my_strlen.c

my_strcpy.o: my_strcpy.c
	cc -Wall -Wextra -Werror -c my_strcpy.c

my_strncpy.o: my_strncpy.c
	cc -Wall -Wextra -Werror -c my_strncpy.c

my_strcat.o: my_strcat.c
	cc -Wall -Wextra -Werror -c my_strcat.c

my_strncat.o: my_strncat.c
	cc -Wall -Wextra -Werror -c my_strncat.c

my_strcmp.o: my_strcmp.c
	cc -Wall -Wextra -Werror -c my_strcmp.c

clean:
	rm -f my_strlen.o
	rm -f my_strcpy.o
	rm -f my_strncpy.o
	rm -f my_strcat.o
	rm -f my_strncat.o
	rm -f my_strcmp.o

fclean: clean
	rm -f my_libc.a

re: fclean all
