.data
myID: 
	.word 4
.text
main:

	li $v0, 8 #load immediate  opcode 8 at register $v0  
	la $a3, myID #load address of myID into register $a
	li $a0,11 #ensures input only accepts 11 characters
	syscall #run the last three lines to get inout from user

	move $s1, $a3
	
#charactertype:
#	bge $t0, 11, EXIT
#	lb $t1, 0($s1)
#	ble $t1, 47, specialc
#	ble $t1, 57, numbers
#	ble $t1, 90, uppercase
#	ble $t1, 122, lowercase	

#.data

#insert_into:
#	.word 4
#Ask_Input:
#	.asciiz "\nPlease Enter ID Number: \n"
#Tell_Output:
#	.asciiz "\You Typed: \n"
#.text

#main:
#	la $a0, Ask_Input
#	li $v0, 4
#	syscall 
#	la $a0, insert_into
#	la $a1, insert_into
#	li $v0, 8 
#	syscall 
#	la $a0, Tell_Output 	
#	li $v0, 4 
#	syscall 
#	la $a0, insert_into 
#	li $v0, 4 
#	syscall 
#	li $v0, 10 
#	syscall 
