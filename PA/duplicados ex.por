programa {
  funcao inicio() {
    //Remover Duplicados

    inteiro lista[10]
    inteiro qtd = 0
    inteiro n, i, j, k

     enquanto(qtd < 10){
      escreva("Digite um número (0 para parar): ")
      leia(n)
      se(n == 0) {
        pare
      }
      lista[qtd] = n
      qtd++
     }
     i = 0
     enquanto(i < qtd) {
      j = i + 1
      enquanto(j < qtd) {
        se(lista[j] == lista[i]){
          para (k = j; k < qtd - 1; k++){
            lista[k] = lista[k + 1]
          }
          qtd--
        } senao {
          j++
        }
      }
      i++
     }
        escreva("Sem Duplicados: ")
        para (i = 0; i < qtd; i++) {
           escreva(lista[i], " ")
        }


  }
}
