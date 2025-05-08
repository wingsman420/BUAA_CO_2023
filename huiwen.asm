.data
line: .space 84

.text
li $v0,5
syscall

addu $t0,$v0,$zero
li $s0,0

loop:
   li $v0,12
   syscall
   sll $s1, $s0, 2
   sw $v0, line($s1)
   sll $t1,$s0,1
   ble $t0,$t1,testloop
   testend:
   addi $s0,$s0,1
   blt $s0,$t0,loop
   
   j end2


testloop:
   lw $t2,line($s1)
   sub $t4,$t0,$s0
   subi $t4,$t4,1
   sll $t4,$t4,2
   lw $t3,line($t4)
   bne $t3,$t2,end1
   j testend
  
end1:
   li $v0,1
   li $a0,0
   syscall
   li $v0,10
   syscall
   
end2:
   li $v0,1
   li $a0,1
   syscall
   li $v0,10
   syscall
   
   


   
   





