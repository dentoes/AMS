programa {
  funcao inicio() {
    inteiro lista[10]
    inteiro qtd = 0
    inteiro n

    enquanto(qtd < 10) {
     escreva("Digite um número (0 para parar): ")
     leia(n)
     se (n == 0) {
      lista[qtd] = n
      qtd++
     }
     escreva("Elementos: ")
     para(inteiro i = 0; i < qtd; i++) {
      escreva(lista[i], "  ")
     }
     escreva("\n qtd = ", qtd, "\n")
    }
  }
}
