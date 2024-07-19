# Mostrar na tela 'Hello World'
.data
	frase: .asciiz	"Hello World"
.text
	li $v0, 4
	la $a0, frase
	syscall
	
	li $v0, 10
	syscall