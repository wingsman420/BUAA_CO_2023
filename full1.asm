
.data 
array:  .word 0 : 7
symbol: .word 0 : 7


.text
li $v0,5
syscall #scanf(%d,n)
addi $s0,$v0,0 # s0 = n
li $a1,0 #save first argument 0,index
jal fullarray #fullarray(0)
li $v0 10 #ending
syscall


fullarray:
  li $t0,0 #i = 0
  blt $a1,$s0,endout # print program below
  loop:
  ble $s0,$t0,endloop #if(i >= n) endloop;
  sll $t3,$t0,2  # i >>> 4i ,load address
  lw $t4,array($t3) #load array[i]
  add $a0,$t4,0 #print array[i]
  li $v0,1
  syscall
  li $a0,32 # print " "
  li $v0,11
  syscall
  addi $t0,$t0,1 # i++
  j loop
  endloop:
  li $a0,10 #print "\n"
  li $v0,11
  syscall
  jr $ra #return to last-level
  
  endout:
  li $t0,0 # i = 0
  loop2:
  ble $s0,$t0,endloop2 #if(n <= i) outloop
  sll $t1,$t0,2 # 4i
  lw $t3,symbol($t1) # get symbol[i]
  bne $t3,$0,notif #if(symbol[i] != 0) out
  addi $t2,$t0,1 #i+1
  sll $t4,$a1,2 #4index
  sw $t2,array($t4) #array[index] = i + 1
  li $t2,1
  sw $t2,symbol($t1) #symbol[i] = i + 1
  #enter next level
  addi $sp,$sp,-12
  sw $t0,8($sp)
  sw $ra,4($sp)
  sw $a1,0($sp)
  addi $a1,$a1,1 #index++
  jal fullarray
  lw $t0,8($sp)
  lw $ra,4($sp)
  lw $a1,0($sp)
  addi $sp,$sp,12
  li $t2,0
  sll $t1,$t0,2
  sw $t2,symbol($t1) #symbol[i] = 0
  notif:
  add $t0,$t0,1 #i++
  j loop2
  endloop2:
  jr $ra #return
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
