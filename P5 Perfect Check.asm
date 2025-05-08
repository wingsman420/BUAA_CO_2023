case0:
ori $t0, $zero, 8
add $t1, $t0, $zero

case1:
ori $t0, $zero, 8
ori $t2, $zero, 12
add $t1, $t0, $zero

case2:
ori $t0, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 13
add $t1, $t0, $zero

case3:
ori $t0, $zero, 8
add $t1, $zero, $t0

case4:
ori $t0, $zero, 8
ori $t2, $zero, 12
add $t1, $zero, $t0

case5:
ori $t0, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 13
add $t1, $zero, $t0

case6:
lui $t0, 8
add $t1, $t0, $zero

case7:
lui $t0, 8
lui $t2, 12
add $t1, $t0, $zero

case8:
lui $t0, 8
lui $t2, 12
lui $t3, 14
add $t1, $t0, $zero

case9:
lui $t0, 8
add $t1, $zero, $t0

case10:
lui $t0, 8
lui $t2, 12
add $t1, $zero, $t0

case11:
lui $t0, 8
lui $t2, 12
lui $t3, 14
add $t1, $zero, $t0

case12:
lui $t0, 8
add $t1, $zero, $t0
add $t2, $t1, $zero

case13:
lui $t0, 8
add $t1, $zero, $t0
add $t3, $t0, $t0
add $t2, $t1, $zero

case14:
lui $t0, 8
add $t1, $zero, $t0
add $t3, $t0, $t0
add $t4, $t0, $t0
add $t2, $t1, $t1

case15:
ori $t0, $zero, 8
ori $t1, $zero, 12
ori $t2, $zero, 16
ori $t3, $zero, 20
ori $t4, $zero, 24
ori $t5, $zero, 28
sw $t1, 0($t0)
ori $s0, $zero, 4
ori $s1, $zero, 8
ori $s2, $zero, 12
lw $t6, 0($t0)
add $t7, $t6, $t6

case16:
ori $t0, $zero, 8
ori $t1, $zero, 12
ori $t2, $zero, 16
ori $t3, $zero, 20
ori $t4, $zero, 24
sw $t1, 0($t0)
ori $s0, $zero, 4
ori $s1, $zero, 8
ori $s2, $zero, 12
lw $t6, 0($t0)
ori $t5, $zero, 28
add $t7, $t6, $t6

case17:
ori $t0, $zero, 8
ori $t1, $zero, 12
ori $t2, $zero, 16
ori $t3, $zero, 20
ori $t4, $zero, 24
sw $t1, 0($t0)
ori $s0, $zero, 4
ori $s1, $zero, 8
ori $s2, $zero, 12
lw $t6, 0($t0)
ori $t5, $zero, 28
ori $t8, $zero, 32
add $t7, $t6, $t6

case18:
ori $t0, $zero, 8
ori $t1, $zero, 12
ori $t2, $zero, 16
jal change1
add $t3, $ra, $ra
ori $t4, $zero, 20
ori $t5, $zero, 24
change1:
	ori $t6, $zero, 20
	
case19:
ori $t0, $zero, 8
ori $t1, $zero, 12
ori $t2, $zero, 16
jal change2
ori $t4, $zero, 20
ori $t5, $zero, 24
change2:
	add $t3, $ra, $ra
	ori $t6, $zero, 20
	ori $t7, $zero, 24

case20:
ori $t0, $zero, 8
ori $t1, $zero, 12
ori $t2, $zero, 16
jal change3
ori $t4, $zero, 20
ori $t5, $zero, 24
change3:
	ori $t6, $zero, 20
	add $t3, $ra, $ra
	ori $t6, $zero, 20
	ori $t7, $zero, 24

case21:	
ori $t0, $zero, 8
ori $t1, $t0, 12

case22:
ori $t0, $zero, 8
ori $t2, $zero, 20
ori $t1, $t0, 12

case23:
ori $t0, $zero, 8
ori $t2, $zero, 20
ori $t3, $zero, 24
ori $t1, $t0, 12

