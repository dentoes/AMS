programa {
  funcao inicio() {
    inteiro valores[6]
    inteiro i

    escreva("Digite 6 valores! \n")

    para (i = 0; i < 6; i++) {
      escreva("Digite o valor ", i + 1, ": ")
      leia(valores[i])
    }
      limpa()
    para(i = 0; i < 6; i++) {
      escreva("\n")
      escreva("[", valores[i], "]")
    }
  }
}