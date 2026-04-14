programa {
  funcao inicio() {
    real valor_total, valor_desconto, parcela, comissao_vista, comissao_prazo

            escreva("Digite o valor total da compra: ")
                    leia(valor_total)

                            // Desconto de 10%
                                    valor_desconto=valor_total * 0.9

                                            // Parcelamento em 3x
                                                    parcela=valor_total / 3

                                                            // Comissão à vista (5% do valor com desconto)
                                                                    comissao_vista=valor_desconto * 0.05

                                                                            // Comissão parcelada (5% do valor total)
                                                                                    comissao_prazo=(valor_total * 0.05)

                                                                                            escreva("Valor com desconto: R$ ", valor_desconto, "\n")
                                                                                                    escreva("Valor de cada parcela (3x): R$ ", parcela, "\n")
                                                                                                            escreva("Comissão à vista: R$ ", comissao_vista, "\n")
                                                                                                                    escreva("Comissão parcelada: R$ ", comissao_prazo, "\n")
  }
}
