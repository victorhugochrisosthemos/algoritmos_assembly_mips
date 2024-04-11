.data
var1: .word 10  # Primeira vari�vel (10)
var2: .word 14  # Segunda vari�vel (14)
equal_msg: .asciiz "sao iguais\n"
not_equal_msg: .asciiz "nao sao iguais\n"

.text
main:
    # Carrega os valores das vari�veis
    lw $t0, var1
    lw $t1, var2

    # Compara as vari�veis
    beq $t0, $t1, equal_case
    j not_equal_case

equal_case:
    # Se forem iguais, exibe a mensagem
    li $v0, 4
    la $a0, equal_msg
    syscall
    j end_program

not_equal_case:
    # Se n�o forem iguais, exibe a outra mensagem
    li $v0, 4
    la $a0, not_equal_msg
    syscall

end_program:
    # Encerra o programa
    li $v0, 10
    syscall
