	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_my_gets                ## -- Begin function my_gets
	.p2align	4, 0x90
_my_gets:                               ## @my_gets
Lfunc_begin0:
	.file	1 "/Users/jamessanders/Desktop/2803ICT/A1" "main.c"
	.loc	1 29 0                  ## main.c:29:0
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
Ltmp0:
	.loc	1 32 24 prologue_end    ## main.c:32:24
	movq	-1104(%rbp), %rdi
	.loc	1 32 18 is_stmt 0       ## main.c:32:18
	leaq	L_.str(%rip), %rsi
	callq	_fopen
	.loc	1 32 11                 ## main.c:32:11
	movq	%rax, -1112(%rbp)
Ltmp1:
	.loc	1 34 14 is_stmt 1       ## main.c:34:14
	cmpq	$0, -1112(%rbp)
Ltmp2:
	.loc	1 34 9 is_stmt 0        ## main.c:34:9
	jne	LBB0_2
## %bb.1:
Ltmp3:
	.loc	1 36 9 is_stmt 1        ## main.c:36:9
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 37 9                  ## main.c:37:9
	movl	$-1, -1092(%rbp)
	jmp	LBB0_7
Ltmp4:
LBB0_2:
	.loc	1 39 5                  ## main.c:39:5
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0         ## main.c:0:5
	leaq	-64(%rbp), %rdi
Ltmp5:
	.loc	1 41 61 is_stmt 1       ## main.c:41:61
	movq	-1112(%rbp), %rcx
	.loc	1 41 29 is_stmt 0       ## main.c:41:29
	movl	$1, %esi
	movl	$40, %edx
	callq	_fread
	leaq	-64(%rbp), %rsi
	.loc	1 41 16                 ## main.c:41:16
	movq	%rax, -1128(%rbp)
	.loc	1 43 20 is_stmt 1       ## main.c:43:20
	movb	$0, -23(%rbp)
	.loc	1 44 9                  ## main.c:44:9
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
Ltmp6:
	.loc	1 45 23                 ## main.c:45:23
	cmpq	$40, -1128(%rbp)
Ltmp7:
	.loc	1 45 12 is_stmt 0       ## main.c:45:12
	je	LBB0_5
## %bb.4:
Ltmp8:
	.loc	1 46 13 is_stmt 1       ## main.c:46:13
	leaq	L_.str.2(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	movb	$0, %al
	callq	_printf
	.loc	1 47 13                 ## main.c:47:13
	jmp	LBB0_6
Ltmp9:
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0        ## main.c:0:13
	xorl	%esi, %esi
	leaq	-64(%rbp), %rdi
	.loc	1 52 9 is_stmt 1        ## main.c:52:9
	movl	$41, %edx
	callq	_memset
	.loc	1 54 9                  ## main.c:54:9
	leaq	L_.str.4(%rip), %rdi
	leaq	-1129(%rbp), %rsi
Ltmp10:
	##DEBUG_VALUE: c <- [$rsi+0]
	movb	$0, %al
	callq	_scanf
Ltmp11:
	.loc	1 39 5                  ## main.c:39:5
	jmp	LBB0_3
LBB0_6:
	.loc	1 58 12                 ## main.c:58:12
	movq	-1112(%rbp), %rdi
	.loc	1 58 5 is_stmt 0        ## main.c:58:5
	callq	_fclose
	.loc	1 59 5 is_stmt 1        ## main.c:59:5
	movl	$0, -1092(%rbp)
LBB0_7:
	.loc	1 60 1                  ## main.c:60:1
	movl	-1092(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -1136(%rbp)       ## 4-byte Spill
	jne	LBB0_9
## %bb.8:
	.loc	1 0 1 is_stmt 0         ## main.c:0:1
	movl	-1136(%rbp), %eax       ## 4-byte Reload
	.loc	1 60 1                  ## main.c:60:1
	addq	$1136, %rsp             ## imm = 0x470
	popq	%rbp
	retq
LBB0_9:
	.loc	1 0 0                   ## main.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp12:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.globl	_get_cpu                ## -- Begin function get_cpu
	.p2align	4, 0x90
_get_cpu:                               ## @get_cpu
Lfunc_begin1:
	.loc	1 62 0 is_stmt 1        ## main.c:62:0
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
Ltmp13:
	.loc	1 64 5 prologue_end     ## main.c:64:5
	leaq	-1288(%rbp), %rdi
Ltmp14:
	##DEBUG_VALUE: get_cpu:uts <- [$rdi+0]
	callq	_uname
Ltmp15:
	.loc	1 0 5 is_stmt 0         ## main.c:0:5
	leaq	-1288(%rbp), %rcx
	.loc	1 65 62 is_stmt 1       ## main.c:65:62
	movq	%rcx, %rdx
	addq	$1024, %rdx             ## imm = 0x400
	.loc	1 65 5 is_stmt 0        ## main.c:65:5
	leaq	L_.str.5(%rip), %rdi
	movq	%rcx, %rsi
	movl	%eax, -1292(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	.loc	1 66 38 is_stmt 1       ## main.c:66:38
	leaq	-1288(%rbp), %rcx
	addq	$512, %rcx              ## imm = 0x200
	.loc	1 66 5 is_stmt 0        ## main.c:66:5
	leaq	L_.str.6(%rip), %rdi
	movq	%rcx, %rsi
	movl	%eax, -1296(%rbp)       ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	.loc	1 67 35 is_stmt 1       ## main.c:67:35
	leaq	-1288(%rbp), %rcx
	addq	$768, %rcx              ## imm = 0x300
	.loc	1 67 5 is_stmt 0        ## main.c:67:5
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
	.loc	1 68 1 is_stmt 1        ## main.c:68:1
	addq	$1312, %rsp             ## imm = 0x520
	popq	%rbp
	retq
LBB1_2:
	.loc	1 0 0 is_stmt 0         ## main.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp16:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.globl	_print_sys              ## -- Begin function print_sys
	.p2align	4, 0x90
_print_sys:                             ## @print_sys
Lfunc_begin2:
	.loc	1 71 0 is_stmt 1        ## main.c:71:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
Ltmp17:
	.loc	1 73 5 prologue_end     ## main.c:73:5
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	.loc	1 86 5                  ## main.c:86:5
	callq	_get_cpu
	.loc	1 87 1                  ## main.c:87:1
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp18:
Lfunc_end2:
	.cfi_endproc
                                        ## -- End function
	.globl	_path                   ## -- Begin function path
	.p2align	4, 0x90
_path:                                  ## @path
Lfunc_begin3:
	.loc	1 89 0                  ## main.c:89:0
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
Ltmp19:
	##DEBUG_VALUE: path:cwd <- [$rdi+0]
	.loc	1 91 9 prologue_end     ## main.c:91:9
	movl	$1024, %esi             ## imm = 0x400
	callq	_getcwd
Ltmp20:
	.loc	1 91 34 is_stmt 0       ## main.c:91:34
	cmpq	$0, %rax
Ltmp21:
	.loc	1 91 9                  ## main.c:91:9
	je	LBB3_2
## %bb.1:
	.loc	1 0 9                   ## main.c:0:9
	leaq	-1040(%rbp), %rsi
Ltmp22:
	.loc	1 93 9 is_stmt 1        ## main.c:93:9
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 94 5                  ## main.c:94:5
	jmp	LBB3_3
Ltmp23:
LBB3_2:
	.loc	1 97 9                  ## main.c:97:9
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
Ltmp24:
LBB3_3:
	.loc	1 0 9 is_stmt 0         ## main.c:0:9
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB3_5
## %bb.4:
	.loc	1 99 1 is_stmt 1        ## main.c:99:1
	addq	$1040, %rsp             ## imm = 0x410
	popq	%rbp
	retq
LBB3_5:
	.loc	1 0 0 is_stmt 0         ## main.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp25:
Lfunc_end3:
	.cfi_endproc
                                        ## -- End function
	.globl	_print_time             ## -- Begin function print_time
	.p2align	4, 0x90
_print_time:                            ## @print_time
Lfunc_begin4:
	.loc	1 102 0 is_stmt 1       ## main.c:102:0
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
Ltmp26:
	.loc	1 103 16 prologue_end   ## main.c:103:16
	callq	_time
	.loc	1 103 12 is_stmt 0      ## main.c:103:12
	movq	%rax, -16(%rbp)
	.loc	1 104 21 is_stmt 1      ## main.c:104:21
	leaq	-16(%rbp), %rdi
	callq	_localtime
	.loc	1 104 20 is_stmt 0      ## main.c:104:20
	leaq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$56, %edx
	callq	_memcpy
	.loc	1 105 58 is_stmt 1      ## main.c:105:58
	movl	-52(%rbp), %r8d
	.loc	1 105 66 is_stmt 0      ## main.c:105:66
	addl	$1900, %r8d             ## imm = 0x76C
	.loc	1 105 77                ## main.c:105:77
	movl	-56(%rbp), %r9d
	.loc	1 105 84                ## main.c:105:84
	addl	$1, %r9d
	.loc	1 105 92                ## main.c:105:92
	movl	-60(%rbp), %ecx
	.loc	1 105 104               ## main.c:105:104
	movl	-64(%rbp), %r10d
	.loc	1 105 116               ## main.c:105:116
	movl	-68(%rbp), %r11d
	.loc	1 105 127               ## main.c:105:127
	movl	-72(%rbp), %ebx
	.loc	1 105 5                 ## main.c:105:5
	leaq	L_.str.11(%rip), %rdi
	movl	%r8d, %esi
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	%ebx, (%rsp)
	movb	$0, %al
	callq	_printf
	.loc	1 106 1 is_stmt 1       ## main.c:106:1
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
Ltmp27:
Lfunc_end4:
	.cfi_endproc
                                        ## -- End function
	.globl	_calc_expr              ## -- Begin function calc_expr
	.p2align	4, 0x90
_calc_expr:                             ## @calc_expr
Lfunc_begin5:
	.loc	1 108 0                 ## main.c:108:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp28:
	.loc	1 109 1 prologue_end    ## main.c:109:1
	popq	%rbp
	retq
Ltmp29:
Lfunc_end5:
	.cfi_endproc
                                        ## -- End function
	.globl	_put                    ## -- Begin function put
	.p2align	4, 0x90
_put:                                   ## @put
Lfunc_begin6:
	.loc	1 120 0                 ## main.c:120:0
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
Ltmp30:
	##DEBUG_VALUE: put:cwd <- [$rax+0]
	.loc	1 124 9 prologue_end    ## main.c:124:9
	movq	%rax, %rdi
	movl	$1024, %esi             ## imm = 0x400
	callq	_getcwd
Ltmp31:
	.loc	1 124 34 is_stmt 0      ## main.c:124:34
	cmpq	$0, %rax
Ltmp32:
	.loc	1 124 9                 ## main.c:124:9
	je	LBB6_2
## %bb.1:
	.loc	1 0 9                   ## main.c:0:9
	leaq	-1040(%rbp), %rsi
	leaq	-2064(%rbp), %rdi
Ltmp33:
	.loc	1 127 9 is_stmt 1       ## main.c:127:9
	movl	$1024, %edx             ## imm = 0x400
	callq	___strcpy_chk
Ltmp34:
LBB6_2:
	.loc	1 129 11                ## main.c:129:11
	movq	-2072(%rbp), %rdi
	.loc	1 129 5 is_stmt 0       ## main.c:129:5
	movl	$511, %esi              ## imm = 0x1FF
	callq	_mkdir
Ltmp35:
	.loc	1 130 15 is_stmt 1      ## main.c:130:15
	movq	-2072(%rbp), %rdi
	.loc	1 130 9 is_stmt 0       ## main.c:130:9
	movl	$511, %esi              ## imm = 0x1FF
	movl	%eax, -2084(%rbp)       ## 4-byte Spill
	callq	_mkdir
	.loc	1 130 30                ## main.c:130:30
	cmpl	$-1, %eax
Ltmp36:
	.loc	1 130 9                 ## main.c:130:9
	jne	LBB6_4
## %bb.3:
Ltmp37:
	.loc	1 132 9 is_stmt 1       ## main.c:132:9
	leaq	L_.str.12(%rip), %rdi
	callq	_perror
	.loc	1 133 9                 ## main.c:133:9
	jmp	LBB6_5
Ltmp38:
LBB6_4:
	.loc	1 0 9 is_stmt 0         ## main.c:0:9
	leaq	-2064(%rbp), %rsi
	.loc	1 136 5 is_stmt 1       ## main.c:136:5
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB6_5:
	.loc	1 0 5 is_stmt 0         ## main.c:0:5
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB6_7
## %bb.6:
	.loc	1 137 1 is_stmt 1       ## main.c:137:1
	addq	$2096, %rsp             ## imm = 0x830
	popq	%rbp
	retq
LBB6_7:
	.loc	1 0 0 is_stmt 0         ## main.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp39:
Lfunc_end6:
	.cfi_endproc
                                        ## -- End function
	.globl	_copy_file              ## -- Begin function copy_file
	.p2align	4, 0x90
_copy_file:                             ## @copy_file
Lfunc_begin7:
	.loc	1 140 0 is_stmt 1       ## main.c:140:0
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
Ltmp40:
	.loc	1 146 20 prologue_end   ## main.c:146:20
	movq	-1056(%rbp), %rdi
	.loc	1 146 14 is_stmt 0      ## main.c:146:14
	leaq	L_.str(%rip), %rsi
	callq	_fopen
	.loc	1 146 12                ## main.c:146:12
	movq	%rax, -1072(%rbp)
Ltmp41:
	.loc	1 147 16 is_stmt 1      ## main.c:147:16
	cmpq	$0, -1072(%rbp)
Ltmp42:
	.loc	1 147 9 is_stmt 0       ## main.c:147:9
	jne	LBB7_2
## %bb.1:
Ltmp43:
	.loc	1 150 9 is_stmt 1       ## main.c:150:9
	movl	$1, -1044(%rbp)
	jmp	LBB7_8
Ltmp44:
LBB7_2:
	.loc	1 0 9 is_stmt 0         ## main.c:0:9
	leaq	-1040(%rbp), %rdi
	.loc	1 152 5 is_stmt 1       ## main.c:152:5
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
	.loc	1 154 15                ## main.c:154:15
	leaq	L_.str.15(%rip), %rsi
	movl	%eax, -1108(%rbp)       ## 4-byte Spill
	callq	_fopen
	.loc	1 154 13 is_stmt 0      ## main.c:154:13
	movq	%rax, -1080(%rbp)
Ltmp45:
	.loc	1 155 16 is_stmt 1      ## main.c:155:16
	cmpq	$0, -1080(%rbp)
Ltmp46:
	.loc	1 155 8 is_stmt 0       ## main.c:155:8
	jne	LBB7_4
## %bb.3:
Ltmp47:
	.loc	1 157 9 is_stmt 1       ## main.c:157:9
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 158 9                 ## main.c:158:9
	movl	$-1, -1044(%rbp)
	jmp	LBB7_8
Ltmp48:
LBB7_4:
	.loc	1 160 15                ## main.c:160:15
	movq	-1072(%rbp), %rdi
	.loc	1 160 9 is_stmt 0       ## main.c:160:9
	callq	_fgetc
                                        ## kill: def $al killed $al killed $eax
	.loc	1 160 7                 ## main.c:160:7
	movb	%al, -1081(%rbp)
LBB7_5:                                 ## =>This Inner Loop Header: Depth=1
	.loc	1 161 12 is_stmt 1      ## main.c:161:12
	movsbl	-1081(%rbp), %eax
	.loc	1 161 14 is_stmt 0      ## main.c:161:14
	cmpl	$-1, %eax
	.loc	1 161 5                 ## main.c:161:5
	je	LBB7_7
## %bb.6:                               ##   in Loop: Header=BB7_5 Depth=1
Ltmp49:
	.loc	1 164 19 is_stmt 1      ## main.c:164:19
	movsbl	-1081(%rbp), %edi
	.loc	1 164 22 is_stmt 0      ## main.c:164:22
	movq	-1080(%rbp), %rsi
	.loc	1 164 13                ## main.c:164:13
	callq	_fputc
	.loc	1 165 23 is_stmt 1      ## main.c:165:23
	movq	-1072(%rbp), %rdi
	movl	%eax, -1112(%rbp)       ## 4-byte Spill
	.loc	1 165 17 is_stmt 0      ## main.c:165:17
	callq	_fgetc
                                        ## kill: def $al killed $al killed $eax
	.loc	1 165 15                ## main.c:165:15
	movb	%al, -1081(%rbp)
Ltmp50:
	.loc	1 161 5 is_stmt 1       ## main.c:161:5
	jmp	LBB7_5
LBB7_7:
	.loc	1 169 12                ## main.c:169:12
	movq	-1080(%rbp), %rdi
	.loc	1 169 5 is_stmt 0       ## main.c:169:5
	callq	_fclose
	.loc	1 170 12 is_stmt 1      ## main.c:170:12
	movq	-1072(%rbp), %rdi
	movl	%eax, -1116(%rbp)       ## 4-byte Spill
	.loc	1 170 5 is_stmt 0       ## main.c:170:5
	callq	_fclose
	.loc	1 171 5 is_stmt 1       ## main.c:171:5
	movl	$0, -1044(%rbp)
LBB7_8:
	.loc	1 173 1                 ## main.c:173:1
	movl	-1044(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -1120(%rbp)       ## 4-byte Spill
	jne	LBB7_10
## %bb.9:
	.loc	1 0 1 is_stmt 0         ## main.c:0:1
	movl	-1120(%rbp), %eax       ## 4-byte Reload
	.loc	1 173 1                 ## main.c:173:1
	addq	$1120, %rsp             ## imm = 0x460
	popq	%rbp
	retq
LBB7_10:
	.loc	1 0 0                   ## main.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp51:
Lfunc_end7:
	.cfi_endproc
                                        ## -- End function
	.globl	_shell                  ## -- Begin function shell
	.p2align	4, 0x90
_shell:                                 ## @shell
Lfunc_begin8:
	.loc	1 177 0 is_stmt 1       ## main.c:177:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
LBB8_1:                                 ## =>This Inner Loop Header: Depth=1
Ltmp52:
	.loc	1 179 16 prologue_end   ## main.c:179:16
	movq	$262144, -8(%rbp)       ## imm = 0x40000
	.loc	1 180 31                ## main.c:180:31
	movq	-8(%rbp), %rdi
	.loc	1 180 24 is_stmt 0      ## main.c:180:24
	callq	_malloc
	.loc	1 180 15                ## main.c:180:15
	movq	%rax, -16(%rbp)
	.loc	1 181 22 is_stmt 1      ## main.c:181:22
	movq	-16(%rbp), %rsi
	.loc	1 181 9 is_stmt 0       ## main.c:181:9
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stdinp@GOTPCREL(%rip), %rcx
	.loc	1 186 30 is_stmt 1      ## main.c:186:30
	movq	(%rcx), %rdx
	.loc	1 186 9 is_stmt 0       ## main.c:186:9
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	callq	_getline
Ltmp53:
	.loc	1 188 27 is_stmt 1      ## main.c:188:27
	movq	-16(%rbp), %rdi
	.loc	1 188 20 is_stmt 0      ## main.c:188:20
	movl	$10, %esi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_strchr
	.loc	1 188 18                ## main.c:188:18
	movq	%rax, -32(%rbp)
	.loc	1 188 42                ## main.c:188:42
	cmpq	$0, %rax
Ltmp54:
	.loc	1 188 13                ## main.c:188:13
	je	LBB8_3
## %bb.2:                               ##   in Loop: Header=BB8_1 Depth=1
Ltmp55:
	.loc	1 189 14 is_stmt 1      ## main.c:189:14
	movq	-32(%rbp), %rax
	.loc	1 189 18 is_stmt 0      ## main.c:189:18
	movb	$0, (%rax)
Ltmp56:
LBB8_3:                                 ##   in Loop: Header=BB8_1 Depth=1
	.loc	1 194 20 is_stmt 1      ## main.c:194:20
	movq	-16(%rbp), %rdi
	.loc	1 194 13 is_stmt 0      ## main.c:194:13
	leaq	L_.str.12(%rip), %rsi
	callq	_strcmp
	.loc	1 194 32                ## main.c:194:32
	cmpl	$0, %eax
Ltmp57:
	.loc	1 194 13                ## main.c:194:13
	jne	LBB8_5
## %bb.4:                               ##   in Loop: Header=BB8_1 Depth=1
Ltmp58:
	.loc	1 195 13 is_stmt 1      ## main.c:195:13
	jmp	LBB8_11
Ltmp59:
LBB8_5:                                 ##   in Loop: Header=BB8_1 Depth=1
	.loc	1 198 24                ## main.c:198:24
	movq	-16(%rbp), %rdi
	.loc	1 198 17 is_stmt 0      ## main.c:198:17
	leaq	L_.str.17(%rip), %rsi
	callq	_strtok
	.loc	1 198 15                ## main.c:198:15
	movq	%rax, -24(%rbp)
Ltmp60:
	.loc	1 207 20 is_stmt 1      ## main.c:207:20
	movq	-24(%rbp), %rdi
	.loc	1 207 13 is_stmt 0      ## main.c:207:13
	leaq	L_.str.18(%rip), %rsi
	callq	_strcmp
	.loc	1 207 35                ## main.c:207:35
	cmpl	$0, %eax
Ltmp61:
	.loc	1 207 13                ## main.c:207:13
	jne	LBB8_7
## %bb.6:
	.loc	1 0 13                  ## main.c:0:13
	xorl	%eax, %eax
Ltmp62:
	.loc	1 209 13 is_stmt 1      ## main.c:209:13
	addq	$64, %rsp
	popq	%rbp
	retq
Ltmp63:
LBB8_7:                                 ##   in Loop: Header=BB8_1 Depth=1
	.loc	1 211 25                ## main.c:211:25
	movq	-24(%rbp), %rdi
	.loc	1 211 18 is_stmt 0      ## main.c:211:18
	leaq	L_.str.19(%rip), %rsi
	callq	_strcmp
	.loc	1 211 39                ## main.c:211:39
	cmpl	$0, %eax
Ltmp64:
	.loc	1 211 17                ## main.c:211:17
	jne	LBB8_9
## %bb.8:                               ##   in Loop: Header=BB8_1 Depth=1
Ltmp65:
	.loc	1 213 13 is_stmt 1      ## main.c:213:13
	leaq	L_.str.20(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	.loc	1 214 23                ## main.c:214:23
	leaq	L_.str.17(%rip), %rsi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_strtok
	.loc	1 214 19 is_stmt 0      ## main.c:214:19
	movq	%rax, -40(%rbp)
	.loc	1 215 21 is_stmt 1      ## main.c:215:21
	movq	-40(%rbp), %rdi
	.loc	1 215 13 is_stmt 0      ## main.c:215:13
	callq	_my_gets
Ltmp66:
LBB8_9:                                 ##   in Loop: Header=BB8_1 Depth=1
	.loc	1 0 13                  ## main.c:0:13
	jmp	LBB8_10
LBB8_10:                                ##   in Loop: Header=BB8_1 Depth=1
	.loc	1 207 38 is_stmt 1      ## main.c:207:38
	jmp	LBB8_11
Ltmp67:
LBB8_11:                                ##   in Loop: Header=BB8_1 Depth=1
	##DEBUG_LABEL: cleanup
	.loc	1 221 14                ## main.c:221:14
	movq	-16(%rbp), %rdi
	.loc	1 221 9 is_stmt 0       ## main.c:221:9
	callq	_free
Ltmp68:
	.loc	1 178 5 is_stmt 1       ## main.c:178:5
	jmp	LBB8_1
Ltmp69:
Lfunc_end8:
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin9:
	.loc	1 226 0                 ## main.c:226:0
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
Ltmp70:
	.loc	1 243 5 prologue_end    ## main.c:243:5
	leaq	L_.str.21(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	.loc	1 245 5                 ## main.c:245:5
	callq	_shell
	xorl	%ecx, %ecx
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	.loc	1 246 5                 ## main.c:246:5
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
Ltmp71:
Lfunc_end9:
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

	.file	2 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include" "_stdio.h"
	.file	3 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386" "_types.h"
	.file	4 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys" "_types.h"
	.file	5 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types" "_size_t.h"
	.file	6 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys" "utsname.h"
	.file	7 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types" "_time_t.h"
	.file	8 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include" "time.h"
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 12.0.0 (clang-1200.0.32.21)" ## string offset=0
	.asciz	"main.c"                ## string offset=48
	.asciz	"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk" ## string offset=55
	.asciz	"MacOSX.sdk"            ## string offset=150
	.asciz	"/Users/jamessanders/Desktop/2803ICT/A1" ## string offset=161
	.asciz	"my_gets"               ## string offset=200
	.asciz	"get_cpu"               ## string offset=208
	.asciz	"print_sys"             ## string offset=216
	.asciz	"path"                  ## string offset=226
	.asciz	"print_time"            ## string offset=231
	.asciz	"calc_expr"             ## string offset=242
	.asciz	"put"                   ## string offset=252
	.asciz	"copy_file"             ## string offset=256
	.asciz	"shell"                 ## string offset=266
	.asciz	"main"                  ## string offset=272
	.asciz	"int"                   ## string offset=277
	.asciz	"file"                  ## string offset=281
	.asciz	"char"                  ## string offset=286
	.asciz	"source"                ## string offset=291
	.asciz	"__ARRAY_SIZE_TYPE__"   ## string offset=298
	.asciz	"fptr"                  ## string offset=318
	.asciz	"FILE"                  ## string offset=323
	.asciz	"__sFILE"               ## string offset=328
	.asciz	"_p"                    ## string offset=336
	.asciz	"unsigned char"         ## string offset=339
	.asciz	"_r"                    ## string offset=353
	.asciz	"_w"                    ## string offset=356
	.asciz	"_flags"                ## string offset=359
	.asciz	"short"                 ## string offset=366
	.asciz	"_file"                 ## string offset=372
	.asciz	"_bf"                   ## string offset=378
	.asciz	"__sbuf"                ## string offset=382
	.asciz	"_base"                 ## string offset=389
	.asciz	"_size"                 ## string offset=395
	.asciz	"_lbfsize"              ## string offset=401
	.asciz	"_cookie"               ## string offset=410
	.asciz	"_close"                ## string offset=418
	.asciz	"_read"                 ## string offset=425
	.asciz	"_seek"                 ## string offset=431
	.asciz	"fpos_t"                ## string offset=437
	.asciz	"__darwin_off_t"        ## string offset=444
	.asciz	"__int64_t"             ## string offset=459
	.asciz	"long long int"         ## string offset=469
	.asciz	"_write"                ## string offset=483
	.asciz	"_ub"                   ## string offset=490
	.asciz	"_extra"                ## string offset=494
	.asciz	"__sFILEX"              ## string offset=501
	.asciz	"_ur"                   ## string offset=510
	.asciz	"_ubuf"                 ## string offset=514
	.asciz	"_nbuf"                 ## string offset=520
	.asciz	"_lb"                   ## string offset=526
	.asciz	"_blksize"              ## string offset=530
	.asciz	"_offset"               ## string offset=539
	.asciz	"filename"              ## string offset=547
	.asciz	"c"                     ## string offset=556
	.asciz	"chars_read"            ## string offset=558
	.asciz	"size_t"                ## string offset=569
	.asciz	"__darwin_size_t"       ## string offset=576
	.asciz	"long unsigned int"     ## string offset=592
	.asciz	"uts"                   ## string offset=610
	.asciz	"utsname"               ## string offset=614
	.asciz	"sysname"               ## string offset=622
	.asciz	"nodename"              ## string offset=630
	.asciz	"release"               ## string offset=639
	.asciz	"version"               ## string offset=647
	.asciz	"machine"               ## string offset=655
	.asciz	"cwd"                   ## string offset=663
	.asciz	"t"                     ## string offset=667
	.asciz	"time_t"                ## string offset=669
	.asciz	"__darwin_time_t"       ## string offset=676
	.asciz	"long int"              ## string offset=692
	.asciz	"tm"                    ## string offset=701
	.asciz	"tm_sec"                ## string offset=704
	.asciz	"tm_min"                ## string offset=711
	.asciz	"tm_hour"               ## string offset=718
	.asciz	"tm_mday"               ## string offset=726
	.asciz	"tm_mon"                ## string offset=734
	.asciz	"tm_year"               ## string offset=741
	.asciz	"tm_wday"               ## string offset=749
	.asciz	"tm_yday"               ## string offset=757
	.asciz	"tm_isdst"              ## string offset=765
	.asciz	"tm_gmtoff"             ## string offset=774
	.asciz	"tm_zone"               ## string offset=784
	.asciz	"dirname"               ## string offset=792
	.asciz	"files"                 ## string offset=800
	.asciz	"current"               ## string offset=806
	.asciz	"infilename"            ## string offset=814
	.asciz	"outfileDir"            ## string offset=825
	.asciz	"infile"                ## string offset=836
	.asciz	"outfile"               ## string offset=843
	.asciz	"outfilename"           ## string offset=851
	.asciz	"n"                     ## string offset=863
	.asciz	"buffer"                ## string offset=865
	.asciz	"token"                 ## string offset=872
	.asciz	"pos"                   ## string offset=878
	.asciz	"s"                     ## string offset=882
	.asciz	"cleanup"               ## string offset=884
	.asciz	"argc"                  ## string offset=892
	.asciz	"argv"                  ## string offset=897
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.ascii	"\202|"                 ## DW_AT_LLVM_sysroot
	.byte	14                      ## DW_FORM_strp
	.ascii	"\357\177"              ## DW_AT_APPLE_sdk
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	23                      ## DW_FORM_sec_offset
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	0                       ## DW_CHILDREN_no
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	10                      ## DW_TAG_label
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	1                       ## DW_TAG_array_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	33                      ## DW_TAG_subrange_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	55                      ## DW_AT_count
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	16                      ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	17                      ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	18                      ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	19                      ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	20                      ## Abbreviation Code
	.byte	21                      ## DW_TAG_subroutine_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	21                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	22                      ## Abbreviation Code
	.byte	38                      ## DW_TAG_const_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	23                      ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	60                      ## DW_AT_declaration
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	24                      ## Abbreviation Code
	.byte	33                      ## DW_TAG_subrange_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	55                      ## DW_AT_count
	.byte	5                       ## DW_FORM_data2
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	25                      ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	5                       ## DW_FORM_data2
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	26                      ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	5                       ## DW_FORM_data2
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                       ## DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x631 DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	48                      ## DW_AT_name
	.long	55                      ## DW_AT_LLVM_sysroot
	.long	150                     ## DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset2
	.long	161                     ## DW_AT_comp_dir
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset3, Lfunc_end9-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset3
	.byte	2                       ## Abbrev [2] 0x32:0x1 DW_TAG_pointer_type
	.byte	3                       ## Abbrev [3] 0x33:0x90 DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset4
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	200                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	28                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	753                     ## DW_AT_type
                                        ## DW_AT_external
	.byte	4                       ## Abbrev [4] 0x4c:0xf DW_TAG_formal_parameter
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\260w"
	.long	281                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	28                      ## DW_AT_decl_line
	.long	760                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x5b:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	64
	.long	291                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.long	772                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x69:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\250w"
	.long	318                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	32                      ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x78:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\300w"
	.long	547                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.long	1286                    ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x87:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\247w"
	.long	556                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.long	765                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x96:0x2c DW_TAG_lexical_block
	.quad	Ltmp5                   ## DW_AT_low_pc
.set Lset5, Ltmp11-Ltmp5                ## DW_AT_high_pc
	.long	Lset5
	.byte	5                       ## Abbrev [5] 0xa3:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\230w"
	.long	558                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	41                      ## DW_AT_decl_line
	.long	1299                    ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0xb2:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\227w"
	.long	556                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	53                      ## DW_AT_decl_line
	.long	765                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	7                       ## Abbrev [7] 0xc3:0x25 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
.set Lset6, Lfunc_end1-Lfunc_begin1     ## DW_AT_high_pc
	.long	Lset6
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	208                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	61                      ## DW_AT_decl_line
                                        ## DW_AT_external
	.byte	5                       ## Abbrev [5] 0xd8:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\370u"
	.long	610                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	63                      ## DW_AT_decl_line
	.long	1328                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0xe8:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
.set Lset7, Lfunc_end2-Lfunc_begin2     ## DW_AT_high_pc
	.long	Lset7
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	216                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	70                      ## DW_AT_decl_line
                                        ## DW_AT_external
	.byte	7                       ## Abbrev [7] 0xfd:0x25 DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
.set Lset8, Lfunc_end3-Lfunc_begin3     ## DW_AT_high_pc
	.long	Lset8
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	226                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	88                      ## DW_AT_decl_line
                                        ## DW_AT_external
	.byte	5                       ## Abbrev [5] 0x112:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\360w"
	.long	663                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	90                      ## DW_AT_decl_line
	.long	1286                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	7                       ## Abbrev [7] 0x122:0x33 DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
.set Lset9, Lfunc_end4-Lfunc_begin4     ## DW_AT_high_pc
	.long	Lset9
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	231                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	101                     ## DW_AT_decl_line
                                        ## DW_AT_external
	.byte	5                       ## Abbrev [5] 0x137:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	667                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	103                     ## DW_AT_decl_line
	.long	1415                    ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x145:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	701                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	104                     ## DW_AT_decl_line
	.long	1444                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x155:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin5            ## DW_AT_low_pc
.set Lset10, Lfunc_end5-Lfunc_begin5    ## DW_AT_high_pc
	.long	Lset10
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	242                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	107                     ## DW_AT_decl_line
                                        ## DW_AT_external
	.byte	9                       ## Abbrev [9] 0x16a:0x52 DW_TAG_subprogram
	.quad	Lfunc_begin6            ## DW_AT_low_pc
.set Lset11, Lfunc_end6-Lfunc_begin6    ## DW_AT_high_pc
	.long	Lset11
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	252                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	119                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                       ## Abbrev [4] 0x17f:0xf DW_TAG_formal_parameter
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\350o"
	.long	792                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	119                     ## DW_AT_decl_line
	.long	760                     ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x18e:0xf DW_TAG_formal_parameter
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\340o"
	.long	800                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	119                     ## DW_AT_decl_line
	.long	1585                    ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x19d:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\360w"
	.long	663                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	122                     ## DW_AT_decl_line
	.long	1286                    ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x1ac:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\360o"
	.long	806                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	123                     ## DW_AT_decl_line
	.long	1286                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	3                       ## Abbrev [3] 0x1bc:0x74 DW_TAG_subprogram
	.quad	Lfunc_begin7            ## DW_AT_low_pc
.set Lset12, Lfunc_end7-Lfunc_begin7    ## DW_AT_high_pc
	.long	Lset12
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	256                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	139                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	753                     ## DW_AT_type
                                        ## DW_AT_external
	.byte	4                       ## Abbrev [4] 0x1d5:0xf DW_TAG_formal_parameter
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\340w"
	.long	814                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	139                     ## DW_AT_decl_line
	.long	760                     ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x1e4:0xf DW_TAG_formal_parameter
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\330w"
	.long	825                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	139                     ## DW_AT_decl_line
	.long	760                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x1f3:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\320w"
	.long	836                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	141                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x202:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\310w"
	.long	843                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	142                     ## DW_AT_decl_line
	.long	791                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x211:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\360w"
	.long	851                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	143                     ## DW_AT_decl_line
	.long	1286                    ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x220:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\307w"
	.long	556                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	144                     ## DW_AT_decl_line
	.long	765                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	10                      ## Abbrev [10] 0x230:0x8b DW_TAG_subprogram
	.quad	Lfunc_begin8            ## DW_AT_low_pc
.set Lset13, Lfunc_end8-Lfunc_begin8    ## DW_AT_high_pc
	.long	Lset13
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	266                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	176                     ## DW_AT_decl_line
	.long	753                     ## DW_AT_type
                                        ## DW_AT_external
	.byte	6                       ## Abbrev [6] 0x249:0x71 DW_TAG_lexical_block
	.quad	Ltmp52                  ## DW_AT_low_pc
.set Lset14, Ltmp68-Ltmp52              ## DW_AT_high_pc
	.long	Lset14
	.byte	5                       ## Abbrev [5] 0x256:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	863                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	179                     ## DW_AT_decl_line
	.long	1299                    ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x264:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	865                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	180                     ## DW_AT_decl_line
	.long	760                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x272:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.long	872                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	182                     ## DW_AT_decl_line
	.long	760                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x280:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	96
	.long	878                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	187                     ## DW_AT_decl_line
	.long	760                     ## DW_AT_type
	.byte	11                      ## Abbrev [11] 0x28e:0xf DW_TAG_label
	.long	884                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	220                     ## DW_AT_decl_line
	.quad	Ltmp67                  ## DW_AT_low_pc
	.byte	6                       ## Abbrev [6] 0x29d:0x1c DW_TAG_lexical_block
	.quad	Ltmp65                  ## DW_AT_low_pc
.set Lset15, Ltmp66-Ltmp65              ## DW_AT_high_pc
	.long	Lset15
	.byte	5                       ## Abbrev [5] 0x2aa:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	88
	.long	882                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	214                     ## DW_AT_decl_line
	.long	760                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	3                       ## Abbrev [3] 0x2bb:0x36 DW_TAG_subprogram
	.quad	Lfunc_begin9            ## DW_AT_low_pc
.set Lset16, Lfunc_end9-Lfunc_begin9    ## DW_AT_high_pc
	.long	Lset16
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	272                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	225                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	753                     ## DW_AT_type
                                        ## DW_AT_external
	.byte	4                       ## Abbrev [4] 0x2d4:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	892                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	225                     ## DW_AT_decl_line
	.long	753                     ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x2e2:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	897                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	225                     ## DW_AT_decl_line
	.long	1590                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	12                      ## Abbrev [12] 0x2f1:0x7 DW_TAG_base_type
	.long	277                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	13                      ## Abbrev [13] 0x2f8:0x5 DW_TAG_pointer_type
	.long	765                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0x2fd:0x7 DW_TAG_base_type
	.long	286                     ## DW_AT_name
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	14                      ## Abbrev [14] 0x304:0xc DW_TAG_array_type
	.long	765                     ## DW_AT_type
	.byte	15                      ## Abbrev [15] 0x309:0x6 DW_TAG_subrange_type
	.long	784                     ## DW_AT_type
	.byte	41                      ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x310:0x7 DW_TAG_base_type
	.long	298                     ## DW_AT_name
	.byte	8                       ## DW_AT_byte_size
	.byte	7                       ## DW_AT_encoding
	.byte	13                      ## Abbrev [13] 0x317:0x5 DW_TAG_pointer_type
	.long	796                     ## DW_AT_type
	.byte	17                      ## Abbrev [17] 0x31c:0xb DW_TAG_typedef
	.long	807                     ## DW_AT_type
	.long	323                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	157                     ## DW_AT_decl_line
	.byte	18                      ## Abbrev [18] 0x327:0xf9 DW_TAG_structure_type
	.long	328                     ## DW_AT_name
	.byte	152                     ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	126                     ## DW_AT_decl_line
	.byte	19                      ## Abbrev [19] 0x32f:0xc DW_TAG_member
	.long	336                     ## DW_AT_name
	.long	1056                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	127                     ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x33b:0xc DW_TAG_member
	.long	353                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	128                     ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x347:0xc DW_TAG_member
	.long	356                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	129                     ## DW_AT_decl_line
	.byte	12                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x353:0xc DW_TAG_member
	.long	359                     ## DW_AT_name
	.long	1068                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	130                     ## DW_AT_decl_line
	.byte	16                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x35f:0xc DW_TAG_member
	.long	372                     ## DW_AT_name
	.long	1068                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	131                     ## DW_AT_decl_line
	.byte	18                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x36b:0xc DW_TAG_member
	.long	378                     ## DW_AT_name
	.long	1075                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	132                     ## DW_AT_decl_line
	.byte	24                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x377:0xc DW_TAG_member
	.long	401                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	133                     ## DW_AT_decl_line
	.byte	40                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x383:0xc DW_TAG_member
	.long	410                     ## DW_AT_name
	.long	50                      ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	136                     ## DW_AT_decl_line
	.byte	48                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x38f:0xc DW_TAG_member
	.long	418                     ## DW_AT_name
	.long	1108                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	137                     ## DW_AT_decl_line
	.byte	56                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x39b:0xc DW_TAG_member
	.long	425                     ## DW_AT_name
	.long	1124                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	138                     ## DW_AT_decl_line
	.byte	64                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x3a7:0xc DW_TAG_member
	.long	431                     ## DW_AT_name
	.long	1150                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	139                     ## DW_AT_decl_line
	.byte	72                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x3b3:0xc DW_TAG_member
	.long	483                     ## DW_AT_name
	.long	1216                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	140                     ## DW_AT_decl_line
	.byte	80                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x3bf:0xc DW_TAG_member
	.long	490                     ## DW_AT_name
	.long	1075                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	143                     ## DW_AT_decl_line
	.byte	88                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x3cb:0xc DW_TAG_member
	.long	494                     ## DW_AT_name
	.long	1252                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	144                     ## DW_AT_decl_line
	.byte	104                     ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x3d7:0xc DW_TAG_member
	.long	510                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	145                     ## DW_AT_decl_line
	.byte	112                     ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x3e3:0xc DW_TAG_member
	.long	514                     ## DW_AT_name
	.long	1262                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	148                     ## DW_AT_decl_line
	.byte	116                     ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x3ef:0xc DW_TAG_member
	.long	520                     ## DW_AT_name
	.long	1274                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	149                     ## DW_AT_decl_line
	.byte	119                     ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x3fb:0xc DW_TAG_member
	.long	526                     ## DW_AT_name
	.long	1075                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	152                     ## DW_AT_decl_line
	.byte	120                     ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x407:0xc DW_TAG_member
	.long	530                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	155                     ## DW_AT_decl_line
	.byte	136                     ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x413:0xc DW_TAG_member
	.long	539                     ## DW_AT_name
	.long	1176                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	156                     ## DW_AT_decl_line
	.byte	144                     ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	13                      ## Abbrev [13] 0x420:0x5 DW_TAG_pointer_type
	.long	1061                    ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0x425:0x7 DW_TAG_base_type
	.long	339                     ## DW_AT_name
	.byte	8                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	12                      ## Abbrev [12] 0x42c:0x7 DW_TAG_base_type
	.long	366                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	2                       ## DW_AT_byte_size
	.byte	18                      ## Abbrev [18] 0x433:0x21 DW_TAG_structure_type
	.long	382                     ## DW_AT_name
	.byte	16                      ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.byte	92                      ## DW_AT_decl_line
	.byte	19                      ## Abbrev [19] 0x43b:0xc DW_TAG_member
	.long	389                     ## DW_AT_name
	.long	1056                    ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	93                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x447:0xc DW_TAG_member
	.long	395                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.byte	94                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	13                      ## Abbrev [13] 0x454:0x5 DW_TAG_pointer_type
	.long	1113                    ## DW_AT_type
	.byte	20                      ## Abbrev [20] 0x459:0xb DW_TAG_subroutine_type
	.long	753                     ## DW_AT_type
                                        ## DW_AT_prototyped
	.byte	21                      ## Abbrev [21] 0x45e:0x5 DW_TAG_formal_parameter
	.long	50                      ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	13                      ## Abbrev [13] 0x464:0x5 DW_TAG_pointer_type
	.long	1129                    ## DW_AT_type
	.byte	20                      ## Abbrev [20] 0x469:0x15 DW_TAG_subroutine_type
	.long	753                     ## DW_AT_type
                                        ## DW_AT_prototyped
	.byte	21                      ## Abbrev [21] 0x46e:0x5 DW_TAG_formal_parameter
	.long	50                      ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x473:0x5 DW_TAG_formal_parameter
	.long	760                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x478:0x5 DW_TAG_formal_parameter
	.long	753                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	13                      ## Abbrev [13] 0x47e:0x5 DW_TAG_pointer_type
	.long	1155                    ## DW_AT_type
	.byte	20                      ## Abbrev [20] 0x483:0x15 DW_TAG_subroutine_type
	.long	1176                    ## DW_AT_type
                                        ## DW_AT_prototyped
	.byte	21                      ## Abbrev [21] 0x488:0x5 DW_TAG_formal_parameter
	.long	50                      ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x48d:0x5 DW_TAG_formal_parameter
	.long	1176                    ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x492:0x5 DW_TAG_formal_parameter
	.long	753                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	17                      ## Abbrev [17] 0x498:0xb DW_TAG_typedef
	.long	1187                    ## DW_AT_type
	.long	437                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.byte	17                      ## Abbrev [17] 0x4a3:0xb DW_TAG_typedef
	.long	1198                    ## DW_AT_type
	.long	444                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	71                      ## DW_AT_decl_line
	.byte	17                      ## Abbrev [17] 0x4ae:0xb DW_TAG_typedef
	.long	1209                    ## DW_AT_type
	.long	459                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	46                      ## DW_AT_decl_line
	.byte	12                      ## Abbrev [12] 0x4b9:0x7 DW_TAG_base_type
	.long	469                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	13                      ## Abbrev [13] 0x4c0:0x5 DW_TAG_pointer_type
	.long	1221                    ## DW_AT_type
	.byte	20                      ## Abbrev [20] 0x4c5:0x15 DW_TAG_subroutine_type
	.long	753                     ## DW_AT_type
                                        ## DW_AT_prototyped
	.byte	21                      ## Abbrev [21] 0x4ca:0x5 DW_TAG_formal_parameter
	.long	50                      ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x4cf:0x5 DW_TAG_formal_parameter
	.long	1242                    ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x4d4:0x5 DW_TAG_formal_parameter
	.long	753                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	13                      ## Abbrev [13] 0x4da:0x5 DW_TAG_pointer_type
	.long	1247                    ## DW_AT_type
	.byte	22                      ## Abbrev [22] 0x4df:0x5 DW_TAG_const_type
	.long	765                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x4e4:0x5 DW_TAG_pointer_type
	.long	1257                    ## DW_AT_type
	.byte	23                      ## Abbrev [23] 0x4e9:0x5 DW_TAG_structure_type
	.long	501                     ## DW_AT_name
                                        ## DW_AT_declaration
	.byte	14                      ## Abbrev [14] 0x4ee:0xc DW_TAG_array_type
	.long	1061                    ## DW_AT_type
	.byte	15                      ## Abbrev [15] 0x4f3:0x6 DW_TAG_subrange_type
	.long	784                     ## DW_AT_type
	.byte	3                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x4fa:0xc DW_TAG_array_type
	.long	1061                    ## DW_AT_type
	.byte	15                      ## Abbrev [15] 0x4ff:0x6 DW_TAG_subrange_type
	.long	784                     ## DW_AT_type
	.byte	1                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x506:0xd DW_TAG_array_type
	.long	765                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x50b:0x7 DW_TAG_subrange_type
	.long	784                     ## DW_AT_type
	.short	1024                    ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	17                      ## Abbrev [17] 0x513:0xb DW_TAG_typedef
	.long	1310                    ## DW_AT_type
	.long	569                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.byte	17                      ## Abbrev [17] 0x51e:0xb DW_TAG_typedef
	.long	1321                    ## DW_AT_type
	.long	576                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	92                      ## DW_AT_decl_line
	.byte	12                      ## Abbrev [12] 0x529:0x7 DW_TAG_base_type
	.long	592                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	25                      ## Abbrev [25] 0x530:0x4a DW_TAG_structure_type
	.long	614                     ## DW_AT_name
	.short	1280                    ## DW_AT_byte_size
	.byte	6                       ## DW_AT_decl_file
	.byte	74                      ## DW_AT_decl_line
	.byte	19                      ## Abbrev [19] 0x539:0xc DW_TAG_member
	.long	622                     ## DW_AT_name
	.long	1402                    ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	75                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	26                      ## Abbrev [26] 0x545:0xd DW_TAG_member
	.long	630                     ## DW_AT_name
	.long	1402                    ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	76                      ## DW_AT_decl_line
	.short	256                     ## DW_AT_data_member_location
	.byte	26                      ## Abbrev [26] 0x552:0xd DW_TAG_member
	.long	639                     ## DW_AT_name
	.long	1402                    ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	77                      ## DW_AT_decl_line
	.short	512                     ## DW_AT_data_member_location
	.byte	26                      ## Abbrev [26] 0x55f:0xd DW_TAG_member
	.long	647                     ## DW_AT_name
	.long	1402                    ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	78                      ## DW_AT_decl_line
	.short	768                     ## DW_AT_data_member_location
	.byte	26                      ## Abbrev [26] 0x56c:0xd DW_TAG_member
	.long	655                     ## DW_AT_name
	.long	1402                    ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
	.short	1024                    ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x57a:0xd DW_TAG_array_type
	.long	765                     ## DW_AT_type
	.byte	24                      ## Abbrev [24] 0x57f:0x7 DW_TAG_subrange_type
	.long	784                     ## DW_AT_type
	.short	256                     ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	17                      ## Abbrev [17] 0x587:0xb DW_TAG_typedef
	.long	1426                    ## DW_AT_type
	.long	669                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.byte	17                      ## Abbrev [17] 0x592:0xb DW_TAG_typedef
	.long	1437                    ## DW_AT_type
	.long	676                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	120                     ## DW_AT_decl_line
	.byte	12                      ## Abbrev [12] 0x59d:0x7 DW_TAG_base_type
	.long	692                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	18                      ## Abbrev [18] 0x5a4:0x8d DW_TAG_structure_type
	.long	701                     ## DW_AT_name
	.byte	56                      ## DW_AT_byte_size
	.byte	8                       ## DW_AT_decl_file
	.byte	75                      ## DW_AT_decl_line
	.byte	19                      ## Abbrev [19] 0x5ac:0xc DW_TAG_member
	.long	704                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	76                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x5b8:0xc DW_TAG_member
	.long	711                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	77                      ## DW_AT_decl_line
	.byte	4                       ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x5c4:0xc DW_TAG_member
	.long	718                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	78                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x5d0:0xc DW_TAG_member
	.long	726                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
	.byte	12                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x5dc:0xc DW_TAG_member
	.long	734                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	80                      ## DW_AT_decl_line
	.byte	16                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x5e8:0xc DW_TAG_member
	.long	741                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.byte	20                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x5f4:0xc DW_TAG_member
	.long	749                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	82                      ## DW_AT_decl_line
	.byte	24                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x600:0xc DW_TAG_member
	.long	757                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	83                      ## DW_AT_decl_line
	.byte	28                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x60c:0xc DW_TAG_member
	.long	765                     ## DW_AT_name
	.long	753                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	84                      ## DW_AT_decl_line
	.byte	32                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x618:0xc DW_TAG_member
	.long	774                     ## DW_AT_name
	.long	1437                    ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
	.byte	40                      ## DW_AT_data_member_location
	.byte	19                      ## Abbrev [19] 0x624:0xc DW_TAG_member
	.long	784                     ## DW_AT_name
	.long	760                     ## DW_AT_type
	.byte	8                       ## DW_AT_decl_file
	.byte	86                      ## DW_AT_decl_line
	.byte	48                      ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	13                      ## Abbrev [13] 0x631:0x5 DW_TAG_pointer_type
	.long	760                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x636:0x5 DW_TAG_pointer_type
	.long	1242                    ## DW_AT_type
	.byte	0                       ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	10                      ## Header Bucket Count
	.long	10                      ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.long	0                       ## Bucket 1
	.long	1                       ## Bucket 2
	.long	3                       ## Bucket 3
	.long	4                       ## Bucket 4
	.long	-1                      ## Bucket 5
	.long	5                       ## Bucket 6
	.long	-1                      ## Bucket 7
	.long	7                       ## Bucket 8
	.long	9                       ## Bucket 9
	.long	-344129635              ## Hash in Bucket 1
	.long	193502942               ## Hash in Bucket 2
	.long	-372439744              ## Hash in Bucket 2
	.long	274384253               ## Hash in Bucket 3
	.long	2090608114              ## Hash in Bucket 4
	.long	2090499946              ## Hash in Bucket 6
	.long	-261096180              ## Hash in Bucket 6
	.long	-1182641328             ## Hash in Bucket 8
	.long	-358693258              ## Hash in Bucket 8
	.long	1030956959              ## Hash in Bucket 9
.set Lset17, LNames3-Lnames_begin       ## Offset in Bucket 1
	.long	Lset17
.set Lset18, LNames4-Lnames_begin       ## Offset in Bucket 2
	.long	Lset18
.set Lset19, LNames7-Lnames_begin       ## Offset in Bucket 2
	.long	Lset19
.set Lset20, LNames9-Lnames_begin       ## Offset in Bucket 3
	.long	Lset20
.set Lset21, LNames8-Lnames_begin       ## Offset in Bucket 4
	.long	Lset21
.set Lset22, LNames1-Lnames_begin       ## Offset in Bucket 6
	.long	Lset22
.set Lset23, LNames2-Lnames_begin       ## Offset in Bucket 6
	.long	Lset23
.set Lset24, LNames6-Lnames_begin       ## Offset in Bucket 8
	.long	Lset24
.set Lset25, LNames0-Lnames_begin       ## Offset in Bucket 8
	.long	Lset25
.set Lset26, LNames5-Lnames_begin       ## Offset in Bucket 9
	.long	Lset26
LNames3:
	.long	200                     ## my_gets
	.long	1                       ## Num DIEs
	.long	51
	.long	0
LNames4:
	.long	252                     ## put
	.long	1                       ## Num DIEs
	.long	362
	.long	0
LNames7:
	.long	231                     ## print_time
	.long	1                       ## Num DIEs
	.long	290
	.long	0
LNames9:
	.long	266                     ## shell
	.long	1                       ## Num DIEs
	.long	560
	.long	0
LNames8:
	.long	226                     ## path
	.long	1                       ## Num DIEs
	.long	253
	.long	0
LNames1:
	.long	272                     ## main
	.long	1                       ## Num DIEs
	.long	699
	.long	0
LNames2:
	.long	208                     ## get_cpu
	.long	1                       ## Num DIEs
	.long	195
	.long	0
LNames6:
	.long	216                     ## print_sys
	.long	1                       ## Num DIEs
	.long	232
	.long	0
LNames0:
	.long	242                     ## calc_expr
	.long	1                       ## Num DIEs
	.long	341
	.long	0
LNames5:
	.long	256                     ## copy_file
	.long	1                       ## Num DIEs
	.long	444
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	10                      ## Header Bucket Count
	.long	20                      ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	-1                      ## Bucket 0
	.long	0                       ## Bucket 1
	.long	3                       ## Bucket 2
	.long	-1                      ## Bucket 3
	.long	5                       ## Bucket 4
	.long	-1                      ## Bucket 5
	.long	6                       ## Bucket 6
	.long	8                       ## Bucket 7
	.long	12                      ## Bucket 8
	.long	15                      ## Bucket 9
	.long	505346631               ## Hash in Bucket 1
	.long	-594775205              ## Hash in Bucket 1
	.long	-328142765              ## Hash in Bucket 1
	.long	2055135702              ## Hash in Bucket 2
	.long	-34160304               ## Hash in Bucket 2
	.long	-104093792              ## Hash in Bucket 4
	.long	5863846                 ## Hash in Bucket 6
	.long	-1267332080             ## Hash in Bucket 6
	.long	1950644907              ## Hash in Bucket 7
	.long	-282664779              ## Hash in Bucket 7
	.long	-143589579              ## Hash in Bucket 7
	.long	-80380739               ## Hash in Bucket 7
	.long	193495088               ## Hash in Bucket 8
	.long	1225967938              ## Hash in Bucket 8
	.long	-1880351968             ## Hash in Bucket 8
	.long	274395349               ## Hash in Bucket 9
	.long	466678419               ## Hash in Bucket 9
	.long	2089071269              ## Hash in Bucket 9
	.long	2090147939              ## Hash in Bucket 9
	.long	-243996567              ## Hash in Bucket 9
.set Lset27, Ltypes2-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset27
.set Lset28, Ltypes13-Ltypes_begin      ## Offset in Bucket 1
	.long	Lset28
.set Lset29, Ltypes8-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset29
.set Lset30, Ltypes10-Ltypes_begin      ## Offset in Bucket 2
	.long	Lset30
.set Lset31, Ltypes5-Ltypes_begin       ## Offset in Bucket 2
	.long	Lset31
.set Lset32, Ltypes16-Ltypes_begin      ## Offset in Bucket 4
	.long	Lset32
.set Lset33, Ltypes1-Ltypes_begin       ## Offset in Bucket 6
	.long	Lset33
.set Lset34, Ltypes6-Ltypes_begin       ## Offset in Bucket 6
	.long	Lset34
.set Lset35, Ltypes4-Ltypes_begin       ## Offset in Bucket 7
	.long	Lset35
.set Lset36, Ltypes15-Ltypes_begin      ## Offset in Bucket 7
	.long	Lset36
.set Lset37, Ltypes11-Ltypes_begin      ## Offset in Bucket 7
	.long	Lset37
.set Lset38, Ltypes14-Ltypes_begin      ## Offset in Bucket 7
	.long	Lset38
.set Lset39, Ltypes12-Ltypes_begin      ## Offset in Bucket 8
	.long	Lset39
.set Lset40, Ltypes18-Ltypes_begin      ## Offset in Bucket 8
	.long	Lset40
.set Lset41, Ltypes17-Ltypes_begin      ## Offset in Bucket 8
	.long	Lset41
.set Lset42, Ltypes9-Ltypes_begin       ## Offset in Bucket 9
	.long	Lset42
.set Lset43, Ltypes7-Ltypes_begin       ## Offset in Bucket 9
	.long	Lset43
.set Lset44, Ltypes0-Ltypes_begin       ## Offset in Bucket 9
	.long	Lset44
.set Lset45, Ltypes19-Ltypes_begin      ## Offset in Bucket 9
	.long	Lset45
.set Lset46, Ltypes3-Ltypes_begin       ## Offset in Bucket 9
	.long	Lset46
Ltypes2:
	.long	669                     ## time_t
	.long	1                       ## Num DIEs
	.long	1415
	.short	22
	.byte	0
	.long	0
Ltypes13:
	.long	298                     ## __ARRAY_SIZE_TYPE__
	.long	1                       ## Num DIEs
	.long	784
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	382                     ## __sbuf
	.long	1                       ## Num DIEs
	.long	1075
	.short	19
	.byte	0
	.long	0
Ltypes10:
	.long	328                     ## __sFILE
	.long	1                       ## Num DIEs
	.long	807
	.short	19
	.byte	0
	.long	0
Ltypes5:
	.long	437                     ## fpos_t
	.long	1                       ## Num DIEs
	.long	1176
	.short	22
	.byte	0
	.long	0
Ltypes16:
	.long	339                     ## unsigned char
	.long	1                       ## Num DIEs
	.long	1061
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	701                     ## tm
	.long	1                       ## Num DIEs
	.long	1444
	.short	19
	.byte	0
	.long	0
Ltypes6:
	.long	469                     ## long long int
	.long	1                       ## Num DIEs
	.long	1209
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	459                     ## __int64_t
	.long	1                       ## Num DIEs
	.long	1198
	.short	22
	.byte	0
	.long	0
Ltypes15:
	.long	576                     ## __darwin_size_t
	.long	1                       ## Num DIEs
	.long	1310
	.short	22
	.byte	0
	.long	0
Ltypes11:
	.long	444                     ## __darwin_off_t
	.long	1                       ## Num DIEs
	.long	1187
	.short	22
	.byte	0
	.long	0
Ltypes14:
	.long	592                     ## long unsigned int
	.long	1                       ## Num DIEs
	.long	1321
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	277                     ## int
	.long	1                       ## Num DIEs
	.long	753
	.short	36
	.byte	0
	.long	0
Ltypes18:
	.long	614                     ## utsname
	.long	1                       ## Num DIEs
	.long	1328
	.short	19
	.byte	0
	.long	0
Ltypes17:
	.long	692                     ## long int
	.long	1                       ## Num DIEs
	.long	1437
	.short	36
	.byte	0
	.long	0
Ltypes9:
	.long	366                     ## short
	.long	1                       ## Num DIEs
	.long	1068
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	569                     ## size_t
	.long	1                       ## Num DIEs
	.long	1299
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	323                     ## FILE
	.long	1                       ## Num DIEs
	.long	796
	.short	22
	.byte	0
	.long	0
Ltypes19:
	.long	286                     ## char
	.long	1                       ## Num DIEs
	.long	765
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	676                     ## __darwin_time_t
	.long	1                       ## Num DIEs
	.long	1426
	.short	22
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
