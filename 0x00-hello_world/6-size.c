#include<stdio.h>
/**
 * main - sizeof()
 * Return 0 (success)
 */
int main(void)
{
	char a;
	int b;
	long int c;
	long long int d;
	float f;
	printf("The size of s char is: %lu.\n", (unsigned long)sizeof(a));
	printf("The size of an int is: %lu.\n", (unsigned long)sizeof(b));
	printf("Thr size of a long int is: %lu.\n", (unsigned long)sizeof(c));
	printf("Thr size of a long long int is: %lu.\n", (unsigned long)sizeof(d));
	printf("Thr size of a float is: %lu.\n", (unsigned long)sizeof(f));
	return (0);
}
