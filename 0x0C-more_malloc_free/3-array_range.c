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
	int len, i;

	if (min > max)
		return (NULL);

	len = max - min + 1;

	ptr = malloc(sizeof(int) * len);

	if (!ptr)
		return (NULL);

	for (i = 0; i < len; i++)
		ptr[i] = min++;

	return (ptr);
}
