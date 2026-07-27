programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro numeromagico, numero, tentativas
    numeromagico = u.sorteia(1, 100)
    tentativas = 0
    numero = 0

faca{
      escreva("Digite um número: ")
      leia(numero)
      tentativas++

      se(numero <numeromagico)
      {
        escreva("O Número mágico é MAIOR \n\n")
      }
      senao {
        se(numero>numeromagico)
        {
          escreva("O número mágico é MENOR \n\n")
        }
      }
    } enquanto(numero != numeromagico)
    escreva("\n Parabéns! Você acertou o número mágico")
    escreva("\n Número de tentativas: ", tentativas)
  }
}
