programa {
  funcao inicio() {
    
  }
}
algoritmo "AnaliseNumeros"
var
   i, num: inteiro
   qtd_positivos, qtd_negativos, qtd_zeros: inteiro
   soma_positivos, soma_negativos: inteiro
   maior, menor: inteiro
   primeiro: logico
inicio
   qtd_positivos <- 0
   qtd_negativos <- 0
   qtd_zeros <- 0
   soma_positivos <- 0
   soma_negativos <- 0
   primeiro <- verdadeiro

   para i de 1 ate 10 faca
      escreva("Digite o ", i, "º número inteiro: ")
      leia(num)
      se primeiro entao
         maior <- num
         menor <- num
         primeiro <- falso
      senao
         se num > maior entao
            maior <- num
         fimse
         se num < menor entao
            menor <- num
         fimse
      fimse

      se num > 0 entao
         qtd_positivos <- qtd_positivos + 1
         soma_positivos <- soma_positivos + num
      senao
         se num < 0 entao
            qtd_negativos <- qtd_negativos + 1
            soma_negativos <- soma_negativos + num
         senao
            qtd_zeros <- qtd_zeros + 1
         fimse
      fimse
   fimpara

   escreval("----------------------------------------")
   escreval("Quantidade de números positivos: ", qtd_positivos)
   escreval("Quantidade de números negativos: ", qtd_negativos)
   escreval("Quantidade de zeros: ", qtd_zeros)
   escreval("Soma dos números positivos: ", soma_positivos)
   escreval("Soma dos números negativos: ", soma_negativos)
   escreval("Maior número: ", maior)
   escreval("Menor número: ", menor)
fimalgoritmo
