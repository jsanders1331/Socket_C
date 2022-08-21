#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>
#include <unistd.h>
#include <limits.h>
#include <sys/utsname.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <string.h>
#include <errno.h>
#include <libgen.h>


#include "puts.h"

int put(char dirname[])
{

    char cwd[PATH_MAX];
    char current[1024];
    if (getcwd(cwd, sizeof(cwd)) != NULL)
    {
        // printf("%s\n",cwd);
        strcpy(current, cwd);
    }
    
    if (mkdir(dirname, 0777) == -1) // check if file exists
    {
        perror("");
        return false;
    }
    mkdir(dirname, 0777);
    
    return true;
    //printf("%s\n", current);
}

int copy_file(char *infilename, char *outfileDir) // part of the puts ()
{
    FILE *infile; // File handles for source
    FILE *outfile; // Dest
    char outfilename[PATH_MAX];
    char c;

    infile = fopen(infilename, "r"); // Open the input file
    if (infile == NULL) // check for error
    {

        return 1;
    }
    sprintf(outfilename, "%s/%s", outfileDir, basename(infilename)); // 

    outfile = fopen(outfilename, "w"); //open file for writing
    if(outfile == NULL)
    {
        printf("Cannot open file\n");
        return -1;
    }
    c = fgetc(infile); // copy contents of file
    while (c != EOF)
        {
            
            fputc(c, outfile);
            c = fgetc(infile);
        }

    
    fclose(outfile);
    fclose(infile);
    printf("Copy file success! \n");
    return 0;

}