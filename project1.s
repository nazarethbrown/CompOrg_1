.data
myID:
        .space 32
nextline: .asciiz "\n"
.text
main:

        li $v0, 8 #load immediate  opcode 8 at register $v0
        la $a0, myID #load address of myID into register $a
        li $a1,11 #ensures input only accepts 11 characters
        syscall #run the last three lines to get inout from user

        move $s1, $a0

charactertype:
        bge $t0, 11, EXIT
        lb $t1, 0($s1)
        ble $t1, 47, specialc
        ble $t1, 57, numbers
        ble $t1, 90, uppercase
        ble $t1, 122, lowercase

EXIT:
        la $a0, nextline
        li $v0, 4
        syscall
        add $a0, $s7, $zero
        li $v0, 1
        syscall
        li $v0, 10
        syscall
numbers:

        sub $t1, $t1, 48
        add $s7, $s7, $t1
        addi $t0, $t0, 1
        addi $s1, $s1, 1
        j charactertype
lowercase:
       blt $t1, 97, specialc
       bgt $t1, 118, specialc
       sub $t1, $t1, 87
       add $s7, $s7, $t1
       addi $t0, $t0, 1
       addi $s1, $s1, 1
       j charactertype
uppercase:
       blt $t1, 65, specialc
       bgt $t1, 86, specialc
       sub $t1, $t1, 55
       add $s7, $s7, $t1
       addi $t0, $t0, 1
       addi $s1, $s1, 1
       j charactertype
specialc:
       sub $s3, $t1, $t1
       add $s7, $s7, $s3
       addi $t0, $t0, 1
       addi $s1, $s1, 1
       j charactertype
