.data
save:   .word 8, 7, 6, 5, 4, 3, 2, 1

.text
main:
    # Inicializa��o das vari�veis
    li $s3, 0   # i = 0
    li $s5, 1   # k = 1

while_loop:
    # Compara��o: save[i] == k
    lw $t0, save($s3)   # Carrega save[i] em $t0
    beq $t0, $s5, increment_i   # Se save[i] == k, v� para increment_i
    j end_while

increment_i:
    # Incremento: i += 1
    addiu $s3, $s3, 1
    j while_loop

end_while:
    # Fim do la�o
    # Aqui voc� pode adicionar mais instru��es, se necess�rio
    # Por exemplo, retornar 0 (return 0)

# Fim do programa
