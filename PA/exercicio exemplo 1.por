programa {
  funcao inicio() {
    inteiro sala[4][5]
    inteiro linha
    inteiro coluna

    para (inteiro i = 0; i < 4; i++) {
      para(inteiro j = 0; j < 5; j++) {
        sala[i][j] = 0
      }
    }

    sala[0][2] = 1
    sala [1][1] = 1
    sala [2][3] = 1

    escreva("===========================\n")
    escreva("  MAPA DA SALA DE CINEMA\n")
    escreva("===========================\n\n")

    escreva("     0   1   2   3   4\n")

    para(inteiro i = 0; i < 4; i++) {
      escreva(" ", i, "  ")

      para (inteiro j = 0; j < 5; j++) {
        se (sala[i][j] == 0) {
          escreva("[ ] ")
        } senao {
          escreva("[X] ")
        }
      }
      escreva("\n")
    }

    escreva("\nInforme a linha do assento: ")
    leia(linha)

    escreva("Informe a coluna do assento: ")
    leia(coluna)

    se (linha >= 0 e linha < 4 e coluna >= 0 e coluna < 5) {
      se (sala[linha][coluna] == 0) {
        sala[linha][coluna] = 1

        escreva("\nAssento reservado com sucesso!\n")
      } senao {
        escreva("\nERRO: Este assento já está ocupado!\n")
      }
    } senao {
      escreva("\nERRO: Assento inválido!")
    }  

    escreva("\n=========================")
    escreva("\n    SALA ATUALIZADA")
    escreva("\n=========================")

    escreva("     0   1   2   3   4\n")

    para(inteiro i = 0; i < 4; i++) {
      escreva(" ", i, "   ")

      para (inteiro j = 0; j < 5; j++) {
        se (sala[i][j] == 0) {
          escreva("[ ] ")
        } senao {
          escreva("[X] ")
        }
      }

      escreva("\n")
    }
    }
  }

