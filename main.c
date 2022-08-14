
#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <limits.h>
#include<sys/utsname.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <string.h>

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
int get_file(char* file)
{
    FILE *fptr;
    int max = 40;
    char filename[500],c;
    char* current_file = file;
    fptr = fopen(current_file, "r");
    if(fptr == NULL){
        printf("Error opening file\n");

        return 0;
    }
    
    c = fgetc(fptr);
    while( c != EOF )
    {
        printf("%c",c);
        c = fgetc(fptr);
    }
    fclose(fptr);
    return 0;
}
void get_cpu()
{
    struct utsname uts;
    uname(&uts);
    printf("System is %s on %s hardware\n",uts.sysname, uts.machine);
    printf("OS Release is %s\n",uts.release);
    printf("OS Version is\n",uts.version);
}


void print_sys() // prints version of OS and CPU type
{
    #if __APPLE__
	    printf("This is a MAC_OS operating system\n");
	#elif _WIN32
	    // windows specific code
	#elif __LINUX__
	    // linux specific code  
    #endif 

    get_cpu();
}
void path() // prints current path of working directory
{
    char cwd[PATH_MAX];
    if(getcwd(cwd, sizeof(cwd)) != NULL){
        printf("Dir: %s",cwd);
    }
    else {
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

int main(int argc, char const *argv[])
{
    print_sys();
    get_file("test.txt");
    //path();
    //print_time();
    return 0;
}

