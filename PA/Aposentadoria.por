programa {
  funcao inicio() {
    real idade, tempo_servico

    escreva("Digite sua idade: ")
    leia(idade)

    escreva("Digite seu tempo de serviço (ANOS): ")
    leia(tempo_servico)

    se (idade >= 65) {
      escreva("É possível se aposentar por sua idade. ")
    }

    senao se (tempo_servico >= 30){
      escreva("É possível se aposentar por seu tempo de serviço.")
      }

    senao se (idade == 60 e tempo_servico >= 25) {
        escreva("É possível se aposentar por seu tempo de serviço e idade.")
      }
      
    senao 
      escreva("Você não atende os requisitos para aposentadoria.")
    
  }
}