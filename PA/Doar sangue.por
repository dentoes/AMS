programa {
  funcao inicio() {
    real idade
    cadeia nome

    escreva("Digite seu nome: ")
    leia(nome)
    limpa()

    escreva("Digite sua idade: ")
    leia(idade)
    limpa()
    se (idade >= 18) {
      escreva("Com esta idade é possível doar sangue.")
    }
    limpa()
    
    se (idade > 67) {
      escreva("Com esta idade não é possível doar sangue.")
    } senao {
      escreva("Com esta idade é possível doar sangue.")
    }
  }
}
