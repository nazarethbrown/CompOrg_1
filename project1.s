.data

insert_into:
	.word 4
Ask_Input:
	.asciiz "\Please Enter a String\n"
Tell_Output:
	.asciiz "\You Typed: \n"
.text

main:
	la $a0, Ask_Input
	li $v0, 4
	syscall 
	la $a0, insert_into
	la $a1, insert_into
	li $v0, 8 
	syscall 
	la $a0, Tell_Output 	
	li $v0, 4 
	syscall 
	la $a0, insert_into 
	li $v0, 4 
	syscall 
	li $v0, 10 
	syscall 