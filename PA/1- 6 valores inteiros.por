programa {
  funcao inicio() {
    inteiro valores[6]
    inteiro i

    escreva("Digite 6 valores! \n")

    para (i = 0; i < 6; i++) {
      escreva("Digite o valor ", i + 1, ": ")
      leia(valores[i])
    }

    para(i = 0; i < 6; i++) {
      escreva("Os valores são: [", valores[6], "]")
    }
  }
}
