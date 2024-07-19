# Digite um número e o mostre na tela
.data
	frase_entrada: .asciiz "Digite um numero e pressione enter: "
	frase_final: .asciiz "Voce digitou: "
.text
	main:
		li $v0, 4
		la $a0, frase_entrada
		syscall
		
		li $v0, 5
		syscall
		move $t0, $v0
		
		li $v0, 4
		la $a0, frase_final
		syscall
		
		li $v0, 1
		move $a0, $t0
		syscall
		
		li $v0, 10
		syscall