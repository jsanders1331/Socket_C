.LC0:
        .string "r"
.LC1:
        .string "Error opening file"
.LC2:
        .string "%s"
.LC3:
        .string "%c"
my_gets:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 1120
        mov     QWORD PTR [rbp-1112], rdi
        mov     rax, QWORD PTR [rbp-1112]
        mov     esi, OFFSET FLAT:.LC0
        mov     rdi, rax
        call    fopen
        mov     QWORD PTR [rbp-8], rax
        cmp     QWORD PTR [rbp-8], 0
        jne     .L2
        mov     edi, OFFSET FLAT:.LC1
        call    puts
        mov     eax, -1
        jmp     .L5
.L2:
        mov     rdx, QWORD PTR [rbp-8]
        lea     rax, [rbp-64]
        mov     rcx, rdx
        mov     edx, 40
        mov     esi, 1
        mov     rdi, rax
        call    fread
        mov     QWORD PTR [rbp-16], rax
        mov     BYTE PTR [rbp-23], 0
        lea     rax, [rbp-64]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        cmp     QWORD PTR [rbp-16], 40
        je      .L4
        mov     edi, 10
        call    putchar
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    fclose
        mov     eax, 0
        jmp     .L5
.L4:
        lea     rax, [rbp-64]
        pxor    xmm0, xmm0
        movaps  XMMWORD PTR [rax], xmm0
        movaps  XMMWORD PTR [rax+16], xmm0
        movups  XMMWORD PTR [rax+25], xmm0
        lea     rax, [rbp-1089]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 0
        call    __isoc99_scanf
        jmp     .L2
.L5:
        leave
        ret
.LC4:
        .string "System is %s on %s hardware\n"
.LC5:
        .string "OS Release is %s\n"
.LC6:
        .string "OS Version is\n"
get_cpu:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 400
        lea     rax, [rbp-400]
        mov     rdi, rax
        call    uname
        lea     rax, [rbp-400]
        lea     rdx, [rax+260]
        lea     rax, [rbp-400]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 0
        call    printf
        lea     rax, [rbp-400]
        add     rax, 130
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    printf
        lea     rax, [rbp-400]
        add     rax, 195
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC6
        mov     eax, 0
        call    printf
        nop
        leave
        ret
.LC7:
        .string "This is a POSIX based operating system (Windows with cygwin)"
print_sys:
        push    rbp
        mov     rbp, rsp
        mov     edi, OFFSET FLAT:.LC7
        call    puts
        mov     eax, 0
        call    get_cpu
        nop
        pop     rbp
        ret
.LC8:
        .string "Dir: %s"
.LC9:
        .string "Error retrieving directory"
path:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 4096
        lea     rax, [rbp-4096]
        mov     esi, 4096
        mov     rdi, rax
        call    getcwd
        test    rax, rax
        je      .L9
        lea     rax, [rbp-4096]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC8
        mov     eax, 0
        call    printf
        jmp     .L11
.L9:
        mov     edi, OFFSET FLAT:.LC9
        mov     eax, 0
        call    printf
.L11:
        nop
        leave
        ret
.LC10:
        .string "Date is: %d/%d/%d, Time is: %d:%d:%d \n"
print_time:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 72
        mov     edi, 0
        call    time
        mov     QWORD PTR [rbp-24], rax
        lea     rax, [rbp-24]
        mov     rdi, rax
        call    localtime
        mov     rcx, QWORD PTR [rax]
        mov     rbx, QWORD PTR [rax+8]
        mov     QWORD PTR [rbp-80], rcx
        mov     QWORD PTR [rbp-72], rbx
        mov     rcx, QWORD PTR [rax+16]
        mov     rbx, QWORD PTR [rax+24]
        mov     QWORD PTR [rbp-64], rcx
        mov     QWORD PTR [rbp-56], rbx
        mov     rcx, QWORD PTR [rax+32]
        mov     rbx, QWORD PTR [rax+40]
        mov     QWORD PTR [rbp-48], rcx
        mov     QWORD PTR [rbp-40], rbx
        mov     rax, QWORD PTR [rax+48]
        mov     QWORD PTR [rbp-32], rax
        mov     ecx, DWORD PTR [rbp-80]
        mov     r8d, DWORD PTR [rbp-76]
        mov     edi, DWORD PTR [rbp-72]
        mov     eax, DWORD PTR [rbp-68]
        mov     edx, DWORD PTR [rbp-64]
        add     edx, 1
        mov     esi, DWORD PTR [rbp-60]
        add     esi, 1900
        sub     rsp, 8
        push    rcx
        mov     r9d, r8d
        mov     r8d, edi
        mov     ecx, eax
        mov     edi, OFFSET FLAT:.LC10
        mov     eax, 0
        call    printf
        add     rsp, 16
        nop
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
calc_expr:
        push    rbp
        mov     rbp, rsp
        nop
        pop     rbp
        ret
.LC11:
        .string ""
put:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 5136
        mov     QWORD PTR [rbp-5128], rdi
        mov     QWORD PTR [rbp-5136], rsi
        lea     rax, [rbp-4096]
        mov     esi, 4096
        mov     rdi, rax
        call    getcwd
        test    rax, rax
        je      .L15
        lea     rdx, [rbp-4096]
        lea     rax, [rbp-5120]
        mov     rsi, rdx
        mov     rdi, rax
        call    strcpy