case24:
ori $t0, $zero, 8
ori $t1, $zero, 20
ori $t2, $zero, 24
ori $t3, $zero, 12
ori $t4, $zero, 16
sub $t5, $t0, $t1
ori $t6, $t5, 13

case25:
ori $t0, $zero, 8
ori $t1, $zero, 20
ori $t2, $zero, 24
ori $t3, $zero, 12
ori $t4, $zero, 16
sub $t5, $t0, $t1
ori $t7, $zero, 20
ori $t6, $t5, 13

case26:
ori $t0, $zero, 8
ori $t1, $zero, 20
ori $t2, $zero, 24
ori $t3, $zero, 12
ori $t4, $zero, 16
sub $t5, $t0, $t1
ori $t7, $zero, 20
ori $t8, $zero, 24
ori $t6, $t5, 13

case27:
ori $t0, $zero, 8
ori $t1, $zero, 20
ori $t2, $zero, 4
ori $t3, $zero, 12
ori $t4, $zero, 16
sw $t0, 0($t1)
lw $t5, 0($t1)
ori $t6, $t5, 13

case28:
ori $t0, $zero, 8
ori $t1, $zero, 20
ori $t2, $zero, 4
ori $t3, $zero, 12
ori $t4, $zero, 16
sw $t0, 0($t1)
lw $t5, 0($t1)
ori $t7, $zero, 20
ori $t6, $t5, 13

case29:
ori $t0, $zero, 8
ori $t1, $zero, 20
ori $t2, $zero, 4
ori $t3, $zero, 12
ori $t4, $zero, 16
sw $t0, 0($t1)
lw $t5, 0($t1)
ori $t7, $zero, 20
ori $t8, $zero, 24
ori $t6, $t5, 13

case30:
ori $t0, $zero, 8
ori $t1, $zero, 20
jal change4
ori $t2, $ra, 8
ori $t3, $zero, 14
change4:
	ori $t4, $zero, 18
ori $t5, $zero, 22
ori $t6, $zero, 26

case31:
ori $t0, $zero, 8
ori $t1, $zero, 20
jal change5
ori $t2, $zero, 4
ori $t3, $zero, 14
change5:
	ori $t4, $ra, 18
ori $t5, $zero, 22
ori $t6, $zero, 26

case32:
ori $t0, $zero, 8
ori $t1, $zero, 20
jal change6
ori $t2, $zero, 4
ori $t3, $zero, 14
change6:
	ori $t7, $zero, 6
	ori $t4, $ra, 18
ori $t5, $zero, 22
ori $t6, $zero, 26

case33:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 9
ori $t3, $zero, 12
sw $t1, 0($t0)
sw $t2, 4($t0)
sw $t3, 8($t0)

occasionl1:	#R_E_RS
	sub $t4, $t1, $t0
	lw $t5, 0($t4)
	
occasionl2:	#R_M_RS
	sub $t5, $t3, $t0
	ori $zero, $zero, 5
	lw $t6, 0($t5)

occasionl3:	#R_W_RS
	add $t6, $t0, $t1
	ori $s0, $zero, 12
	ori $s1, $zero, 16
	lw $t7, 0($t6)
	
case34:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 9
ori $t3, $zero, 12
sw $t1, 0($t0)
sw $t2, 4($t0)
sw $t3, 8($t0)

occasionl4:	#R_E_RS
	ori $t4, $zero, 4
	lw $t5, 0($t4)
	
occasionl5:	#R_M_RS
	ori $t5, $zero, 8
	ori $zero, $zero, 5
	lw $t6, 0($t5)

occasionl6:	#R_W_RS
	ori $t6, $zero, 12
	ori $s0, $zero, 12
	ori $s1, $zero, 16
	lw $t7, 0($t6)
	
