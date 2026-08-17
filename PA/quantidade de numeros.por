programa {
  funcao inicio() {
  inteiro quantidade, numero, maior, vezes = 0

escreva("Digite a quantidade de números: ")
leia(quantidade)

  para (inteiro i = 1; i <= quantidade; i++) {
  escreva("Digite o ", i, "º número: ")
  leia(numero)

  se (i == 1) {
  maior = numero
  vezes = 1
  } senao {
  se (numero > maior) {
  maior = numero
  vezes = 1
  } senao se (numero == maior) {
  vezes = vezes + 1
    }
  }
}

escreva("O maior número é: ", maior)
  escreva("\nO maior número foi lido ", vezes, " vez(es).")
  }
}