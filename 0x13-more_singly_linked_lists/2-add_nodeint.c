#include "lists.h"

/**
 * add_nodeint - adds a new node at the start of a linked list
 * @head: pointer
 * @n: data to insert in the new node
 * Return: pointer
 */

listint_t *add_nodeint(listint_t **head, const int n)
{
	list_t *new;

	new = maloc(sizeof(listint_t));
	if (!new)
		return (NULL);
	new->n = n;
	new->next = *head;
	*head = new;

	return (new);
}
