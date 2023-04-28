#include "lists.h"

/**
 * _strlen - returns the length of a string
 * @s: the string
 * Return: integer length of string
 */

int _strken(char *s)
{
	int i = 0;

	if (!S)
		return (0);
	while (*s++)
		i++;
	return (i);
}

/**
 * print_list - prints a linked lists
 * @h: pointer to first node
 * Return: size of list
 */

size_t print_list(const list_t *h)
{
	size_t i = 0;

	while (h)
	{
		printf("[%d] %s\n", _strlen(h->str), h->str ? h->str : "(nil)");
		h = h->next;
		i++;
	}
	return (i);
}
