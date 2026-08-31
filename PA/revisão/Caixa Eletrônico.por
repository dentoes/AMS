programa
{
	funcao inicio()
	{
		inteiro valor_saque
		inteiro notas100 = 0, notas50 = 0, notas20 = 0, notas10 = 0
		inteiro valor_restante

		escreva("Digite o valor que deseja sacar: R$ ")
		leia(valor_saque)

		se (valor_saque <= 0)
		{
			escreva("O valor do saque deve ser maior que zero.\n")
		}
		senao
		{
	se (valor_saque > 1000)
	{
	escreva("O valor de saque máximo permitido é R$ 1.000,00.\n")
	}
senao
	{	
	valor_restante = valor_saque
	se (valor_restante >= 500) 
  { notas100 = 5  valor_restante = valor_restante - 500 }
	se (valor_restante >= 400) 
  { notas100 = notas100 + 4  valor_restante = valor_restante - 400 }
	se (valor_restante >= 200) 
  { notas100 = notas100 + 2  valor_restante = valor_restante - 200 }
	se (valor_restante >= 100) 
  { notas100 = notas100 + 1  valor_restante = valor_restante - 100 }
				
	se (valor_restante >= 50)  { notas50 = 1  valor_restante = valor_restante - 50 }
				
	se (valor_restante >= 40)  { notas20 = 2  valor_restante = valor_restante - 40 }
		senao
	{
	se (valor_restante >= 20) { notas20 = 1  valor_restante = valor_restante - 20 }
	}
				
 se (valor_restante >= 10)  { notas10 = 1  valor_restante = valor_restante - 10 }

	se (valor_restante != 0)
{
	escreva("O valor deve ser múltiplo de 10.\n")
	}
	senao
	{
	escreva("\nSaque realizado com sucesso!\n")
	escreva("Notas de R$ 100: ", notas100, "\n")
	escreva("Notas de R$ 50: ", notas50, "\n")
	escreva("Notas de R$ 20: ", notas20, "\n")
	escreva("Notas de R$ 10: ", notas10, "\n")
		}
	  }
  	}
	}
}
