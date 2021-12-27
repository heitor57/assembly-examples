.data
vetor: .word 1,-4,2,-3,-3,-2,-2,2,1,-32132231
.text
la $s6,vetor
add $s0,$zero,$zero
add $s1,$zero,$zero
loop:
slti $t0,$s0,10
beq $t0,$zero,end
lw $t0,0($s6)
slti $t1,$t0,0
beq $t1,$zero,positivo
addi $s1,$s1,1
positivo:
addi $s0,$s0,1
addi $s6,$s6,4
j loop
end: