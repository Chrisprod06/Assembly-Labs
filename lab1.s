.data
    out_string: .asciiz "The result is : \n"
.text
    main:
        li $t0,0
        li $t1,0
        li $t2,6

        loop_top:
            beq $t0,$t2,loop_end
            mul $t3,$t0,$t0
            add $t1,$t1,$t3
            addi $t0,1
            b loop_top
        
        loop_end:
            li $v0,1
            move $a0,$t1
            syscall

            li $v0,10
            syscall