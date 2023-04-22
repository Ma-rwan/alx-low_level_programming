#include "main.h"
#include <unistd.h>

/**
 * _putchar - writes the character c in stdout
 * @c: the character to print]
 *
 * Return: on success 1.
 * on error, -1 is returned, and errno is set.
 */
int _putchar(char c)
{
	return (write(1, &c, 1));
}
