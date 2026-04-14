programa {
  funcao inicio() {
  real comprimento, largura, preco_metro, perimetro, custo

          escreva("Digite o comprimento do terreno: ")
                  leia(comprimento)

                          escreva("Digite a largura do terreno: ")
                                  leia(largura)

                                          escreva("Digite o preço do metro da tela: ")
                                                  leia(preco_metro)

                                                          // Perímetro do terreno
                                                                  perimetro=2 * (comprimento + largura)

                                                                          // Custo total
                                                                                  custo=perimetro * preco_metro

                                                                                          escreva("Custo para cercar o terreno: R$ ", custo, "\n")
  }
}
