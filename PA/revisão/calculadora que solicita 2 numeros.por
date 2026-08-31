programa {
  funcao inicio() {
  }
}
programa {
	funcao inicio () {
		real num1, num2, resultado
		inteiro opcao, continuar
		logico rodando = verdadeiro
		enquanto (rodando) {
			escreva("Digite o primeiro número: ")
			leia(num1)
			escreva("Digite o segundo número: ")
			leia(num2)
			escreva("\n--- MENU DE OPERAÇÕES ---\n")
			escreva("1 - Somar\n")
			escreva("2 - Subtrair\n")
			escreva("3 - Multiplicar\n")
			escreva("4 - Dividir\n")
			escreva("5 - Resto da divisão\n")
			escreva("Escolha uma opção: ")
			leia(opcao)
			escolha (opcao) {
				caso 1:
					resultado = num1 + num2
					escreva("\nResultado da Soma: ", resultado, "\n")
					pare
				caso 2:
					resultado = num1 - num2
					escreva("\nResultado da Subtração: ", resultado, "\n")
					pare
				caso 3:
					resultado = num1 * num2
					escreva("\nResultado da Multiplicação: ", resultado, "\n")
					pare
				caso 4:
					se (num2 == 0) {
						escreva("\nErro: Não é possível dividir por zero!\n")
					} senao {
						resultado = num1 / num2
						escreva("\nResultado da Divisão: ", resultado, "\n")
					}
					pare
				caso 5:
					se (num2 == 0) {
						escreva("\nErro: Não é possível calcular o resto de uma divisão por zero!\n")
					} senao {
						resultado = num1 % num2 
						escreva("\nResto da Divisão: ", resultado, "\n")
					}
					pare
				caso contrario:
					escreva("\nOpção inválida!\n")
					pare
			}

			escreva("\nDeseja realizar outra operação?\n")
			escreva("1 - Sim (Voltar ao menu)\n")
			escreva("2 - Não (Encerrar)\n")
			escreva("Escolha: ")
			leia(continuar)

			se (continuar == 2) {
				rodando = falso
				escreva("\nCalculadora encerrada. Até logo!\n")
			} senao se (continuar != 1) {
				escreva("\nOpção incorreta. Por segurança, o sistema será encerrado.\n")
				rodando = falso
			}
			escreva("\n-----------------------------------------\n")
		}
	}
}
