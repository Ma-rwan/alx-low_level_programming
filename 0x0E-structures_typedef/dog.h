#ifndef DOG_H
#define DOG_H

/**
 * struct dog - a dog's basic info
 * @name: first member
 * @age: second member
 * @owner: third member
 * Description: longer description
 */

struct dog
{
	char *name;
	float age;
	char *owner;
};

typedef struct dog dog_t;

void init_dog(struct dog *d, char *name, float age, char *owner);
void print_dog(struct dog *d);

#endif
