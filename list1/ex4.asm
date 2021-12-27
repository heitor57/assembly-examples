        .data
a:      .word       0:2
        .text
        la          $s0,a
        li          $s1,10
        sw          $s1,0($s0)
        addi        $s2,$s1,5
        sw          $s2,4($s0)
        add         $s3,$s1,$s2         #b= a[0]+ a[1]
        sub         $s4,$s1,$s2         #c= a[0]- a[1]
        add         $s5,$s3,$s4         # d = b + c
        add         $t0,$s5,$s4
        li          $t1,2
        mul         $t0,$t1,$t0
        sub         $t0,$t0,$s2
        add         $t1,$s3,$s1
        sub         $s6,$t1,$t0
