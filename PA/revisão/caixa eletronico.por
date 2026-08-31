programa {
  funcao inicio() {
    
  }
}
algoritmo "Analise da Turma"

var
   idade, i: inteiro
   media: real
   soma, maior, menor: real
   aprovados, recuperacao, reprovados: inteiro
   maiores, menores: inteiro
   percentualAprovados, percentualRecuperacao, percentualReprovados: real

inicio

   soma <- 0
   maior <- 0
   menor <- 10

   aprovados <- 0
   recuperacao <- 0
   reprovados <- 0
   maiores <- 0
   menores <- 0

   para i de 1 ate 20 faca

      escreval("")
      escreval("Aluno ", i)

      escreva("Digite a idade: ")
      leia(idade)

      escreva("Digite a média final: ")
      leia(media)

      soma <- soma + media
      se media > maior entao
         maior <- media
      fimse
      se media < menor entao
         menor <- media
      fimse
      se media >= 7 entao
         aprovados <- aprovados + 1
      senao
         se media >= 5 entao
            recuperacao <- recuperacao + 1
         senao
            reprovados <- reprovados + 1
         fimse
      fimse

    
      se idade >= 18 entao
         maiores <- maiores + 1
      senao
         menores <- menores + 1
      fimse

   fimpara

   percentualAprovados <- (aprovados * 100) / 20
   percentualRecuperacao <- (recuperacao * 100) / 20
   percentualReprovados <- (reprovados * 100) / 20

   escreval("")
   escreval("========== RESULTADO ==========")
   escreval("Média geral da turma: ", soma / 20)
   escreval("Maior média: ", maior)
   escreval("Menor média: ", menor)

   escreval("")
   escreval("Quantidade de aprovados: ", aprovados)
   escreval("Quantidade em recuperação: ", recuperacao)
   escreval("Quantidade de reprovados: ", reprovados)

   escreval("")
   escreval("Maiores de idade: ", maiores)
   escreval("Menores de idade: ", menores)

   escreval("")
   escreval("===== PERCENTUAIS =====")
   escreval("Aprovados: ", percentualAprovados, "%")
   escreval("Recuperação: ", percentualRecuperacao, "%")
   escreval("Reprovados: ", percentualReprovados, "%")

fimalgoritmo
