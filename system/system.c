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

#include "system.h"
void get_cpu()
{
    struct utsname uts;
    uname(&uts);
    printf("System is %s on %s hardware\n", uts.sysname, uts.machine);
    printf("OS Release is %s\n", uts.release);
    printf("OS Version is\n", uts.version);
}