programa
{
	funcao inicio()
	{
	inteiro valorSaque
	inteiro notas100, notas50, notas20, notas10
	inteiro resto

	escreva("Digite o valor que deseja sacar: R$ ")
	leia(valorSaque)

	se (valorSaque <= 0)
{
	escreva("O valor do saque deve ser maior que zero.\n")
	}
	senao se (valorSaque % 10 != 0)
	{
	escreva("O valor deve ser múltiplo de 10, tente novamente.\n")
	}
	senao se (valorSaque > 1000)
	{
	escreva("O saque máximo permitido é R$ 1.000,00.\n")
	}
	senao
	{
		notas100 = valorSaque / 100
		resto = valorSaque % 100

		notas50 = resto / 50
		resto = resto % 50

		notas20 = resto / 20
    resto = resto % 20

	 notas10 = resto / 10

	escreva("\nSaque realizado com sucesso\n")
	escreva("Notas de R$ 100: ", notas100, "\n")
	escreva("Notas de R$ 50: ", notas50, "\n")
	escreva("Notas de R$ 20: ", notas20, "\n")
	escreva("Notas de R$ 10: ", notas10, "\n")
	}
	}
}
