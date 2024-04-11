.data
    # Dados na mem�ria
    valores:
        .word 1   # Endere�o 100: Valor 1
        .word 2   # Endere�o 104: Valor 2
        .word 4   # Endere�o 108: Valor 4
        .word 8   # Endere�o 112: Valor 8
        .word 16  # Endere�o 116: Valor 16

.text
    # Carrega o valor 2 (endere�o 104) no registrador r1
    addi r2, r0, 104
    lw r1, -4(r2)  # r1 = (valor no endere�o 100)

    # Configura o valor 116 no registrador r3
    addi r3, r0, 116

    # R�tulo para o loop
    label:
        # Incrementa o registrador r2 em 4 (avan�a para o pr�ximo valor)
        addi r2, r2, 4

        # Carrega o valor no endere�o r2-4 no registrador r4
        lw r4, -4(r2)

        # Multiplica r4 por 2
        add r4, r4, r4

        # Adiciona r4 a r1
        add r1, r4, r1

        # Verifica se r2 � diferente de r3
        bne r2, r3, label

    # O loop termina quando r2 = 116
    # O valor final de r1 ser� 29 (1 + 2*2 + 4*2 + 8*2)
