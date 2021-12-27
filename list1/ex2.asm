        .text
        addi         $s0, $zero,1
        add         $s1, $zero,1
        add         $s2, $zero,2
        mul         $t0, $s2,$s1
        add         $s0,$s0,$t0
        add         $s0,$s0,$s1

