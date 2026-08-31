programa {
  funcao inicio() {
    
  }
}
algoritmo "Numero Primo"

var
   numero, i, quantidadeDivisores: inteiro

inicio

   escreva("Digite um número inteiro maior que 1: ")
   leia(numero)

   quantidadeDivisores <- 0

   escreval("")
   escreval("Divisores de ", numero, ":")

   para i de 1 ate numero faca

      se numero mod i = 0 entao
         escreval(i)
         quantidadeDivisores <- quantidadeDivisores + 1
      fimse

   fimpara

   escreval("")

   se quantidadeDivisores = 2 entao
      escreval(numero, " -> Primo")
   senao
      escreval(numero, " -> Não é primo")
   fimse

fimalgoritmo

se numero mod i = 0 entao

Divisores de 15:
1
3
5
15

15 -> Não é primo
