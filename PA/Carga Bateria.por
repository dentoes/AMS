programa {
  funcao inicio() {
    inteiro nivel_bateria

     escreva("Digite a porcentagem (%) da bateria: ")
     leia(nivel_bateria)

     se ((nivel_bateria < 0) ou (nivel_bateria > 100)) 
      escreva("Essa carga não pode ser avaliada.")
     

      senao se (nivel_bateria > 80) {
      escreva("Carga completa ou alta\n")
     }
     senao se (nivel_bateria >= 21) {
      escreva("Carga normal de uso\n")
     }
     senao se (nivel_bateria >= 11) {
      escreva("Bateria Fraca - Sugerir carregador\n")
     }
     senao {
      escreva("Ativação do modo de economia extrema\n")
     }


     escreva("----Verificação concluída----")
  }
}