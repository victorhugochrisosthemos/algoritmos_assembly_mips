.data
vetor: .space 32 #vetor de 8 elementos de 4 bytes cada
display_message: .asciiz "Leitura dos elementos do vetor:\n"
input1: .asciiz "Insira o elemento na posicao A["
input2: .asciiz "]: "
display_message2: .asciiz "\nElementos do vetor:\n"
output1: .asciiz "A["
output2: .asciiz "] = "
newline: .asciiz "\n"

.text
.globl main

main:
    #Inicializa o vetor
    li $t0, 0           #índice do vetor
    la $t1, vetor       #endereço base do vetor
    
    #Exibe mensagem de leitura
    li $v0, 4
    la $a0, display_message
    syscall

input_loop:
    
    #Carrega a string "Insira o elemento na posição A["
    li $v0, 4
    la $a0, input1
    syscall

    #Carrega o valor do índice para exibir na string
    move $a0, $t0
    li $v0, 1
    syscall

    #Carrega a string de fechamento "]"
    li $v0, 4
    la $a0, input2
    syscall

    #Solicita input do usuário
    li $v0, 5
    syscall
    move $t2, $v0

    #Armazena o input no vetor
    #Calcula o deslocamento correto multiplicando o índice pelo tamanho do elemento (4 bytes)
    sll $t3, $t0, 2      #$t3 = $t0 * 4
    add $t4, $t1, $t3    #$t4 = $t1 + $t3 (endereço do elemento no vetor)
    sw $t2, 0($t4)       #Armazena o valor no vetor

    #Atualiza índice e verificar se todos os elementos foram lidos
    addi $t0, $t0, 1
    bne $t0, 8, input_loop
    
    li $v0, 4
    la $a0, display_message2
    syscall
    
    li $t0, 0 #Reseta o índice do vetor para exibir os elementos corretamente

#Loop para exibir os elementos do vetor
output_loop:
    #Verifica se todos os elementos foram exibidos
    beq $t0, 8, exit
    
    #Carrega a string "A["
    li $v0, 4
    la $a0, output1
    syscall

    #Carregaa o valor do índice para exibir na string
    move $a0, $t0
    li $v0, 1
    syscall

    #Carrega a string de fechamento "] = "
    li $v0, 4
    la $a0, output2
    syscall

    #Carrega valor do vetor para exibir o int
    sll $t3, $t0, 2      #$t3 = $t0 * 4
    add $t4, $t1, $t3    #$t4 = $t1 + $t3 (endereço do elemento no vetor)
    lw $a0, 0($t4)       #Carrega o valor do vetor para imprimir
    li $v0, 1
    syscall

    #Quebra a linha para exibir o próximo valor
    li $v0, 4
    la $a0, newline
    syscall

    #Avança para o próximo elemento do vetor
    addi $t0, $t0, 1

    #Loop para imprimir o próximo elemento
    j output_loop

exit:
    #Encerra o programa
    li $v0, 10
    syscall
