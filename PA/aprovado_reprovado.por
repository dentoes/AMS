programa {
  funcao inicio() {
    real n1, n2, n3, n4, resultado
    cadeia nome

    escreva("Digite seu nome: ")
    leia(nome)
    limpa()

    escreva("Digite a nota do primeiro bimestre: ")
    leia(n1)
    limpa()

    escreva("Digite a nota do segundo bimestre: ")
    leia(n2)
    limpa()

    escreva("Digite a nota do terceiro bimestre: ")
    leia(n3)
    limpa()

    escreva("Digite a nota do quarto bimestre:")
    leia(n4)
    limpa()

    resultado=(n1 + n2 + n3 + n4)/4

    se (resultado >= 7) {
      escreva(nome, ", sua média é: ", resultado, ", está aprovado!")
    } senao {
      escreva(nome, ", sua média é: ", resultado, ", está reprovado.")
    }
  }
}