case35:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 16
sw $t0, 0($zero)
sw $t1, 0($t0)
sw $t2, 0($t1)
sw $t3, 4($t1)

 occasionl7:	#ld_E_RS
 	lw $t4, 0($t0)
 	lw $t5, 0($t4)
 	
 occasionl8:	#ld_M_RS
 	lw $t5, -4($t0)
 	add $zero, $zero, $t1
 	lw $t6, 0($t5)
 	
 occasionl9:	#ld_W_RS
 	lw $t6, 4($t0)
 	ori $s0, $zero, 1
 	ori $s1, $zero, 2
 	lw $t7, 0($t6)
 	
case36:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 16
ori $t4, $zero, 20

occasions1:	#R_E_RS
	add $t5, $t0, $t1
	sw $t2, 0($t5)
	
occasions2:	#R_M_RS
	sub $t6, $t2, $t1
	ori $s0, $zero, 12
	sw $t3, 4($t6)

occasions3:	#R_W_RS
	sub $t7, $t4, $t0
	ori $s1, $zero, 4
	ori $s2, $zero, 8
	sw $t4, 0($t7)

occasions4:	#R_E_RT
	sub $t5, $t1, $t0
	sw $t5, 0($t0)

occasions5:	#R_M_RT
	sub $t5, $t2, $t0
	ori $s0, $zero, 2
	sw $t5, 4($t2)
	
occasions6:	#R_W_RT
	add $t6, $t3, $t4
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	sw $t6, 0($t1)
	
case37:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 16
ori $t4, $zero, 20

occasions7:	#I_E_RS
	ori $t5, $zero, 12
	sw $t2, 0($t5)
	
occasions8:	#I_M_RS
	ori $t6, $zero, 4
	ori $s0, $zero, 12
	sw $t3, 4($t6)

occasions9:	#I_W_RS
	ori $t7, $zero, 16
	ori $s1, $zero, 4
	ori $s2, $zero, 8
	sw $t4, 0($t7)

occasions10:	#I_E_RT
	lui $t5, 3
	sw $t5, 0($t0)

occasions11:	#I_M_RT
	lui $t5, 1
	ori $s0, $zero, 2
	sw $t5, 4($t2)
	
occasions12:	#I_W_RT
	ori $zero, $zero, 9
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	sw $zero, 0($t1)

case38:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 16
ori $t4, $zero, 20
sw $t0, 0($zero)
sw $t1, 0($t0)
sw $t2, 4($t0)
sw $t3, 8($t0)
occasions13:	#ld_E_RS
	lw $t5, 0($t0)
	sw $t2, 0($t5)
	
occasions14:	#ld_M_RS
	lw $t6, 0($t0)
	ori $s0, $zero, 12
	sw $t3, 4($t6)

occasions15:	#ld_W_RS
	lw $t7, 4($t0)
	ori $s1, $zero, 4
	ori $s2, $zero, 8
	sw $t4, 0($t7)

occasions16:	#ld_E_RT
	lw $t5, 0($t2)
	sw $t5, 0($t0)

occasions17:	#ld_M_RT
	lw $t5, 4($t2)
	ori $s0, $zero, 2
	sw $t5, 4($t2)
	
occasions18:	#ld_W_RT
	lw $t6, 4($t0)
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	sw $t6, 0($t1)
	
case39:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 16
sub $t4, $t0, $t1

occasionbr1:	#R_E_RS
	add $t5, $t0, $t1
	beq $t5, $t2, changeb1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changeb1:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbr2:	#R_M_RS
	add $t6, $t0, $t1
	ori $s0, $zero, 1
	beq $t6, $t2, changeb2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changeb2:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbr3:	#R_W_RS
	add $t7, $t0, $t1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	beq $t7, $t2, changeb3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changeb3:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbr4:	#R_E_RT
	sub $t5, $t1, $t2
	beq $t4, $t5, changeb4
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changeb4:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbr5:	#R_M_RT
	sub $t6, $t1, $t2
	ori $s0, $zero, 1
	beq $t4, $t6, changeb5
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changeb5:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbr6:	#R_W_RT
	sub $t7, $t1, $t2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	beq $t4, $t7, changeb6
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changeb6:
		ori $s2, $zero, 3
		ori $s3, $zero, 4

