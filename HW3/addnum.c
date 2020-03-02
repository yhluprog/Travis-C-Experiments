#include <stdio.h>
#include <stdlib.h>
int main(int argc, char * argv[])
{
  if (argc != 2)
    {
      return EXIT_FAILURE;
    }
  FILE * fptr = fopen(argv[1], "r");
  if (fptr == NULL)
    {
      return EXIT_FAILURE;
    }
  int val1, val2;
  if (fscanf(fptr, "%d %d", &val1, &val2) != 2)
    {
      // cannot read two integers
      fclose (fptr);
      return EXIT_FAILURE;
    }
  printf("%d\n", val1 + val2);
  return EXIT_SUCCESS;
}

