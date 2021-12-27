        .data
bufferOut: .asciiz "How are you?"
fout: .asciiz "/home/heitor/TESTE2.txt"

        .text
main:
        li          $v0, 13
        la          $a0, fout
        li          $a1, 1
        syscall
        move        $t0, $v0

	li $v0, 15
        move $a0, $t0
        la $a1,bufferOut
        li $a2,12
        syscall
        li          $v0, 16       
        move        $a0, $t0    
        syscall
	li $v0, 10
	syscall
