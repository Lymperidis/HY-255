# -----------------------------------
# Program x86asm.s
# Compute and print the sum 0+...+N
# -----------------------------------

	.section .data	#This definesthe start of the  section of the data that will be used  
N:	.long 1000	    #generates a long integer for each expression into the current section. This long is the number 1000
S:	.long 0		    # generates a long integer . This long is 0
Msg:	.ascii "The sum from 0 to %d is %d\n\0"


	.section .text	#This is where the text section starts 
.globl main
main:	
	pushl %ebp	    # pushes the long integer on top of the stack 
	movl %esp, %ebp	# make %ebp the same value as the %esp

 	# initialize
    movl N, %ebx	#cache value of N in register %ebx

 	# compute sum
L1:
	addl %ebx, S	#add the %ebx register in S 
	decl %ebx       # decreases %ebc register by 1 
	cmpl $0, %ebx   # compares 0 to the value of %ebx 
	jng  L2	    	# jump short if not greater to L2 
    movl $L1, %eax	# the value of L1 put it in the register %eax
    jmp *%eax   	# jump at the address of eax 

L2:
	# print result
	pushl S	    	# pushing the value of S at the top of the stack 
	pushl N	        # push the value of N at the top of the stack 
	pushl $Msg  	#  pushing the message of the Msg at the top of the stack 
	call printf 	# pseudo code for printing the Msg 
	popl %eax   	# restoring whatever is in top of the stack into a register 
	popl %eax       # // 
	popl %eax   	# // 

	# exit
	movl $0, %eax  	# make eax have 0 value 
    leave	    	# Copy the frame pointer to the stack pointer and release the stack space 
 	ret             # removees any arguments pushed onto the stack of the exiting procedure 
