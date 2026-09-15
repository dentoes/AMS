programa {
  funcao inicio() {
    inteiro A[6]
    inteiro soma
    inteiro i

    A[0] = 1
    A[1] = 0
    A[2] = 5
    A[3] = -2
    A[4] = -5
    A[5] = 7
    
    soma = A[0] + A[1] + A[5]
    A[4] = 100

    para (i = 0; i < 6; i++) {
      escreva(A[i], "\n")
    }


    escreva("Os valores são: ", soma, "\n")

    escreva("O valor do vetor [4] é: ", A[4])

    
  }
}
