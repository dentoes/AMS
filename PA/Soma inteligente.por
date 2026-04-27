programa {
  funcao inicio() {
    real n_1, n_2 
    escreva("digite o primeiro número: ")
    leia(n_1)
    escreva("digite o segundo número: ")
    leia(n_2)

     se (  n_1 + n_2 > 10) {
      escreva(n_1 + n_2, ", SUCESSO!")
    } senao {
     escreva(n_1 + n_2, ", TENTE VALORES MAIORES!")
  }
  }
}
