#include "main.h"

/**
 * swap_int - Entry point
 * @a: int input
 * @b: int input
 */

void swap_int(int *a, int *b);
{
	int m;

	m = *a;
	*a = *b;
	*b = m;
}
