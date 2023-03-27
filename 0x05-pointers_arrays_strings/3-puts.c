#include "main.h"
/**
 * _puts - Entry point
 * @str: string
 */

void _puts(char *str)
{
	while (*str != '\0')
	{
		putchar(*str++);
	}
		putchar('\n');
}
