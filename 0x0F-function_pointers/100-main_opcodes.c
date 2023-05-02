#include "function_pointers.h"
#include <stdio.h>
#include <stdlib.h>

/**
 * main - prints its own op codes
 * @argc: num of arg
 * @argv: array og arg
 * Return: Always 0 (Success)
 */

int main(int argc, char **argv)
{
	int b;
	char *p = (char *)main;

	if (argc != 2)
		printf("Error\n"), exit(1);
	b = atoi(argv[1]);

	if (b < 0)

		printf("Error\n"), exit(2);

	while (n--)
		printf("02hhx%s", *p++, b ? " " : "\n");
	return (0);
}
