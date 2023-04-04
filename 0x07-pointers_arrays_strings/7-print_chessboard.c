#include "main.h"
#include "_putchar.c"

/**
 * print_chessboard - Entry point
 * @a: rows.
 * Return: nothing.
 */

void print_chessboard(char (*a)[8])
{
	int itr;
	int jtr;

	for (itr = 0; itr < 8; itr++)
	{
		for (jtr = 0; jtr < 8; jtr++)
		{
			_putchar(a[itr][jtr]);
		}
		_putchar('\n');
	}
}
