#  Criar duas variaveis, uma no valor de 6 e a outra no valor de 32, 
# se ambas forem iguais, mostre na tela iguais, senao mostre não iguais

.data
	se_true: .asciiz "Sao iguais"
	se_false: .asciiz "Nao sao iguais"
.text
	main:
		li $t0, 6
		li $t1, 32
		
		beq $t0, $t1, verdadeiro
		j falso
		
	verdadeiro:
		li $v0, 4
		la $a0, se_true
		syscall
		j fim
		
	falso:
		li $v0, 4
		la $a0, se_false
		syscall
	fim:
		li $v0, 10
		syscall