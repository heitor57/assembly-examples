.data
vetor: .word 0:1000
.text
la $s0,vetor
add $s1,$zero,$zero
loop:
slti $t0,$s1,1000
beq $t0,$zero,end
sw $s1,0($s0)
addi $s1,$s1,1
addi $s0,$s0,4
j loop
end: