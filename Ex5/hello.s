	.file	"hello.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	grade
	.data
	.type	grade, @object
	.size	grade, 1
grade:
	.byte	51
	.globl	Name
	.bss
	.align 16
	.type	Name, @object
	.size	Name, 30
Name:
	.zero	30
	.text
	.globl	readString
	.type	readString, @function
readString:
.LFB0:
	.file 1 "hello.c"
	.loc 1 11 26
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 1 13 8
	movl	$0, -4(%rbp)
.L3:
	.loc 1 17 11
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fgetc
	movl	%eax, -8(%rbp)
	.loc 1 18 10
	cmpl	$-1, -8(%rbp)
	je	.L2
	.loc 1 18 21 discriminator 1
	cmpl	$10, -8(%rbp)
	je	.L2
	.loc 1 20 12
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	.loc 1 20 16
	movl	-8(%rbp), %edx
	cltq
	movb	%dl, -48(%rbp,%rax)
	.loc 1 17 9
	jmp	.L3
.L2:
	.loc 1 22 11
	movl	-4(%rbp), %eax
	cltq
	movb	$0, -48(%rbp,%rax)
	.loc 1 24 11
	movl	$0, -4(%rbp)
	.loc 1 24 4
	jmp	.L4
.L5:
	.loc 1 25 8 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 25 17 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	.loc 1 25 12 discriminator 3
	movb	%al, (%rdx)
	.loc 1 24 25 discriminator 3
	addl	$1, -4(%rbp)
.L4:
	.loc 1 24 4 discriminator 1
	cmpl	$29, -4(%rbp)
	jle	.L5
	.loc 1 27 4
	nop
	.loc 1 28 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	readString, .-readString
	.section	.rodata
.LC0:
	.string	"What is your name?"
.LC1:
	.string	"Angelos Bilas"
.LC2:
	.string	"Thank you, %s.\n"
	.align 8
.LC3:
	.string	"I recommend that you get a grade of %c on this assignment.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 30 16
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 31 21
	movl	$Name, %eax
	.loc 1 31 40
	movl	%eax, %eax
	andl	$4294963200, %eax
	.loc 1 31 4
	movl	$7, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	mprotect
	.loc 1 34 4
	movl	$.LC0, %edi
	call	puts
	.loc 1 35 4
	movl	$Name, %edi
	call	readString
	.loc 1 37 8
	movl	$.LC1, %esi
	movl	$Name, %edi
	call	strcmp
	.loc 1 37 7
	testl	%eax, %eax
	jne	.L8
	.loc 1 38 13
	movb	$54, grade(%rip)
.L8:
	.loc 1 40 4
	movl	$Name, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 41 4
	movzbl	grade(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 44 4
	movl	$0, %edi
	call	exit
	.cfi_endproc
.LFE1:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/10/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x33b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF47
	.byte	0x1
	.long	.LASF48
	.long	.LASF49
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x1b
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x6c
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x6c
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF50
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x21f
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x8b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x8b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x8b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x8b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x8b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x8b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x8b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x8b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x8b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x8b
	.byte	0x50
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x8b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x238
	.byte	0x60
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x23e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x73
	.byte	0x78
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x244
	.byte	0x83
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x254
	.byte	0x88
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x7f
	.byte	0x90
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x25f
	.byte	0x98
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x26a
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x23e
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x270
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x98
	.uleb128 0x9
	.long	.LASF51
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xa
	.long	.LASF41
	.uleb128 0x6
	.byte	0x8
	.long	0x233
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0xb
	.long	0x91
	.long	0x254
	.uleb128 0xc
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b
	.uleb128 0xa
	.long	.LASF42
	.uleb128 0x6
	.byte	0x8
	.long	0x25a
	.uleb128 0xa
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x265
	.uleb128 0xb
	.long	0x91
	.long	0x280
	.uleb128 0xc
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x28c
	.uleb128 0x6
	.byte	0x8
	.long	0x21f
	.uleb128 0xe
	.long	.LASF45
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	grade
	.uleb128 0xb
	.long	0x91
	.long	0x2b8
	.uleb128 0xc
	.long	0x39
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.long	0x2a8
	.uleb128 0x9
	.byte	0x3
	.quad	Name
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.long	0x65
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF53
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0xb
	.byte	0x17
	.long	0x8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0xc
	.byte	0x9
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xd
	.byte	0x8
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xe
	.byte	0x8
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"_IO_buf_end"
.LASF27:
	.string	"_old_offset"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_offset"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF46:
	.string	"Name"
.LASF18:
	.string	"_IO_buf_base"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF36:
	.string	"_freeres_buf"
.LASF31:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF28:
	.string	"_cur_column"
.LASF47:
	.string	"GNU C89 10.2.1 20210110 -mtune=generic -march=x86-64 -g -ansi -fno-pie -fno-asynchronous-unwind-tables"
.LASF50:
	.string	"_IO_FILE"
.LASF2:
	.string	"unsigned char"
.LASF53:
	.string	"readString"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"_codecvt"
.LASF1:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF45:
	.string	"grade"
.LASF15:
	.string	"_IO_write_base"
.LASF39:
	.string	"_unused2"
.LASF12:
	.string	"_IO_read_ptr"
.LASF3:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF52:
	.string	"main"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF37:
	.string	"__pad5"
.LASF42:
	.string	"_IO_codecvt"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF24:
	.string	"_chain"
.LASF43:
	.string	"_IO_wide_data"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF49:
	.string	"/home/ugrads/class20/csd4813/HY255/assign6_2023/src"
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF25:
	.string	"_fileno"
.LASF40:
	.string	"FILE"
.LASF48:
	.string	"hello.c"
.LASF51:
	.string	"_IO_lock_t"
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
