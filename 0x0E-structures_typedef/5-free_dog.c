#include <stdlib.h>
#include "dog.h"

/**
 * free_dog - frees memory allocated for a struct di=og
 * @d: struct dog to free
 */

void free_dog(dog_t *d)
{
	if (d)
	{
		if (d->name)
			free(d->name);
		if (d->owner)
			free(d->owner);
		free(d);
	}
}
