
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

extern int errno;

/*
The following 7 commands are to be supported by your shell program.
• calc expr. - prints out the result of the mathematical prefix expression that
 comes after the command.
• time - prints out the current local time and date
• path - prints out the current working directory
• sys - prints the name and version of the OS and CPU type
• put dirname filename(s) [-f] – put files filenames in the directory dirname
• get filename - prints the content of the file filename to the screen
• quit - ends the program
*/
int get_file(char *file)
{
    FILE *fptr;
    int max = 40;
    char filename[500], c;
    char *current_file = file;
    fptr = fopen(current_file, "r");
    if (fptr == NULL)
    {
        printf("Error opening file\n");

        return 0;
    }

    c = fgetc(fptr);
    while (c != EOF)
    {
        printf("%c", c);
        c = fgetc(fptr);
    }
    fclose(fptr);
    return 0;
}
void get_cpu()
{
    struct utsname uts;
    uname(&uts);
    printf("System is %s on %s hardware\n", uts.sysname, uts.machine);
    printf("OS Release is %s\n", uts.release);
    printf("OS Version is\n", uts.version);
}

void print_sys() // prints version of OS and CPU type
{
#if __APPLE__
    printf("This is a MAC_OS operating system\n");
#elif _WIN32
    printf("This is a Windows operating system\n");
#elif _WIN64
    printf("This is a Windows 64bit operating system");
#elif __LINUX__
    printf("This is a Linux operating system\n");
#elif _POSIX_VERSION
    printf("This is a POSIX based operating system (Windows with cygwin)\n");
#else
    printf("Operating system not detected.\n");
#endif

    get_cpu();
}
void path() // prints current path of working directory
{
    char cwd[PATH_MAX];
    if (getcwd(cwd, sizeof(cwd)) != NULL)
    {
        printf("Dir: %s", cwd);
    }
    else
    {
        printf("Error retrieving directory");
    }
}

void print_time()
{
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    printf("Date is: %d/%d/%d, Time is: %d:%d:%d \n", tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min, tm.tm_sec);
}
void calc_expr()
{
}

/*
The put command will create a new directory called dirname and copy the file (or
files) listed in the command, in this directory. If the directory exists you should only print
an error message, unless -f has been specified, in which case the directory will be
completely overwritten (old content is deleted). If a file(s) doesn’t exist, you will need to
print a ‘file not found’ message for that file.
*/

void put(char dirname[], char *files[])
{

    char cwd[PATH_MAX];
    char current[1024];
    if (getcwd(cwd, sizeof(cwd)) != NULL)
    {
        // printf("%s\n",cwd);
        strcpy(current, cwd);
    }
    mkdir(dirname, 0777);
    if (mkdir(dirname, 0777) == -1)
    {
        perror("");
        if (errno == EEXIST)
        {
            printf("Do something");
        }
    }
    printf("%s\n", current);
}

int copyfile1(char *infilename, char *outfileDir)
{
    FILE *infile; // File handles for source and destination.
    FILE *outfile;
    char outfilename[PATH_MAX];

    infile = fopen(infilename, "r"); // Open the input and output files.
    if (infile == NULL)
    {

        return 1;
    }
    sprintf(outfilename, "%s/%s", outfileDir, basename(infilename));

    outfile = fopen(outfilename, "w");
}

int main(int argc, char const *argv[])
{

    // //print_sys();
    // //get_file("test.txt");
    // //path();
    // //print_time();
    // int j = 0;
    // printf("%i",argc);
    // for(int i=0;i<argc;i++)
    // {
    //     printf("%s\n",argv[i]);
    // }
    // char* s[10];
    // put("sup", s);

    // copyfile1("test.txt","./sup");

    char *buffer;

    while (true)
    {
        size_t n = 1024;
        buffer = malloc(n);
        getline(&buffer, &n, stdin);
        int y = strcmp("quit\n","quit");
        printf("%i\n",y);
        
        if (strcmp(buffer, "quit\n") == 0) 
        {
            return 0;
        } 
        printf("%s", buffer);
        free(buffer);
    };

    return 0;
}
