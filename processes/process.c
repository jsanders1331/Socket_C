// int* process(int *curr_index, int last_index, char *argv[])
// {
// //- make sure we're still in the argument range
// if (curr_index > last_index) return 0xFFFFFFF;
// //- look for a single-symbol addition operator
// if (strlen(argv[*curr_index]) == 1 && *(argv[*curr_index]) == '+')
// {
// int operand1 = process(++curr_index, last_index, argv);
// int operand2 = process(curr_index, last_index, argv);
// return operand1 + operand2;
// }
// else //- treat it as an integer
//  {
// int result = atoi(argv[*curr_index++]);
// return &result;
// }
// } 