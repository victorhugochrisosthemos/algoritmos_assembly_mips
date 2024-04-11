.data
    save:   .word 8, 7, 6, 5, 4, 3, 2, 1   # Array 'save'
    k:      .word 1                       # Valor 'k'
    i:      .word 0                       # Índice 'i'

.text
main:
    # Inicialização
    la $t0, save     # Carrega o endereço base do array 'save' em $t0
    lw $t1, k        # Carrega o valor de 'k' em $t1
    lw $t2, i        # Carrega o índice 'i' em $t2

loop:
    lw $t3, 0($t0)   # Carrega o valor de save[i] em $t3
    beq $t3, $t1, continue  # Se save[i] == k, continue para a próxima iteração
    j end_loop       # Caso contrário, saia do loop

continue:
    addi $t2, $t2, 1  # Incrementa o índice 'i'
    j loop           # Volta para o início do loop

end_loop:
    # Aqui você pode adicionar qualquer código que desejar após sair do loop

    # Encerra o programa
    li $v0, 10       # Código de saída
    syscall
