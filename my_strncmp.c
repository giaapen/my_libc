#include "my_libc.h"

int
my_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t i;
	for (i = 0; s1[i] != '\0' &&
	    (unsigned char)s1[i] == (unsigned char)s2[i] && i < n;
	    i++) {
	}
	if (i == n) {
		return 0;
	}
	return (unsigned char)s1[i] - (unsigned char)s2[i];
}
