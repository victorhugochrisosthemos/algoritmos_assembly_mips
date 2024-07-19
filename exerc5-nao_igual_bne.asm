# Digite dois numeros e compare, se o primeiro for maior que o segundo, mostrar valor1 é maior quue valor2 na tela
.data
    numero: .asciiz "Digite um numero e aperte enter: "
    eh_igual: .asciiz " eh igual a "
    desigual: .asciiz " nao eh igual a "
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
        
        bne $t0, $t1, nao_igual
        j igual
        
    nao_igual:
        move $a0, $t0
        li $v0, 1
        syscall
        
        li $v0, 4
        la $a0, desigual
        syscall
        
        move $a0, $t1
        li $v0, 1
        syscall
        
        j fim
        
    igual:
        move $a0, $t0
        li $v0, 1
        syscall
        
        li $v0, 4
        la $a0, eh_igual
        syscall
        
        move $a0, $t1
        li $v0, 1
        syscall
    
    fim:
        li $v0, 10
        syscall
