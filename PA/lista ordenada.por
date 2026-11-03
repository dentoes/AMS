programa {
  funcao inicio() {
    inteiro lista[10]
    inteiro qtd = 0
    inteiro opcao, valor, pos, i
    faca{
      escreva("\n 1 - Inserir\n 2 - Remover\n 3 - Mostrar\n 4 - Sair\n Opção: ")
      leia(opcao)
      escolha(opcao) {
        caso 1:
         se (qtd == 10){
           escreva("Lista cheia\n")
         } senao {
          escreva("Valor : ")
          leia(valor)
          pos = qtd
          para (i = qtd - 1; i >= 0; i--){
            se(lista[i] > valor){
              pos = i
            }
          }
           para(i = qtd; i > pos; i--){
             lista[i] = lista[i - 1]
           }
           lista[pos] = valor
           qtd++
         }
         pare

         caso 2: 
         escreva("Valor a remover: ")
         leia(valor)
         pos = -1
         para(i = 0; i < qtd; i++)
         se(lista[i] == valor e pos == -1){
           pos = -1
         }
      }
      se (pos == -1){
        escreva("Valor não encontrado\n")
      } senao {
        para(i = pos; i < qtd; i++) {
          lista[i] = lista[i + 1]
        }
        qtd--
      }
      pare
      
    }
  }
}