case40:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 16
sub $t4, $t0, $t1

occasionbru1:	#R_E_RS
	add $t5, $t0, $t1
	beq $t5, $t3, changebru1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebru1:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbru2:	#R_M_RS
	add $t6, $t0, $t1
	ori $s0, $zero, 1
	beq $t6, $t3, changebru2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebru2:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbru3:	#R_W_RS
	add $t7, $t0, $t1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	beq $t7, $t3, changebru3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebru3:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbru4:	#R_E_RT
	sub $t5, $t1, $t2
	beq $t3, $t5, changebru4
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebru4:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbru5:	#R_M_RT
	sub $t6, $t1, $t2
	ori $s0, $zero, 1
	beq $t3, $t6, changebru5
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebru5:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbru6:	#R_W_RT
	sub $t7, $t1, $t2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	beq $t3, $t7, changebru6
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebru6:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
case41:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 16
sub $t4, $t0, $t1

occasionbi1:	#I_E_RS
	ori $t5, $zero, 16
	beq $t5, $t3, changebi1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebi1:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbi2:	#I_M_RS
	ori $t6, $zero, 16
	ori $s0, $zero, 1
	beq $t6, $t3, changebi2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebi2:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbi3:	#I_W_RS
	ori $t7, $zero, 16
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	beq $t7, $t3, changebi3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebi3:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbi4:	#I_E_RT
	ori $t5, $zero, 8
	beq $t1, $t5, changebi4
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebi4:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbi5:	#I_M_RT
	ori $t6, $zero, 8
	ori $s0, $zero, 1
	beq $t1, $t6, changebi5
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebi5:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbi6:	#I_W_RT
	ori $t7, $zero, 8
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	beq $t1, $t7, changebi6
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebi6:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
case42:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $t3, $zero, 16
sub $t4, $t0, $t1

occasionbiu1:	#I_E_RS
	ori $t5, $zero, 16
	beq $t5, $t2, changebiu1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebiu1:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbiu2:	#I_M_RS
	ori $t6, $zero, 16
	ori $s0, $zero, 1
	beq $t6, $t2, changebiu2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebiu2:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbiu3:	#I_W_RS
	ori $t7, $zero, 16
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	beq $t7, $t2, changebiu3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebiu3:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbiu4:	#I_E_RT
	ori $t5, $zero, 8
	beq $t2, $t5, changebiu4
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebiu4:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbiu5:	#I_M_RT
	ori $t6, $zero, 8
	ori $s0, $zero, 1
	beq $t2, $t6, changebiu5
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebiu5:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
occasionbiu6:	#I_W_RT
	ori $t7, $zero, 8
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	beq $t2, $t7, changebiu6
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebiu6:
		ori $s2, $zero, 3
		ori $s3, $zero, 4
		
case43:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $s0, $zero, 1
sw $t0, 0($zero)
sw $t1, 4($zero)
sw $t2, 8($zero)
ori $s0, $zero, 1
ori $s1, $zero, 2

occasionbld1:	#ld_E_RS
	lw $t3, 0($t0)
	beq $t3, $t1, changebld1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebld1:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbld2:	#ld_M_RS
	lw $t4, 0($t0)
	ori $s2, $zero, 2
	beq $t4, $t1, changebld2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebld2:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbld3:	#ld_W_RS
	lw $t5, 0($t0)
	ori $s2, $zero, 2
	ori $s3, $zero, 3
	beq $t5, $t1, changebld3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebld3:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbld4:	#ld_E_RT
	lw $t6, 0($t0)
	beq $t6, $t1, changebld4
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebld4:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbld5:	#ld_M_RT
	lw $t7, 0($t0)
	ori $s2, $zero, 2
	beq $t7, $t1, changebld5
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebld5:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbld6:	#ld_W_RT
	lw $t8, 0($t0)
	ori $s2, $zero, 2
	ori $s3, $zero, 3
	beq $t8, $t1, changebld6
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebld6:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
case44:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 12
ori $s0, $zero, 1
sw $t0, 0($zero)
sw $t1, 4($zero)
sw $t2, 8($zero)
ori $s0, $zero, 1
ori $s1, $zero, 2

