# -----------------------------------
# Program x86asm.s
# Compute and print the sum 0+...+N
# -----------------------------------


	.section .data	# This defines the section of the data 
	.equ N, 1000	# Substitute the char  N with the value  1000
	S:	.long 0		# generate a long integer.This long is 0  
Msg:	.ascii "The sum from 11 to %d is %d\n\0"


	.section .text	# The defines the start of the text 
.globl main
main:	
	pushl %ebp	#pushes the ebp at the top of the stack 
	movl %esp, %ebp	# make ebp to look at the same value as esp 

 	# initialize
        movl $N, %ebx	#make ebx to look at the N 

 	# compute sum
L1:
	addl %ebx, S	# 	store at the S register the addition of ebx + S
	decl %ebx       #  decrement ebx by -1 value
	cmpl $10, %ebx  # 	compare the 2 values 
	jle  L2		# if 10 is equal or less than the value of ebx then go to L2 label 
        movl $L1, %eax	# Move the eax to L1 
        jmp *%eax	# jump at the address of of eax 

L2:
	# print result
	pushl S		# push long integer S at the top of the stack 
	pushl $N	# push the value of N at the top of the stack 
	pushl $Msg	# push the message of Msg at the top of the stack 
	call printf	# pseudo code for printing the msg 
	popl %eax	# pop the top of the stack and store it to the register of eax 
	popl %eax	# pop the top of the stack and store it to the register of eax
	popl %eax	# pop the top of the stack and store it to the register of eax 

	# exit
	movl $0, %eax  	# make eax value 0 
        leave		# copy frame pointer to the stack pointer adn release the stack space
 	ret		#removes any arguments pushed onto the stack of the exiting procedure 
