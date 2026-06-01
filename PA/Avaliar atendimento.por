programa {
  funcao inicio() {
    inteiro nota

    escreva("Digite uma nota de 1 a 5: ")
    leia(nota)

    se ((nota > 5) ou (nota < 1)){
      escreva("Nota Inválida!!")
    }

    se (nota == '1'){
      escreva("Nota ruim!")
    }

    se (nota == '2'){
      escreva("Nota Regular!")
    }

    se (nota == '3'){
      escreva("Nota Boa!")
    }

    se (nota == '4'){
      escreva("Nota Ótima!")
    }

    se (nota == '5'){
      escreva("Nota Excelente!")
    }

  }
}
