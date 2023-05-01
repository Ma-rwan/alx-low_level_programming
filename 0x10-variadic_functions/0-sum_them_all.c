#include "variadic_functions.h"


/**
 * sum_them_all - sums variable arguments
 * @n: the number of arguments
 * @...: the intger sum.
 * Return: the intger sum
 */

int sum_them_all(const unsigned int n, ...)
{
	unsigned int i, s = 0;
	va_list ap;

	for (i = 0; i < n; i++)
		s += va_arg(ap, int)

	va_end(ap);

	return (s);
}
