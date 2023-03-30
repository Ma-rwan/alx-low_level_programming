#include <stdio.h>

/**
 * main - Entry point
 *
 *Return: 0 (Success)
 */

int main(void)
{
	in sum, num;

	for (num = 0; num < 1024; num++)
	{
		if ((num % 3 == 0) || (num % 5 == 0))
			sum += num;
	}
	printf("d\n", sum);

	return (0);
}
