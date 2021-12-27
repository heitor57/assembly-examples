## Lendo um arquivo e mostrando seus caracteres no console. Obs. O arquivo deve existir.

        .data
fin:    .asciiz     "/home/heitor/entrada.txt"
buffer: .space      40

        .text
main:
        li          $v0, 13
        la          $a0, fin
        li          $a1, 0
        syscall
        move        $t0, $v0


        li          $v0, 14
        la          $a1, buffer
        li          $a2, 40
        move        $a0, $t0
        syscall

        la          $s0, buffer
        lb          $s1, 0($s0)

        lb          $s1, 1($s0)
        lb          $s1, 2($s0)
        lb          $s1, 3($s0)
        lb          $s1, 4($s0)

        addi        $s1, $zero, 0x41

        la          $a0, buffer 
        li          $v0, 4  
        syscall   

        li          $v0, 16       
        move        $a0, $t0    
        syscall          
        li          $v0, 10   
        syscall 

