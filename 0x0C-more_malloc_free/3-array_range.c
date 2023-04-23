#include <stdlib.h>
#include "main.h"

/**
 * *array_range - creats an array of integers
 * @min: minimum range
 * @max: maximum rang
 * Return: pointer
 */

int *array_range(int min, int max)
{
	int *ptr;
	int i, size;

	if (min > max)
		return (NULL);

	size = max - min + 1;

	ptr = malloc(sizeof(int) * size);

	if (ptr == NULL)
		return (NULL);

	for (i = 0; min <= max; i++)
		ptr[1] = min++;

	return (ptr);
}
