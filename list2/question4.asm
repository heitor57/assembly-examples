add $s0,$zero,$zero
add $s1,$zero,$zero
loop:
slti $t0,$s0,5001
beq $t0,$zero,end
add $s1,$s1,$s0
addi $s0,$s0,1
j loop
end: