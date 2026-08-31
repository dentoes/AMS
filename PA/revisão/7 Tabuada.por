programa
{
	funcao inicio()
	{
		inteiro numero, opcao, resultado, contador
		logico continuar = verdadeiro

		enquanto (continuar)
		{
			 
			faca 
			{
				escreva("Digite um número para ver a tabuada: ")
				leia(numero)

				se (numero < 0)
				{
					escreva("Não são aceitos números negativos.\n")
				}
			} 
			enquanto (numero < 0)

			escreva("TABUADA DO ", numero, "\n")
			 
			para (contador = 0; contador <= 10; contador++)
			{
				resultado = numero * contador
				escreva(numero, " x ", contador, " = ", resultado, "\n")
			}

		 
			escreva("\nDeseja consultar outra tabuada?\n")
			escreva("1 - Sim, consultar outra tabuada\n")
			escreva("2 - Não, encerrar\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

			 
			se (opcao == 2)
			{
				continuar = falso
				escreva("Programa encerrado.\n")
			}
			senao se (opcao != 1)
			{
				escreva("Opção inválida! O programa será encerrado.\n")
				continuar = falso
			}
		}
	}
}
