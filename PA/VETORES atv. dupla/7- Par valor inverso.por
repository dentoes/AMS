programa
{
    funcao inicio()
    {
    inteiro vetor[6]
    inteiro i

    
   para (i = 0; i < 6; i++)
    {
    escreva("Digite um valor par: ")
    leia(vetor[i])

      enquanto (vetor[i] % 2 != 0)
     {
    escreva("Valor inválido! Digite um número par: ")
    leia(vetor[i])
  }
  }

       
  escreva("\nValores na ordem inversa: ")

  para (i = 5; i >= 0; i--)
        {
escreva(vetor[i], " ")
        }
    }
}