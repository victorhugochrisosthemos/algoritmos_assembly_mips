.data
newline: .asciiz "\n"  # String para pular linha

.text
main:
    li $t0, 0  # Inicializa o contador i com 0

loop:
    # Imprime o valor de i
    li $v0, 1
    move $a0, $t0
    syscall

    # Pula uma linha
    li $v0, 4
    la $a0, newline
    syscall

    # Incrementa i
    addi $t0, $t0, 1

    # Verifica se i < 10
    blt $t0, 10, loop

    # Encerra o programa
    li $v0, 10
    syscall