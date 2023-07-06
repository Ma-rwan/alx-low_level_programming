#include "main.h"

/**
 * get_endianness - returns the endianness of hthe system
 *
 * Return: 0 if big endiann, 1 if small endian
 */

int get_endianness(void)
{
	unsigned long int n = 1;

	return (*(char *)&n);
}
