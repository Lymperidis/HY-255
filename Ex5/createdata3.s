	.file	"createdata3.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "createdata3.c"
	.loc 1 5 11
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$20, %esp
	.loc 1 8 10
	movl	$0, -12(%ebp)
	.loc 1 8 5
	jmp	.L2
.L3:
	.loc 1 10 9 discriminator 3
	subl	$12, %esp
	pushl	$65
	call	putchar
	addl	$16, %esp
	.loc 1 8 19 discriminator 3
	addl	$1, -12(%ebp)
.L2:
	.loc 1 8 5 discriminator 1
	cmpl	$59, -12(%ebp)
	jle	.L3
	.loc 1 13 10
	movl	$0, -12(%ebp)
	.loc 1 13 5
	jmp	.L4
.L5:
	.loc 1 15 9 discriminator 3
	subl	$12, %esp
	pushl	$65
	call	putchar
	addl	$16, %esp
	.loc 1 13 18 discriminator 3
	addl	$1, -12(%ebp)
.L4:
	.loc 1 13 5 discriminator 1
	cmpl	$3, -12(%ebp)
	jle	.L5
	.loc 1 18 5
	subl	$12, %esp
	pushl	$5
	call	putchar
	addl	$16, %esp
	.loc 1 21 5
	subl	$12, %esp
	pushl	$0
	call	putchar
	addl	$16, %esp
	.loc 1 22 5
	subl	$12, %esp
	pushl	$0
	call	putchar
	addl	$16, %esp
	.loc 1 23 5
	subl	$12, %esp
	pushl	$0
	call	putchar
	addl	$16, %esp
	.loc 1 24 5
	subl	$12, %esp
	pushl	$0
	call	putchar
	addl	$16, %esp
	.loc 1 25 12
	movl	$0, %eax
	.loc 1 27 1
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x93
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF10
	.byte	0x1
	.long	.LASF11
	.long	.LASF12
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.long	0x56
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x6
	.byte	0x9
	.long	0x56
	.uleb128 0x2
	.byte	0x75
	.sleb128 -12
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
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"GNU C89 10.2.1 20210110 -mtune=generic -march=i686 -g -ansi -fno-pie -fno-asynchronous-unwind-tables"
.LASF12:
	.string	"/home/ugrads/class20/csd4813/HY255/assign6_2023/src"
.LASF4:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF11:
	.string	"createdata3.c"
.LASF2:
	.string	"unsigned char"
.LASF13:
	.string	"main"
.LASF9:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"signed char"
.LASF6:
	.string	"short int"
.LASF1:
	.string	"char"
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
