.data
vetor: .word 2323312,111,321,1212,-222,612,312,999,211,33
.text

lw $s0,vetor
addi $s1,$zero,1
la $s2,vetor
addi $s2,$s2,4
loop:
slti $t0,$s1,10
beq $t0,$zero,end
lw $t0,0($s2)
slt $t1,$t0,$s0
beq $t1,$zero,greater
move $s0,$t0
greater:
addi $s2,$s2,4
addi $s1,$s1,1
j loop
end: