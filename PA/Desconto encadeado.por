programa {
    funcao inicio() {
        real valor_compra, valor_real, desconto

        escreva("Digite o valor da compra: ")
        leia(valor_compra)

        se (valor_compra <= 0) {
          escreva("Digite um valor positivo")
        }
        senao
          se (valor_compra > 1000) {
            desconto = valor_compra * 0.15
            valor_real = valor_compra - desconto
              escreva("Desconto aplicado R$: ", desconto, "\n")
              escreva("Valor final: R$: ", valor_real)
        }
          senao
            se (valor_compra >= 500) {
            desconto = valor_compra * 0.10
            valor_real = valor_compra - desconto
             escreva("Desconto aplicado R$: ", desconto, "\n")
              escreva("Valor final: R$: ", valor_real)

        }
            senao{
            desconto = valor_compra * 0.05
            valor_real = valor_compra - desconto
             escreva("Desconto aplicado R$: ", desconto, "\n")
              escreva("Valor final: R$: ", valor_real)


        }


    }
}    