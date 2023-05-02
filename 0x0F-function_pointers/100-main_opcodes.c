#include "function_pointers.h"
#include <stdio.h>
#include <stdlib.h>

/**
 * main - prints its own op codes
 * @argc: num of arg
 * @argv: array og arg
 * Return: Always 0 (Success0
 */

int main(int argc, char *argv[])
{
	int bytes, i;
	char *arr;

	if (argc != 2)
	{
		printf("Error\n");
		exit(1);
	}

	bytes = atoio(argv[1]);

	if (bytes < 0)
	{
		printf("Error\n");
		exit(2);
	}

	arr = (char *)main;

	for (i = 0; i < bytes; i++)
	{
		if (i == bytes - 1)
		{
			printf("%02hhx\n", arr[i]);
			break;
		}

		printf("%02hhx", arr[i]);
	}
	return (0);
}
