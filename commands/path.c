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


#include "path.h"

void path() // prints current path of working directory
{
    char cwd[PATH_MAX];
    if (getcwd(cwd, sizeof(cwd)) != NULL) // get cwd command does this
    {
        printf("Dir: %s\n", cwd);
    }
    else
    {
        printf("Error retrieving directory");
    }
}