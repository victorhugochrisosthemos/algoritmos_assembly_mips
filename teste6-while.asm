.data
save:   .word 8, 7, 6, 5, 4, 3, 2, 1

.text
main:
    # Inicialização das variáveis
    li $s3, 0   # i = 0
    li $s5, 1   # k = 1

while_loop:
    # Comparação: save[i] == k
    lw $t0, save($s3)   # Carrega save[i] em $t0
    beq $t0, $s5, increment_i   # Se save[i] == k, vá para increment_i
    j end_while

increment_i:
    # Incremento: i += 1
    addiu $s3, $s3, 1
    j while_loop

end_while:
    # Fim do laço
    # Aqui você pode adicionar mais instruções, se necessário
    # Por exemplo, retornar 0 (return 0)

# Fim do programa
