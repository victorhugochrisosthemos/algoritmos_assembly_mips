.data
    save:   .word 8, 7, 6, 5, 4, 3, 2, 1   # Array 'save'
    k:      .word 1                       # Valor 'k'
    i:      .word 0                       # �ndice 'i'

.text
main:
    # Inicializa��o
    la $t0, save     # Carrega o endere�o base do array 'save' em $t0
    lw $t1, k        # Carrega o valor de 'k' em $t1
    lw $t2, i        # Carrega o �ndice 'i' em $t2

loop:
    lw $t3, 0($t0)   # Carrega o valor de save[i] em $t3
    beq $t3, $t1, continue  # Se save[i] == k, continue para a pr�xima itera��o
    j end_loop       # Caso contr�rio, saia do loop

continue:
    addi $t2, $t2, 1  # Incrementa o �ndice 'i'
    j loop           # Volta para o in�cio do loop

end_loop:
    # Aqui voc� pode adicionar qualquer c�digo que desejar ap�s sair do loop

    # Encerra o programa
    li $v0, 10       # C�digo de sa�da
    syscall
