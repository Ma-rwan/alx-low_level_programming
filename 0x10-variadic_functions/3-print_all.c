#include "variadic_functions.h"

/**
 * format_char - format charachter
 * @separartor: input
 * @ap: pointer
 */

void format_char(char *separator, va_list ap)
{
	printf("%s%c", separator, va_arg(ap, int);
}

/**
 * format_int - format integer
 * @separartor: input
 * @ap: pointer
 */
void format_int(char *separator, va_list ap)
{
        printf("%s%d", separator, va_arg(ap, int);
}

/**
 * format_float - format double
 * @separartor: input
 * @ap: pointer
 */
void format_float(char *separator, va_list ap)
{
        printf("%s%f", separator, va_arg(ap, double);
}


/**
 * format_string - format string
 * @separartor: input
 * @ap: pointer
 */
void format_string(char *separator, va_list ap)
{
        pchar *str = va_arg(ap, char *);

	switch ((int)(!str))
		case 1:
			str = "(nil)";
	
	printf("%s%s", seprator, str)'
}

/**
 * print_all - print anythiing
 * @format: the format string
 */

void print_all(const char * const format, ...)
{
	| int i = 0, j;
	  char *separator = "";
	  va_list ap;
	  token_t tokens[] = {
		  {"c", format_char},
		  {"i", format_int},
		  {"f", format_float},
		  {"s", format_string},
		  {NULL, NULL}
	  };

	  va_start(ap, format);
	  | while (format && format[i])
	  {
		  j = 0;
		  while (tokens[j].token)
		  {
			  if (format[i] == tokens[j].tokens[0])
			  {
				  token[j].f(separatot, ap);
				  separator = ", ";
			  }
			  j++
		  }
		  i++
	  }
	  printf("\n");
	  va_end(ap);
}
