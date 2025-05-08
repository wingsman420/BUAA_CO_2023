.data
m1:  .word 0:64
m2:  .word 0:64
m3:  .word 0:64

.text
li $v0,5
syscall
addi $s0,$v0,0 #read n store into s0
mul $s1,$s0,$s0 #n*n
li $t1,0 #i = 0
loop1:
ble $s1,$t1,endloop1
sll $t2,$t1,2 #4i
li $v0,5
syscall #read a num
sw $v0,m1($t2) #scanf(%d,m1[i])
addi $t1,$t1,1 #i++
j loop1
endloop1:

li $t1,0 #i = 0
loop2:
ble $s1,$t1,endloop2
sll $t2,$t1,2 #4i
li $v0,5
syscall #read a num
sw $v0,m2($t2) #scanf(%d,m2[i])
addi $t1,$t1,1 #i++
j loop2
endloop2:

li $t1,0 #i = 0
loop3:
ble $s1,$t1,endloop3
div $t1,$s0
sll $t2,$t1,2 #4i
mfhi $t4 #array
mflo $t3 #line
li $t5,0 #sum = 0
    li $t6,0 #k=0
    li $t7,0
    li $t8,0
    loop4:
    ble $s0,$t6,endloop4
    mul $t7,$s0,$t4 #n*line
    add $t7,$t7,$t6 #n*line + k
    sll $t7,$t7,2 # m1 coo
    mul $t8,$s0,$t6 #n*k
    add $t8,$t8,$t3 #n*k + array
    sll $t8,$t8,2 # m2 coo
    lw $t7,m1($t7)
    lw $t8,m2($t8)
    mul $t7,$t7,$t8 #m1*m2
    add $t5,$t5,$t7 # cal sum
    addi $t6,$t6,1
    j loop4
    endloop4:
sw $t5,m3($t2) # anwser
addi $t1,$t1,1 #i++
j loop3
endloop3:

li $t1,0 #i = 0
loop5:
ble $s0,$t1,endloop5
   sll $t2,$t1,2 #4i
   li $t3,0 #j = 0
   loop6:
   ble $s0,$t3,endloop6
   mul $t4,$s0,$t3
   add $t4,$t4,$t1#t4 = j + i * n
   sll $t4,$t4,2
   lw $a0,m3($t4)
   li $v0,1
   syscall
   li $a0,32
   li $v0,11
   syscall
   addi $t3,$t3,1
   j loop6
   endloop6:
   li $a0,10
   li $v0,11
   syscall
addi $t1,$t1,1
j loop5
endloop5:

li $v0,10
syscall