occasionbldu1:	#ld_E_RS
	lw $t3, 0($t0)
	beq $t3, $t0, changebldu1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebldu1:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbldu2:	#ld_M_RS
	lw $t4, 0($t0)
	ori $s2, $zero, 2
	beq $t4, $t0, changebldu2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebldu2:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbldu3:	#ld_W_RS
	lw $t5, 0($t0)
	ori $s2, $zero, 2
	ori $s3, $zero, 3
	beq $t5, $t0, changebldu3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebldu3:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbldu4:	#ld_E_RT
	lw $t6, 0($t0)
	beq $t0, $t6, changebldu4
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebldu4:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbldu5:	#ld_M_RT
	lw $t7, 0($t0)
	ori $s2, $zero, 2
	beq $t0, $t7, changebldu5
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebldu5:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
occasionbldu6:	#ld_W_RT
	lw $t8, 0($t0)
	ori $s2, $zero, 2
	ori $s3, $zero, 3
	beq $t0, $t8, changebldu6
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebldu6:
		ori $s2, $zero, 2
		ori $s3, $zero, 3
		
case45:
ori $t0, $zero, 4
ori $t1, $zero, 0x000039a0
ori $t2, $zero, 0x000039c0
ori $t3, $zero, 0x000039a4
ori $t4, $zero, 0x00003a04
occasionbj1:	#jal_M_RS
	jal changebj1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebj1:
		beq $ra, $t1, changebj11
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		changebj11:
			ori $s2, $zero, 2
			ori $s3, $zero, 3
occasionbj2:	#jal_W_RS
	jal changebj2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebj2:
		ori $s2, $zero, 2
		beq $ra, $t2, changebj21
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		changebj21:
			ori $s2, $zero, 2
			ori $s3, $zero, 3
			
occasionbj3:	#jal_M_RT
	jal changebj3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebj3:
		beq $t3, $ra, changebj31
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		changebj31:
			ori $s2, $zero, 2
			ori $s3, $zero, 3
occasionbj4:	#jal_W_RT
	jal changebj4
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebj4:
		ori $s2, $zero, 2
		beq $t4, $ra, changebj41
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		changebj41:
			ori $s2, $zero, 2
			ori $s3, $zero, 3
			
case46:
ori $t0, $zero, 4
ori $t1, $zero, 0x0000399c
ori $t2, $zero, 0x000039bc
ori $t3, $zero, 0x000039e0
ori $t4, $zero, 0x00003a00
occasionbju1:	#jal_M_RS
	jal changebju1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebju1:
		beq $ra, $t1, changebju11
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		changebju11:
			ori $s2, $zero, 2
			ori $s3, $zero, 3
occasionbju2:	#jal_W_RS
	jal changebju2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebju2:
		ori $s2, $zero, 2
		beq $ra, $t2, changebju21
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		changebju21:
			ori $s2, $zero, 2
			ori $s3, $zero, 3
			
occasionbju3:	#jal_M_RT
	jal changebju3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebju3:
		beq $t3, $ra, changebju31
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		changebju31:
			ori $s2, $zero, 2
			ori $s3, $zero, 3
occasionbju4:	#jal_W_RT
	jal changebju4
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	changebju4:
		ori $s2, $zero, 2
		beq $t4, $ra, changebju41
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		changebju41:
			ori $s2, $zero, 2
			ori $s3, $zero, 3
			
