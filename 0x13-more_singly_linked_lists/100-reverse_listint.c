#include "lists.h"

/**
 * reverse_listint - reverse a linked list
 * @head: pointer to first node
 * Return: pointerto first nod in new list
 */

listint_t *reverse_listint(listint_t **head)
{
	listint_t *prev = NULL;
	listint_t *next = NULL;

	while (*head)
	{
		next = (*head)->next;
		(*head)->next = prev;
		prev = *head;
		*head = next;
	}

	*head = perv;

	return (*head);
}
