programa {
  funcao inicio() {
    inteiro n_1, n_2, n_3, resultado1, resultado2, resultado3

    escreva("Digite o primeiro número: ")
   leia(n_1)

   escreva("Digite o segundo número: ")
   leia(n_2)

   escreva("Digite o terceiro número: ")
   leia(n_3)

   resultado1=(n_1)
   resultado2=(n_2)
   resultado3=(n_3)
   limpa()

   se(n_1 > n_2) {
    se(n_2 > n_3) {
      escreva("A ordem decrescente é: ")
      escreva("\n", resultado1)
      escreva("\n", resultado2)
      escreva("\n", resultado3)
    }
   }

   se(n_1 > n_3) {
    escreva("A ordem decrescente é: ")
    se (n_3 > n_2) {
      escreva("\n", resultado1)
      escreva("\n", resultado3)
      escreva("\n", resultado2)
    }
   }

   se (n_2 > n_1) {
    se (n_1 > n_3) {
      escreva("A ordem decrescente é: ")
      escreva("\n", resultado2)
      escreva("\n", resultado1)
      escreva("\n", resultado3)
    }
   }

   se (n_2 > n_3) {
    se (n_3 > n_1) {
      escreva("A ordem decrescente é: ")
      escreva("\n", resultado2)
      escreva("\n", resultado3)
      escreva("\n", resultado1)
    }
   }

   se (n_3 > n_2) {
    se (n_2 > n_1) {
      escreva("A ordem decrescente é: ")
      escreva("\n", resultado3)
      escreva("\n", resultado2)
      escreva("\n", resultado1)
    }
   }

   se (n_3 > n_2) {
    se (n_2 > n_1) {
      escreva("A ordem decrescente é: ")
      escreva("\n", resultado3)
      escreva("\n", resultado1)
      escreva("\n", resultado2)
    }
   }

   se (n_3 > n_1) {
    se (n_1 > n_2) {
     escreva("A ordem decrescente é: ")
     escreva("\n", resultado3)
      escreva("\n", resultado1)
      escreva("\n", resultado2)
    }
   }
   }
  }

