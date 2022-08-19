	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_my_gets                ## -- Begin function my_gets
	.p2align	4, 0x90
_my_gets:                               ## @my_gets
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1136, %rsp             ## imm = 0x470
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1104(%rbp)
	movq	-1104(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_fopen
	movq	%rax, -1112(%rbp)
	cmpq	$0, -1112(%rbp)
	jne	LBB0_2
## %bb.1:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$-1, -1092(%rbp)
	jmp	LBB0_7
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	leaq	-64(%rbp), %rdi
	movq	-1112(%rbp), %rcx
	movl	$1, %esi
	movl	$40, %edx
	callq	_fread
	leaq	-64(%rbp), %rsi
	movq	%rax, -1128(%rbp)
	movb	$0, -23(%rbp)
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	cmpq	$40, -1128(%rbp)
	je	LBB0_5
## %bb.4:
	leaq	L_.str.2(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	movb	$0, %al
	callq	_printf
	jmp	LBB0_6
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	xorl	%esi, %esi
	leaq	-64(%rbp), %rdi
	movl	$41, %edx
	callq	_memset
	leaq	L_.str.4(%rip), %rdi
	leaq	-1129(%rbp), %rsi
	movb	$0, %al
	callq	_scanf
	jmp	LBB0_3
LBB0_6:
	movq	-1112(%rbp), %rdi
	callq	_fclose
	movl	$0, -1092(%rbp)
LBB0_7:
	movl	-1092(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -1136(%rbp)       ## 4-byte Spill
	jne	LBB0_9
## %bb.8:
	movl	-1136(%rbp), %eax       ## 4-byte Reload
	addq	$1136, %rsp             ## imm = 0x470
	popq	%rbp
	retq
LBB0_9:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_get_cpu                ## -- Begin function get_cpu
	.p2align	4, 0x90
_get_cpu:                               ## @get_cpu
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1312, %rsp             ## imm = 0x520
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-1288(%rbp), %rdi
	callq	_uname
	leaq	-1288(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1024, %rdx             ## imm = 0x400
	leaq	L_.str.5(%rip), %rdi
	movq	%rcx, %rsi
	movl	%eax, -1292(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-1288(%rbp), %rcx
	addq	$512, %rcx              ## imm = 0x200
	leaq	L_.str.6(%rip), %rdi
	movq	%rcx, %rsi
	movl	%eax, -1296(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-1288(%rbp), %rcx
	addq	$768, %rcx              ## imm = 0x300
	leaq	L_.str.7(%rip), %rdi
	movq	%rcx, %rsi
	movl	%eax, -1300(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB1_2
## %bb.1:
	addq	$1312, %rsp             ## imm = 0x520
	popq	%rbp
	retq
LBB1_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_print_sys              ## -- Begin function print_sys
	.p2align	4, 0x90
_print_sys:                             ## @print_sys
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	callq	_get_cpu
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_path                   ## -- Begin function path
	.p2align	4, 0x90
_path:                                  ## @path
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1040, %rsp             ## imm = 0x410
	leaq	-1040(%rbp), %rdi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$1024, %esi             ## imm = 0x400
	callq	_getcwd
	cmpq	$0, %rax
	je	LBB3_2
## %bb.1:
	leaq	-1040(%rbp), %rsi
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	jmp	LBB3_3
LBB3_2:
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB3_3:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB3_5
## %bb.4:
	addq	$1040, %rsp             ## imm = 0x410
	popq	%rbp
	retq
LBB3_5:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_print_time             ## -- Begin function print_time
	.p2align	4, 0x90
_print_time:                            ## @print_time
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_time
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_localtime
	leaq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$56, %edx
	callq	_memcpy
	movl	-52(%rbp), %r8d
	addl	$1900, %r8d             ## imm = 0x76C
	movl	-56(%rbp), %r9d
	addl	$1, %r9d
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r10d
	movl	-68(%rbp), %r11d
	movl	-72(%rbp), %ebx
	leaq	L_.str.11(%rip), %rdi
	movl	%r8d, %esi
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	%ebx, (%rsp)
	movb	$0, %al
	callq	_printf
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_calc_expr              ## -- Begin function calc_expr
	.p2align	4, 0x90
_calc_expr:                             ## @calc_expr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_put                    ## -- Begin function put
	.p2align	4, 0x90
_put:                                   ## @put
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2096, %rsp             ## imm = 0x830
	leaq	-1040(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -2072(%rbp)
	movq	%rsi, -2080(%rbp)
	movq	%rax, %rdi
	movl	$1024, %esi             ## imm = 0x400
	callq	_getcwd
	cmpq	$0, %rax
	je	LBB6_2
## %bb.1:
	leaq	-1040(%rbp), %rsi
	leaq	-2064(%rbp), %rdi
	movl	$1024, %edx             ## imm = 0x400
	callq	___strcpy_chk
LBB6_2:
	movq	-2072(%rbp), %rdi
	movl	$511, %esi              ## imm = 0x1FF
	callq	_mkdir
	movq	-2072(%rbp), %rdi
	movl	$511, %esi              ## imm = 0x1FF
	movl	%eax, -2084(%rbp)       ## 4-byte Spill
	callq	_mkdir
	cmpl	$-1, %eax
	jne	LBB6_4
## %bb.3:
	leaq	L_.str.12(%rip), %rdi
	callq	_perror
	jmp	LBB6_5
LBB6_4:
	leaq	-2064(%rbp), %rsi
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB6_5:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB6_7
## %bb.6:
	addq	$2096, %rsp             ## imm = 0x830
	popq	%rbp
	retq
LBB6_7:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_copy_file              ## -- Begin function copy_file
	.p2align	4, 0x90
_copy_file:                             ## @copy_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1120, %rsp             ## imm = 0x460
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1056(%rbp)
	movq	%rsi, -1064(%rbp)
	movq	-1056(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_fopen
	movq	%rax, -1072(%rbp)
	cmpq	$0, -1072(%rbp)
	jne	LBB7_2
## %bb.1:
	movl	$1, -1044(%rbp)
	jmp	LBB7_8
LBB7_2:
	leaq	-1040(%rbp), %rdi
	movq	-1064(%rbp), %r8
	movq	-1056(%rbp), %rax
	movq	%rdi, -1096(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -1104(%rbp)        ## 8-byte Spill
	callq	_basename
	xorl	%esi, %esi
	movq	-1096(%rbp), %rdi       ## 8-byte Reload
	movl	$1024, %edx             ## imm = 0x400
	leaq	L_.str.14(%rip), %rcx
	movq	-1104(%rbp), %r8        ## 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	___sprintf_chk
	leaq	-1040(%rbp), %rdi
	leaq	L_.str.15(%rip), %rsi
	movl	%eax, -1108(%rbp)       ## 4-byte Spill
	callq	_fopen
	movq	%rax, -1080(%rbp)
	cmpq	$0, -1080(%rbp)
	jne	LBB7_4
## %bb.3:
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$-1, -1044(%rbp)
	jmp	LBB7_8
LBB7_4:
	movq	-1072(%rbp), %rdi
	callq	_fgetc
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -1081(%rbp)
LBB7_5:                                 ## =>This Inner Loop Header: Depth=1
	movsbl	-1081(%rbp), %eax
	cmpl	$-1, %eax
	je	LBB7_7
## %bb.6:                               ##   in Loop: Header=BB7_5 Depth=1
	movsbl	-1081(%rbp), %edi
	movq	-1080(%rbp), %rsi
	callq	_fputc
	movq	-1072(%rbp), %rdi
	movl	%eax, -1112(%rbp)       ## 4-byte Spill
	callq	_fgetc
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -1081(%rbp)
	jmp	LBB7_5
LBB7_7:
	movq	-1080(%rbp), %rdi
	callq	_fclose
	movq	-1072(%rbp), %rdi
	movl	%eax, -1116(%rbp)       ## 4-byte Spill
	callq	_fclose
	movl	$0, -1044(%rbp)
LBB7_8:
	movl	-1044(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -1120(%rbp)       ## 4-byte Spill
	jne	LBB7_10
## %bb.9:
	movl	-1120(%rbp), %eax       ## 4-byte Reload
	addq	$1120, %rsp             ## imm = 0x460
	popq	%rbp
	retq
LBB7_10:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_shell                  ## -- Begin function shell
	.p2align	4, 0x90
_shell:                                 ## @shell
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
LBB8_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	$262144, -8(%rbp)       ## imm = 0x40000
	movq	-8(%rbp), %rdi
	callq	_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stdinp@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	callq	_getline
	movq	-16(%rbp), %rdi
	movl	$10, %esi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	LBB8_3
## %bb.2:                               ##   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
LBB8_3:                                 ##   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rdi
	leaq	L_.str.12(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB8_5
## %bb.4:                               ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_11
LBB8_5:                                 ##   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rdi
	leaq	L_.str.17(%rip), %rsi
	callq	_strtok
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	L_.str.18(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB8_7
## %bb.6:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB8_7:                                 ##   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	L_.str.19(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB8_9
## %bb.8:                               ##   in Loop: Header=BB8_1 Depth=1
	leaq	L_.str.20(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	L_.str.17(%rip), %rsi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_strtok
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	_my_gets
LBB8_9:                                 ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_10
LBB8_10:                                ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_11
LBB8_11:                                ##   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	_free
	jmp	LBB8_1
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	L_.str.21(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	callq	_shell
	xorl	%ecx, %ecx
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"r"

L_.str.1:                               ## @.str.1
	.asciz	"Error opening file\n"

L_.str.2:                               ## @.str.2
	.asciz	"%s"

L_.str.3:                               ## @.str.3
	.asciz	"\n"

L_.str.4:                               ## @.str.4
	.asciz	"%c"

L_.str.5:                               ## @.str.5
	.asciz	"System is %s on %s hardware\n"

L_.str.6:                               ## @.str.6
	.asciz	"OS Release is %s\n"

L_.str.7:                               ## @.str.7
	.asciz	"OS Version is\n"

L_.str.8:                               ## @.str.8
	.asciz	"This is a MAC_OS operating system\n"

L_.str.9:                               ## @.str.9
	.asciz	"Dir: %s"

L_.str.10:                              ## @.str.10
	.asciz	"Error retrieving directory"

L_.str.11:                              ## @.str.11
	.asciz	"Date is: %d/%d/%d, Time is: %d:%d:%d \n"

L_.str.12:                              ## @.str.12
	.space	1

L_.str.13:                              ## @.str.13
	.asciz	"%s\n"

L_.str.14:                              ## @.str.14
	.asciz	"%s/%s"

L_.str.15:                              ## @.str.15
	.asciz	"w"

L_.str.16:                              ## @.str.16
	.asciz	"Cannot open file\n"

L_.str.17:                              ## @.str.17
	.asciz	" "

L_.str.18:                              ## @.str.18
	.asciz	"quit"

L_.str.19:                              ## @.str.19
	.asciz	"get"

L_.str.20:                              ## @.str.20
	.asciz	"In the get command"

L_.str.21:                              ## @.str.21
	.asciz	"started"

.subsections_via_symbols