case47:
ori $t0, $zero, 4
ori $t1, $zero, 0x00003010
ori $t2, $zero, 0x00003030
ori $t3, $zero, 0x00003050
ori $t4, $zero, 0x00003070
occasionjms1:	#jal_M_RS
	jal changejms1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	ori $s2, $zero, 2
	ori $s3, $zero, 3
	j case48
	ori $s4, $zero, 4
	changejms1:
		jr $ra
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		
case48:
ori $t0, $zero, 4
ori $t1, $zero, 0x00003010
ori $t2, $zero, 0x00003030
ori $t3, $zero, 0x00003050
ori $t4, $zero, 0x00003070
occasionjws1:	#jal_W_RS
	jal changejws1
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	ori $s2, $zero, 2
	ori $s3, $zero, 3
	j case49
	ori $s4, $zero, 4
	changejws1:
		ori $s3, $zero, 3
		jr $ra
		ori $s0, $zero, 1
		ori $s1, $zero, 2
		
case49:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 0x00003b58
ori $s0, $zero, 1
ori $s1, $zero, 2
ori $s2, $zero, 3
occasionres1:	#R_E_RS
	add $t3, $t0, $t2
	jr $t3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	ori $s2, $zero, 3

case50:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 0x00003b88
ori $s0, $zero, 1
ori $s1, $zero, 2
ori $s2, $zero, 3
occasionrms1:	#R_M_RS
	add $t3, $t0, $t2
	ori $s0, $zero, 1
	jr $t3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	ori $s2, $zero, 3
	
case51:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 0x00003bbc
ori $s0, $zero, 1
ori $s1, $zero, 2
ori $s2, $zero, 3
occasionrws1:	#R_W_RS
	add $t3, $t0, $t2
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	jr $t3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	ori $s2, $zero, 3
	
case52:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 0x00003bec
ori $s0, $zero, 1
ori $s1, $zero, 2
ori $s2, $zero, 3
occasionies1:	#I_E_RS
	ori $t3, $t2, 0
	jr $t3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	ori $s2, $zero, 3
	
case53:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 0x00003c1c
ori $s0, $zero, 1
ori $s1, $zero, 2
ori $s2, $zero, 3
occasionims1:	#I_M_RS
	ori $t3, $t2, 0
	ori $s0, $zero, 1
	jr $t3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	ori $s2, $zero, 3
	
case54:
ori $t0, $zero, 4
ori $t1, $zero, 8
ori $t2, $zero, 0x00003c50
ori $s0, $zero, 1
ori $s1, $zero, 2
ori $s2, $zero, 3
occasioniws1:	#I_W_RS
	ori $t3, $t2, 0
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	jr $t3
	ori $s0, $zero, 1
	ori $s1, $zero, 2
	ori $s2, $zero, 3
	
case55:
ori $t0, $zero, 0X00003c84
ori $t1, $zero, 0X00003008
ori $s0, $zero, 0
ori $s0, $zero, 0
sw $t0, 0($zero)
sw $t1, 4($zero)
ori $s0, $zero, 0
ori $s0, $zero, 0
occasionldes1:	#ld_E_RS
	lw $t2, 0($zero)
	jr $t2
	ori $s0, $zero, 0
	ori $s0, $zero, 0
	ori $s0, $zero, 0
	
case56:
ori $t0, $zero, 0X00003cbc
ori $t1, $zero, 0X00003008
ori $s0, $zero, 0
ori $s0, $zero, 0
sw $t0, 0($zero)
sw $t1, 4($zero)
ori $s0, $zero, 0
ori $s0, $zero, 0
occasionldms1:	#ld_M_RS
	lw $t2, 0($zero)
	ori $s0, $zero, 0
	jr $t2
	ori $s0, $zero, 0
	ori $s0, $zero, 0
	ori $s0, $zero, 0
	
case57:
ori $t0, $zero, 0X00003cf8
ori $t1, $zero, 0X00003008
ori $s0, $zero, 0
ori $s0, $zero, 0
sw $t0, 0($zero)
sw $t1, 4($zero)
ori $s0, $zero, 0
ori $s0, $zero, 0
occasionldws1:	#ld_W_RS
	lw $t2, 0($zero)
	ori $s0, $zero, 0
	ori $s0, $zero, 0
	jr $t2
	ori $s0, $zero, 0
	ori $s0, $zero, 0
	ori $s0, $zero, 0
