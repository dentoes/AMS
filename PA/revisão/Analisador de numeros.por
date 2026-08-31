programa
{
	funcao inicio()
	{
		inteiro numero, i
		inteiro qtdpositivos = 0, qtdnegativos = 0, qtdzeros = 0
		inteiro somapositivos = 0, somanegativos = 0
		inteiro maiornumero = 0, menornumero = 0

		para (i = 1; i <= 10; i++)
		{
			escreva("Digite o ", i, "º número inteiro: ")
			leia(numero)

			se (i == 1)
			{
				maiornumero = numero
				menornumero = numero
			}
			senao
			{
				se (numero > maiornumero)
				{
					maiornumero = numero
}
se (numero < menornumero)
{
menornumero = numero
	}
}

se (numero > 0)
			{
qtdpositivos = qtdpositivos + 1
	somapositivos = somapositivos + numero
	}
 senao se (numero < 0)
			{
		qtdnegativos = qtdnegativos + 1
		somanegativos = somanegativos + numero
			}
	senao
			{
				qtdzeros = qtdzeros + 1
			}
		}
		escreva("\n=== RESULTADO FINAL ===\n")
		escreva("• Quantidade de números positivos: ", qtdpositivos, "\n")
		escreva("• Quantidade de números negativos: ", qtdnegativos, "\n")
		escreva("• Quantidade de zeros: ", qtdzeros, "\n")
		escreva("• Soma dos números positivos: ", somapositivos, "\n")
		escreva("• Soma dos números negativos: ", somanegativos, "\n")
		escreva("• Maior número: ", maiornumero, "\n")
		escreva("• Menor número: ", menornumero, "\n")
	}
}
