
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
 comes after the command. -- NOPE
• time - prints out the current local time and date -- DONE
• path - prints out the current working directory -- DONE
• sys - prints the name and version of the OS and CPU type -- DONE ?
• put dirname filename(s) [-f] – put files filenames in the directory dirname 
• get filename - prints the content of the file filename to the screen -- DONE
• quit - ends the program -- DONE
*/
int my_gets(char *file)
{
    
    char source[41]; // buffer 
    FILE *fptr = fopen(file, "r");
    char filename[1024], c; 
    if (fptr == NULL)
    {
        printf("Error opening file\n");
        return -1; //false
    }
    while(true){

        size_t chars_read = fread(source, sizeof(char), 40, fptr); // Read each 
        // if less than 40, reached end of file
        source[41] = '\0';
        printf("%s",source);
        if(chars_read != 40){
            printf("%s", "\n");
            break;
        }
        // for(int i = 0; i <40; i++){
        //     source[i]
        // }
        bzero(source,41);
        char c;
        scanf("%c",&c);
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

void put(char dirname[])
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
        return;
    }
    

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
    c = fgetc(infile);
    while (c != EOF)
        {
            
            fputc(c, outfile);
            c = fgetc(infile);
        }

    
    fclose(outfile);
    fclose(infile);
    return 0;

}


int shell() // Take inputs and run commands, return output
{
    while(true) {
        size_t n = 262144; // getconf ARG_MAX -> maximum argument size
        char* buffer = malloc(n); 
        //printf("%s", buffer);
        char *token; // for buffer strings
        //char s = ' '; // delimiter


        getline(&buffer, &n, stdin); 
        char *pos;
        if ((pos = strchr(buffer, '\n')) != NULL){ // code if enter is pressed
            *pos = '\0';
        }
        // char my_string[PATH_MAX]; 
        // strcpy(my_string, buffer);
        // char* my_string_ptr = my_string;
        if (*buffer == '\0') { // /0/0
            goto cleanup;
        }

        token = strtok(buffer, " ");
    
        //printf("%s", token);
        // while (token != NULL)
        //     {
        //         printf("%s\n", token);
        //         printf("token works\n");
        //         token = strtok(NULL," ");
        //     }
        
        if (strcmp(token, "quit") == 0)  // Make sure to /n
        {
            return 0;
        }
        else if((strcmp(token, "get") == 0))
        {
            printf("In the get command");
            char* s = strtok(NULL," ");
            my_gets(s);
        }
        else if((strcmp(token, "put") == 0)){
            char* s = strtok(NULL," "); // token
            
            char my_dir[strlen(s)+1]; // dirname input
            strcpy(my_dir,s);
            put(my_dir);
            int n_filenames = 0;
            printf("This is my_dir: %s\n",my_dir);
            //char** c1 = (char *[]){"Hey","Hello"};
            char** filenames = calloc(1,1024);
            
            while ((s = strtok(NULL," ")) != NULL) 
            {
                if(strcmp(s,"-f") == 0)
                {
                    break;
                }
                filenames[n_filenames] = s; 
                n_filenames++;
                filenames = realloc(filenames, 1024*(n_filenames+1)); // debugger broken, only shows first element in pointer array
                // printf("%s\n",s);
                // printf("%s",filenames[n_filenames]);
            }

            if(strcmp(s,"-f") == 0)
            {
                
            }

            else
            {
                for(int i=0;i<n_filenames;i++)
                {
                    copy_file(filenames[i],my_dir);
                }
            }

            // for(int i=0;i<n_filenames;i++)
            // {
            //     printf("n of filename: %i / value: %s\n",i, filenames[i]);
            // }

            // //     printf("%s\n",argv[i]);
            // // }
            // char* s[10];
            // put("sup", s);

            // copy_file("test.txt","./sup");
            // //my_gets("test.txt");
                    
            
            
        }
        
        
        cleanup:
        free(buffer);
    }
}

int main(int argc, char const *argv[])
{

    // // //print_sys();
    // // //get_file("test.txt");
    // // //path();
    // // //print_time();
    // // int j = 0;
    // // printf("%i",argc);
    // // for(int i=0;i<argc;i++)
    // // {
    
    printf("Shell started\n");
    

    shell();
    return 0;
}
