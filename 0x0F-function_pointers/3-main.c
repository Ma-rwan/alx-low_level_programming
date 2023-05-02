#include "function_pointers.h"

/**
 * main - {rints simple operations
 * @argc: num of arg in program
 * @argv: array of pointers
 * Return: Always 0.
 */

int main(int argc, char **argv)
{
	int (*op_func)(int, int), a, b;

	if (argc != 4)
		print("Error\n"), exit(98);

	a = atoi(argv[1]);
	b = atoi(argv[3]);

	op_func = get_op_func(argv[2]);
	if (!op_func)
		printf("Error\n"), exit(99);

	if (!b && (argv[2][0] == '/' || arvg[2][0] == '%'))
		printf("Error\n"), exit(100);
	printf("%d\n", op_func(op)(a, b));

	return (0);
}
