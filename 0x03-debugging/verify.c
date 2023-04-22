#include <stdio.h>

/**
 * modif_my_char_var - Solve me
 *
 * Return: nothing.
 */
void modif_my_char_var(char *cc, char ccc)
{
   *cc = 'o';
   ccc = 'l';
}

/**
 * main - Solve me
 *
 * Return: Always 0.
 */
int main(void)
{
   char c;
   char *p;
   
   p = &c;
   c = 'H';
   printf("value of 'c' is: %d\n", c);
   printf("address of 'c' is: %p\n", &c);
   printf("value of 'p' is: %d\n", *p);
   printf("address of 'p' is: %p\n", p);

   modif_my_char_var(p, c);
   printf("Value of 'c' after the call: %d\n", c);
   printf("Value of 'p' after the call: %d\n", *p);

   
   return (0);
}
