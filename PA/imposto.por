programa {
  funcao inicio() {
    real salario, imposto, salario_liquido

    escreva("digite seu salário: ")
    leia(salario)

     se(salario >= 1500) {
      imposto = salario * 0.04
    } senao {
      imposto = 0
    }

    salario_liquido = salario - imposto
    escreva("Salário líquido: ", salario_liquido)

  }
}
