
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

// my files
#include "commands/gets.h"
#include "commands/path.h"
#include "commands/puts.h"
#include "commands/system.h"
#include "commands/time.h"

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
            *pos = '\0'; // find first occurence of \n in buffer and set it's value to the terminator
            //printf("changing pointer..");
        }
        
        if (*buffer == '\0') { // /0/0 if enter pressed we can skip code and stay in shell loop
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
        
        if (strcmp(token, "quit") == 0)  // Compare all the commands to input
        {
            return 0;
        }
        else if((strcmp(token, "time") == 0))
        {
            print_time();
        }
        else if((strcmp(token, "path") == 0))
        {
            path();
        }
        else if((strcmp(token, "sys") == 0))
        {
            print_sys();
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
            int n_filenames = 0;
            printf("This is my_dir: %s\n",my_dir);
            //char** c1 = (char *[]){"Hey","Hello"};
            char** filenames = calloc(1,1024);
            
            while ((s = strtok(NULL," ")) != NULL) // go through each token
            {
                if(strcmp(s,"-f") == 0)
                {
                    break;
                }
                filenames[n_filenames] = s; 
                n_filenames++;
                filenames = realloc(filenames, 1024*(n_filenames+1)); // debugger broken, only shows first element in pointer array
            }


            
            if(s == NULL) // if token is null ptr
            {
             for(int i=0;i<n_filenames;i++) // go through each filename
             {
                
                if(put(my_dir) == true){ // if we made the dir , copy files
                    copy_file(filenames[i],my_dir);
                }
                else{
                    printf("Could not create file. \n"); // directory exists
                    break;
                }
             }
             
            }
            else if(strcmp(s,"-f") == 0) // check -f is input
            {
                for(int i = 0;i<n_filenames;i++) //force the copy
                {
                    put(my_dir); 
                    copy_file(filenames[i],my_dir);
                }
            }


        }
        
        
        cleanup:
        free(buffer); // free the memory from buffer
    }
}


int main(int argc, char const *argv[])
{

    
    printf("Shell started\n");
    

    shell();
    return 0;
}
