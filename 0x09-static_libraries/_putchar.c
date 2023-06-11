#include <unistd.h>

/**
 * _putchar - writes the charcter c to stdout
 * @c: The character to print
 * Renturn: (1) Success
 * on error, -1 is returned, and errno is set 
 */

int  _putchar(char c)

{
	return (write(1, &c, 1));
}
