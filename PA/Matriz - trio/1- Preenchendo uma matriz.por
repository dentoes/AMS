programa
{
    funcao inicio()
    {
        inteiro matriz[3][3]
        inteiro linha, coluna

        para (linha = 0; linha < 3; linha++)
        {
            para (coluna = 0; coluna < 3; coluna++)
            {
                escreva("Digite o valor da linha ", linha + 1,
                        " e coluna ", coluna + 1, ": ")
                leia(matriz[linha][coluna])
            }
        }
        escreva("\nMatriz 3 x 3:\n")

        para (linha = 0; linha < 3; linha++)
        {
            para (coluna = 0; coluna < 3; coluna++)
            {
                escreva(matriz[linha][coluna], "\t")
            }
            escreva("\n")
        }
    }
}