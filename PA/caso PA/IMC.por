programa {
  funcao inicio() {
    real peso,altura,imc

    escreva("----IMC CALCULADORA----")

    escreva("\nDigite a sua altura (M): ")
    leia(altura)
    escreva("Digite o seu peso (kg): ")
    leia(peso)

      imc = peso / (altura * altura)

       se (imc < 16)
       escreva("Magreza Grave" , imc)

       senao se (imc <= 17)
       escreva("Magreza Moderada" , imc)

       senao se  (imc <= 18.5)
       escreva("Magreza Leve" , imc)

        senao se (imc <= 25.0)
       escreva("Saudável" ,imc)

       senao se (imc <= 30.0)
       escreva("Sobrepeso" , imc)

        senao se (imc <= 35.0)
        escreva("Obesidade grau |" , imc)

        senao se (imc <= 40.0)
        escreva("Obesidade grau ||", imc)

        senao
        escreva("Obesidade grau |||", imc)
        
  }




}
