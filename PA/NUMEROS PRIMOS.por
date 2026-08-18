programa
{
  funcao inicio()
  {
    inteiro numero, i, divisores

    escreva("Digite um número inteiro maior que 1: ")
    leia(numero)

    se (numero <= 1)
    {
   escreva("Número inválido! Digite um número maior que 1.")
    }
    senao{
        
   divisores = 0
    para (i = 1; i <= numero; i++)
    {
      se (numero % i == 0)
      {
      divisores = divisores + 1
      }
        }

    se (divisores == 2)
      {
      escreva("O número ", numero, " é primo.")
      }
      senao
      {
      escreva("O número ", numero, " não é primo.")
      }
       }
   }
}