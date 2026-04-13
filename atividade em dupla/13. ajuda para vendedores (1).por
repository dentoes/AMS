programa {
  funcao inicio() {
    real valor, resultado, total, solucao

    escreva("digite o valor total de vendas: ")
    leia(valor)

escreva("digite o valor total de vendas para ser adicionado 10% de desconto: ")
    resultado=(valor*0.10)
    escreva("o valor é:", resultado, "\n")

    escreva("digite o valor total de vendas para ser parcelado em 3x sem juros: ")
    total=(valor/3)
    escreva("o valor é: ", total,"\n" )

escreva ("digite o valor total para ser adicionado 5% de desconto em compras à vista: ")
  solucao=(valor+0.5)
  escreva("o valor total é:", solucao, "\n1")
}
}