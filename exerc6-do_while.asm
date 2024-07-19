

.data
	mensagem: .asciiz "Digite 's' para continuar e 'n' para sair: "
	iteracao: .asciiz "Iteracao "
	quebra: .asciiz "\n"
.text
	main:
		li $t2, 1
	laco_repeticao:
		li $v0, 4
		la $a0, quebra
		syscall
	
		li $v0, 4
		la $a0, iteracao
		syscall
		
		move $a0, $t2
		li $v0, 1
		syscall
		
		li $v0, 4
		la $a0, quebra
		syscall
		
		addi $t2, $t2, 1
		
		li $v0, 4
		la $a0, mensagem
		syscall
		
		li $v0, 12
		syscall
		move $t0, $v0
		
		li $t1, 's'
		beq $t0, $t1, laco_repeticao
		
	fim:
		li $v0, 10
		syscall 