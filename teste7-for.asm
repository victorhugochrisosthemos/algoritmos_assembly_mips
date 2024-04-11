.data
    tmp: .word 0

.text
.globl main
main:
    li $t0, 0          # Inicializa j = 0
    li $t1, 0          # Inicializa tmp = 0

loop:
    bge $t0, 15, exit  # Se j >= 15, saia do loop
    sll $t2, $t1, 1    # tmp *= 2 (shift left by 1)
    addi $t2, $t2, 3   # tmp += 3
    move $t1, $t2      # Atualiza tmp
    addi $t0, $t0, 1   # Incrementa j
    j loop             # Volta para o início do loop

exit:
    # Aqui você pode usar o valor final de tmp (em $t1) conforme necessário
    # Por exemplo, armazená-lo em uma variável ou imprimir na tela
