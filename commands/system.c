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
void get_cpu() // Uses uts api to get CPU
{
    struct utsname uts;
    uname(&uts);
    printf("System is %s on %s hardware\n", uts.sysname, uts.machine);
    printf("OS Release is %s\n", uts.release);
    printf("OS Version is %s\n", uts.version);
    

    printf("CPU INFO:\n");
    
    
}

void print_sys() // prints version of OS and CPU type
{
#if __APPLE__
    system("sysctl -a | grep machdep.cpu | grep machdep.cpu.brand_string"); // CPU INFO FOR MAC
    printf("This is a MAC_OS operating system\n");
#elif _WIN32
    printf("This is a Windows operating system\n");
#elif _WIN64
    printf("This is a Windows 64bit operating system");
#elif __LINUX__
    system("less /proc/cpuinfo");
    printf("This is a Linux operating system\n");
#elif _POSIX_VERSION
    printf("This is a POSIX based operating system (Windows with cygwin)\n");
    system("less /proc/cpuinfo");
#else
    printf("Operating system not detected.\n");
#endif

    get_cpu();
}