.L15:
        mov     rax, QWORD PTR [rbp-5128]
        mov     esi, 511
        mov     rdi, rax
        call    mkdir
        mov     rax, QWORD PTR [rbp-5128]
        mov     esi, 511
        mov     rdi, rax
        call    mkdir
        cmp     eax, -1
        jne     .L16
        mov     edi, OFFSET FLAT:.LC11
        call    perror
        jmp     .L14
.L16:
        lea     rax, [rbp-5120]
        mov     rdi, rax
        call    puts
.L14:
        leave
        ret
.LC12:
        .string "%s/%s"
.LC13:
        .string "w"
.LC14:
        .string "Cannot open file"
copy_file:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 4144
        mov     QWORD PTR [rbp-4136], rdi
        mov     QWORD PTR [rbp-4144], rsi
        mov     rax, QWORD PTR [rbp-4136]
        mov     esi, OFFSET FLAT:.LC0
        mov     rdi, rax
        call    fopen
        mov     QWORD PTR [rbp-16], rax
        cmp     QWORD PTR [rbp-16], 0
        jne     .L19
        mov     eax, 1
        jmp     .L24
.L19:
        mov     rax, QWORD PTR [rbp-4136]
        mov     rdi, rax
        call    __xpg_basename
        mov     rcx, rax
        mov     rdx, QWORD PTR [rbp-4144]
        lea     rax, [rbp-4128]
        mov     esi, OFFSET FLAT:.LC12
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        lea     rax, [rbp-4128]
        mov     esi, OFFSET FLAT:.LC13
        mov     rdi, rax
        call    fopen
        mov     QWORD PTR [rbp-24], rax
        cmp     QWORD PTR [rbp-24], 0
        jne     .L21
        mov     edi, OFFSET FLAT:.LC14
        call    puts
        mov     eax, -1
        jmp     .L24
.L21:
        mov     rax, QWORD PTR [rbp-16]
        mov     rdi, rax
        call    fgetc
        mov     BYTE PTR [rbp-1], al
        jmp     .L22
.L23:
        movsx   eax, BYTE PTR [rbp-1]
        mov     rdx, QWORD PTR [rbp-24]
        mov     rsi, rdx
        mov     edi, eax
        call    fputc
        mov     rax, QWORD PTR [rbp-16]
        mov     rdi, rax
        call    fgetc
        mov     BYTE PTR [rbp-1], al
.L22:
        cmp     BYTE PTR [rbp-1], -1
        jne     .L23
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    fclose
        mov     rax, QWORD PTR [rbp-16]
        mov     rdi, rax
        call    fclose
        mov     eax, 0
.L24:
        leave
        ret
.LC15:
        .string " "
.LC16:
        .string "quit"
.LC17:
        .string "get"
.LC18:
        .string "In the get command"
shell:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
.L31:
        mov     QWORD PTR [rbp-32], 262144
        mov     rax, QWORD PTR [rbp-32]
        mov     rdi, rax
        call    malloc
        mov     QWORD PTR [rbp-40], rax
        mov     rax, QWORD PTR [rbp-40]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     rdx, QWORD PTR stdin[rip]
        lea     rcx, [rbp-32]
        lea     rax, [rbp-40]
        mov     rsi, rcx
        mov     rdi, rax
        call    getline
        mov     rax, QWORD PTR [rbp-40]
        mov     esi, 10
        mov     rdi, rax
        call    strchr
        mov     QWORD PTR [rbp-8], rax
        cmp     QWORD PTR [rbp-8], 0
        je      .L26
        mov     rax, QWORD PTR [rbp-8]
        mov     BYTE PTR [rax], 0
.L26:
        mov     rax, QWORD PTR [rbp-40]
        movzx   eax, BYTE PTR [rax]
        movzx   eax, al
        test    eax, eax
        je      .L33
        mov     rax, QWORD PTR [rbp-40]
        mov     esi, OFFSET FLAT:.LC15
        mov     rdi, rax
        call    strtok
        mov     QWORD PTR [rbp-16], rax
        mov     rax, QWORD PTR [rbp-16]
        mov     esi, OFFSET FLAT:.LC16
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        jne     .L29
        mov     eax, 0
        jmp     .L32
.L29:
        mov     rax, QWORD PTR [rbp-16]
        mov     esi, OFFSET FLAT:.LC17
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        jne     .L34
        mov     edi, OFFSET FLAT:.LC18
        mov     eax, 0
        call    printf
        mov     esi, OFFSET FLAT:.LC15
        mov     edi, 0
        call    strtok
        mov     QWORD PTR [rbp-24], rax
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    my_gets
        jmp     .L28
.L33:
        nop
        jmp     .L28
.L34:
        nop
.L28:
        mov     rax, QWORD PTR [rbp-40]
        mov     rdi, rax
        call    free
        jmp     .L31
.L32:
        leave
        ret
.LC19:
        .string "started"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     QWORD PTR [rbp-16], rsi
        mov     edi, OFFSET FLAT:.LC19
        mov     eax, 0
        call    printf
        mov     eax, 0
        call    shell
        mov     eax, 0
        leave
        ret