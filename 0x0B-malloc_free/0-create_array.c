#include "main.h"

/**
 * create_array - creat array of size and assign char c
 * @size: size of array
 * @c: char to assign
 * Description: creat array of size and assign char c
 * Return: pointer to array, NULL if fail
 */

char *create_array(unsigned int size, char c)
{
	char *n = malloc(size);

	if (size == 0 || n == 0)
		return (0);

	while (size--)
		n[size] = c;

	return (n);
}
