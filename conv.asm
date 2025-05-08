.data
tensor: .word 0:100
kernal: .word 0:100
anwser: .word 0:100

.text
li $v0,5
syscall
addi $s0,$v0,0 #m1
li $v0,5
syscall
addi $s1,$v0,0 #n1
li $v0,5
syscall
addi $s2,$v0,0 #m2
li $v0,5
syscall
addi $s3,$v0,0 #n2

li $t0,0 #i = 0
mul $t1,$s0,$s1 #t1 =m1*n1
loop1:
ble $t1,$t0,endloop1
sll $t2,$t0,2 #4i
li $v0,5
syscall #read a num
sw $v0,tensor($t2) #scanf(%d,m1[i])
addi $t0,$t0,1 #i++
j loop1
endloop1:

li $t0,0 #i = 0
mul $t1,$s2,$s3 #t1 =m2*n2
loop2:
ble $t1,$t0,endloop2
sll $t2,$t0,2 #4i
li $v0,5
syscall #read a num
sw $v0,kernal($t2) #scanf(%d,m1[i])
addi $t0,$t0,1 #i++
j loop2
endloop2:

sub $s4,$s0,$s2
addi $s4,$s4,1 #line = m1-m2+1
sub $s5,$s1,$s3
addi $s5,$s5,1 #array = n1-n2+1

li $t0,0 #i = 0
mul $t1,$s4,$s5 #t1 = array*line
loop3:
ble $t1,$t0,endloop3
div $t0,$s5
mflo $t3 #LINE
mfhi $t2 #ARRAY
li $t4,0 #sum

   li $t5,0 #j = 0
   loop4:
   ble $s2,$t5,endloop4
       
       li $t6,0 #k = 0
       loop5:
       ble $s3,$t6,endloop5
       add $t7,$t3,$t5
       mul $t7,$t7,$s1
       add $t7,$t7,$t2
       add $t7,$t7,$t6
       sll $t7,$t7,2
       lw $t7,tensor($t7)
       mul $t8,$s3,$t5
       add $t8,$t8,$t6
       sll $t8,$t8,2
       lw $t8,kernal($t8)
       mul $t7,$t7,$t8
       add $t4,$t4,$t7 #sum +=(_)
       addi $t6,$t6,1
       j loop5
       endloop5:
   addi $t5,$t5,1
   j loop4
   endloop4:
   sll $t7,$t0,2
   sw $t4,anwser($t7)
addi $t0,$t0,1
j loop3
endloop3:

li $t0,0 #i = 0
loop6:
ble $s4,$t0,endloop6

    li $t1,0 #j = 0
    loop7:
    ble $s5,$t1,endloop7
    mul $t2,$t0,$s5
    add $t2,$t2,$t1
    sll $t2,$t2,2
    lw $a0,anwser($t2)
    li $v0,1
    syscall
    li $a0,32
    li $v0,11
    syscall
    addi $t1,$t1,1
    j loop7
    endloop7:
    li $a0,10
    li $v0,11
    syscall

addi $t0,$t0,1
j loop6
endloop6:

li $v0,10
syscall










