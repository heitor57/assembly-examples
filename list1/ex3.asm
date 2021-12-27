        .data
vet:    .word       0:3
temp:   .word       2
        .text
        la          $s0,vet
        la          $s1,temp
        lw          $s2,0($s1)
        sw          $s2,0($s0)
        lw          $t0,0($s0)
        mul $t1,$t0,$s2
        sw $t1,4($s0)
        mul         $t1,$t1,$s2
        add         $t0,$t0,$t1
        sw $t0,8($s0)
