programa {
  funcao inicio() {
    real celsius
    escreva("Digite a quantidade de temperatura em graus celsius: ")
    leia(celsius)

    se ((celsius > 43) ou (celsius <= -29)) 
    escreva("Digite uma temperatura em que o ser humano possa sobreviver.")

     senao se (celsius <= 10) {
      escreva("Blusa pesada, luvas e cachecol")
    } senao { se (celsius <= 20) {
      escreva("Calça comprida e casaco leve")
    } senao { se (celsius<= 30) {
      escreva("Camiseta confortável e bermuda/saia")
    } senao { se (celsius > 30) {
      escreva("É recomendado usar roupas leves, boné e protetor solar")
    }
    }
    }
    } 
    
  }
}