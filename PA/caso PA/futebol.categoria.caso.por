programa {
  funcao inicio() {
    cadeia categoria
    inteiro idade

    escreva("Digite sua idade: \n")
    leia(idade)

    se (idade >= 5 e idade <= 10) {
      categoria = "5 ate 10"
    }

    senao se (idade >= 11 e idade <= 15) {
      categoria = "11 ate 15"
    }

    senao se (idade >= 16 e idade <= 20) {
      categoria = "16 ate 20"
    }

    senao se (idade >= 21 e idade <= 25) {
      categoria = "21 ate 25"
    }

    senao se (idade < 0) {
      categoria = "negativo"
    }

    senao {
      categoria = "nao-identificado"
    }

    escolha(categoria) {

      caso "5 ate 10":
        escreva("Sua categoria é: Infantil.")
        pare

      caso "11 ate 15":
        escreva("Sua categoria é: Juvenil")
        pare

      caso "16 ate 20":
        escreva("Sua categoria é: Junior")
        pare

      caso "21 ate 25":
        escreva("Sua categoria é: Profissional.")
        pare

      caso "nao-identificado":
        escreva("Categoria não identificada.")
        pare

      caso "negativo":
        escreva("Categoria não identificada.")
        pare
    }
  }
}