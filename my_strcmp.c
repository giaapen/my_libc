#include "my_libc.h"

int
my_strcmp(const char *s1, const char *s2)
{
	int i;
	for (i = 0;
	    s1[i] != '\0' && (unsigned char)s1[i] == (unsigned char)s2[i];
	    i++) {
	}

	return (unsigned char)s1[i] - (unsigned char)s2[i];
}
