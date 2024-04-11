.data #Esta se��o declara dados est�ticos, como strings e vari�veis
	prompt: .asciiz "Digite um n�mero inteiro: "  # Mensagem de prompt

.text #Esta se��o cont�m o c�digo execut�vel
	main: #O ponto de entrada do programa
    		# Imprime a mensagem de prompt
    		li $v0, 4 #Carrega o valor 4 no registrador $v0, indicando que queremos imprimir uma string
    		la $a0, prompt #Carrega o endere�o da string prompt no registrador $a0
    		syscall #Realiza a chamada do sistema para imprimir a string na tela

    		# L� um n�mero inteiro do usu�rio
    		li $v0, 5 #Carrega o valor 5 no registrador $v0, indicando que queremos ler um inteiro da entrada padr�o
    		syscall #Realiza a chamada do sistema para ler o inteiro digitado pelo usu�rio e armazena-o no registrador $v0
    		move $t0, $v0  # Move o n�mero lido para o registrador $t0

    		# Imprime o n�mero na tela
    		li $v0, 1 #Carrega o valor 1 no registrador $v0, indicando que queremos imprimir um inteiro
    		move $a0, $t0 #Move o valor do registrador $t0 para o registrador $a0 (que � usado para imprimir).
    		syscall #Realiza a chamada do sistema para imprimir o n�mero inteiro na tela

    		# Encerra o programa
    		li $v0, 10 #Carrega o valor 10 no registrador $v0, indicando que queremos encerrar o programa
    		syscall #Realiza a chamada do sistema para finalizar o programa
    