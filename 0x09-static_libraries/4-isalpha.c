#include "main.h"

/**
 * _isalpha - check for alphabetic charachter
 * @c: input
 *
 * Return: 1 if lower or upper otherwie 0 (Success)
 */

int _isalpha(int c)
{
	if (c >= 65 && c <= 122)
		return (1);
	return (0);
}
