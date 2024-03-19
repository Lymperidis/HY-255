	.file	"sum.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"The sum from 11 to %d is %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3:
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
	subl	$4, %esp
	movl	n, %eax
	movl	Sum, %edx
	cmpl	$100, %eax
	jle	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	addl	%eax, %edx
	subl	$1, %eax
	cmpl	$10, %eax
	jne	.L3
	movl	%edx, Sum
	movl	$10, n
.L2:
	subl	$4, %esp
	pushl	%edx
	pushl	$1000
	pushl	$.LC0
	call	printf
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	addl	$16, %esp
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc

.LFE3:
	.size	main, .-main
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	1000
	.globl	Sum
	.bss
	.align 4
	.type	Sum, @object
	.size	Sum, 4
Sum:
	.zero	4
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
