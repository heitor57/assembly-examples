.data
dados: .word 0:1000
.text
li $s1,0
la $s0,dados
loop:
sw $s1,0($s0)
addi $s1,$s1,1
addi $s0,$s0,4
slti $t0,$s1,1000
bne $t0,$zero,loop