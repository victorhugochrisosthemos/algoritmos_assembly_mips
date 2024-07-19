# Digite dois numeros e compare, se o primeiro for maior que o segundo, mostrar valor1 é maior quue valor2 na tela
.data
    numero: .asciiz "Digite um numero e aperte enter: "
    frase_maior: .asciiz " eh maior que "
    frase_menor: .asciiz " eh menor que "
.text
    main:
        li $v0, 4
        la $a0, numero
        syscall
        
        li $v0, 5
        syscall
        move $t0, $v0
        
        li $v0, 4
        la $a0, numero
        syscall
        
        li $v0, 5
        syscall
        move $t1, $v0
        
        bgt $t0, $t1, eh_maior
        j nao_maior
        
    eh_maior:
        move $a0, $t0
        li $v0, 1
        syscall
        
        li $v0, 4
        la $a0, frase_maior
        syscall
        
        move $a0, $t1
        li $v0, 1
        syscall
        
        j fim
        
    nao_maior:
        move $a0, $t0
        li $v0, 1
        syscall
        
        li $v0, 4
        la $a0, frase_menor
        syscall
        
        move $a0, $t1
        li $v0, 1
        syscall
    
    fim:
        li $v0, 10
        syscall