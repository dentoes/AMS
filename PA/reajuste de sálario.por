programa {
  funcao inicio() {
    real salario, reajuste

    escreva("Digite seu salário: ")
    leia(salario)
    limpa()

    se (salario < 0) {
      escreva("Não é possível colocar valores negativos.")
    }
 
     senao se (salario < 500) {
      reajuste = salario * 0.15
      escreva("O reajuste foi de R$", reajuste)
    }

    senao se ((salario <= 500) ou (salario <= 1000)){
      reajuste = salario * 0.10
      escreva("O reajuste foi de R$", reajuste)
    }

    senao se ((salario < 1000) ou (salario <= 1500)){
      reajuste = salario * 0.05
      escreva("O reajuste foi de R$",reajuste)
    }

    senao se (salario > 1500 ) {
      reajuste = salario * 0.02
      escreva("O reajuste foi de R$", reajuste)
    }
  }
}