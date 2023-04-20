#ifndef MAIN_HEADER
#define MAIN_HEADER

#include <stdarg.h>
#include <stdio.h>

/**
 * struct token - Struct token
 *
 * @token: format token
 * @f: the fun associated
 */
typedef struct token
{
	char *token;
	void (*f)(char *, va_list);
} token_t;

/**
 * _putchar - writes the character c in stdout
 * @c: the character to print]
 *
 * Return: on success 1.
 * on error, -1 is returned, and errno is set.
 */
int _putchar(char c)
{
        return (write(1, &c, 1));
}

int sum_them_all(const unsigned int n, ...);

void print_numbers(const char *separator, const unsigned int n, ...);

void print_strings(const char *separator, const unsigned int n, ...);

void print_all(const char * const format, ...);

#endif
