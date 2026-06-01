programa {
  inclua biblioteca Matematica --> MAT
  funcao inicio() {
    real a, b, c, delta, x1, x2

    escreva("Digite o valor de A: ")
    leia(a)
    limpa()

    escreva("Digite o valor de B: ")
    leia(b)
    limpa()

    escreva("Digite o valor de C: ")
    leia(c)
    limpa()

    delta=(b*b)-(4*a*c)

    escreva("\nDelta=", delta, "\n")

    se (delta > 0) {
      x1=(-b + MAT.raiz(delta, 2)) / (2*a)
      x2=(-b - MAT.raiz(delta, 2)) / (2*a)

      escreva("A equação possui duas raízes reais: \n")
      escreva("x1=", x1, "\n")
      escreva("x2=", x2, "\n")
    }
    senao se (delta==0) {
      x1 = (-b) / (2*a)

      escreva("A equação possui uma raíz real dupla: \n")
      escreva("x=", x1, "\n")
    }
    senao {
      escreva("A equação não possui raízes reais. \n")
    }
  }
}
