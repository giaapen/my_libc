#include "my_libc.h"

int
my_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t i;
	for (i = 0; s1[i] != '\0' &&
	    (unsigned char)s1[i] == (unsigned char)s2[i] && i < n;
	    i++) {
	}
	return (unsigned char)s1[i] - (unsigned char)s2[i];
}
