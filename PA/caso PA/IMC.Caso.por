programa {
  funcao inicio() {
    real peso, altura, imc
    cadeia categoria

    escreva("----IMC CALCULADORA----")

    escreva("\nDigite a sua altura (M): ")
    leia(altura)

    escreva("Digite o seu peso (kg): ")
    leia(peso)

    imc = peso / (altura * altura)

    se (imc < 16) {
      categoria = "magreza grave"
    }

    senao se (imc <= 17) {
      categoria = "magreza moderada"
    }

    senao se (imc <= 18.5) {
      categoria = "magreza leve"
    }

    senao se (imc <= 25.0) {
      categoria = "saudavel"
    }

    senao se (imc <= 30.0) {
      categoria = "sobrepeso"
    }

    senao se (imc <= 35.0) {
      categoria = "obesidade 1"
    }

    senao se (imc <= 40.0) {
      categoria = "obesidade 2"
    }

    senao {
      categoria = "obesidade 3"
    }

    escolha(categoria) {

      caso "magreza grave":
        escreva("Magreza grave ", imc)
        pare

      caso "magreza moderada":
        escreva("Magreza moderada ", imc)
        pare

      caso "magreza leve":
        escreva("Magreza leve ", imc)
        pare

      caso "saudavel":
        escreva("Saudável ", imc)
        pare

      caso "sobrepeso":
        escreva("Sobrepeso ", imc)
        pare

      caso "obesidade 1":
        escreva("Obesidade grau I ", imc)
        pare

      caso "obesidade 2":
        escreva("Obesidade grau II ", imc)
        pare

      caso "obesidade 3":
        escreva("Obesidade grau III ", imc)
        pare
    }
  }
}
