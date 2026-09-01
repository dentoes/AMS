programa {
  funcao inicio() {
    real n1, n2, resultado
    caracter operacao

    escreva("Digite o primeiro número: ")
    leia(n1)

    escreva("Selecione o sinal que deseja utilizar para o cálculo:\nSoma (+)\nSubtração (-)\nDivisão (/)\nMultiplicação (*)\n \nR: ")
    leia(operacao)


   
    escreva("\nDigite o segundo número: ")
    leia(n2)


    escolha(operacao){
      caso "+":
      resultado = n1 + n2
      escreva("O resultado da soma é: ", resultado)
      pare

      caso "-":
      resultado = n1 - n2
      escreva("O resultado da subtração é: ", resultado)
      pare

      caso "/":
      resultado = n1 / n2
      escreva("O resultado da divisão é: ", resultado)
      pare

      caso "*":
      resultado = n1 * n2
      escreva("O resultado da multiplicação é: ", resultado)
      pare

      caso contrario: 
      escreva("Não é possível finalizar o cálculo sem um sinal.")
    }


  }
}
