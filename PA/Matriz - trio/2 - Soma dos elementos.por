programa
{
 funcao inicio()
    {
    inteiro matriz[3][3]
    inteiro linha, coluna, soma

      soma = 0

    para (linha = 0; linha < 3; linha++) {
      para (coluna = 0; coluna < 3; coluna++)
        {
         escreva("Digite o valor da linha ", linha + 1, " e coluna ", coluna + 1, ": ")
          leia(matriz[linha][coluna])

        soma = soma + matriz[linha][coluna]
           }
        }
  escreva("\nA soma de todos os elementos da matriz é: ", soma)
    }
}