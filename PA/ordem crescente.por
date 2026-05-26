programa {
  funcao inicio() {
   real  primeiroNumero, segundoNumero, terceiroNumero, resultado

    escreva("Digite o primeiro número: ")
    leia(primeiroNumero)
    escreva("Digite o segundo número: ")
    leia(segundoNumero)
    escreva("Digite o terceiro número: ")
    leia(terceiroNumero)

   se (primeiroNumero < segundoNumero e primeiroNumero < terceiroNumero) { 
      escreva(primeiroNumero, "-", segundoNumero, "-", terceiroNumero, "-" )
    } 
    
     senao se (segundoNumero < primeiroNumero e segundoNumero < terceiroNumero) {
      escreva(segundoNumero, "-", terceiroNumero, "-", primeiroNumero, "-" )
     } 
     
     senao { 
       (terceiroNumero < primeiroNumero e terceiroNumero < segundoNumero)
       escreva(terceiroNumero, "-", primeiroNumero, "-", segundoNumero, "-" ) 
     } 
  }
}
