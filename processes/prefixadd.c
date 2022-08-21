// Name: prefixadd.c
// purpose: Defini&ons for a simple prefix adder program, which takes the
// command line arguments as a prefix addi&on expression and
// computes an integer result.
#include "prefixadd.h"
#include <stdio.h>
int main (int argc, char *argv[])
{
//- constants for argument positions
const int min_args = 2;
const int first_arg = 1;
if (argc < min_args)
{
printf("Usage: argv[0] <argument> [argument]…\n");
return 1;
}
//- Pass the current and last index to use, and the array, to the
//- expression parsing func&on, and store the result.
int curr_pos = first_arg;
int value = process(&curr_pos, argc - 1, argv);
// Print out the result, and return success value.
printf("The value calculated is %d\n", value);
return 0;
} 