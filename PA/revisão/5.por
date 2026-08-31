programa {
  funcao inicio() {
    
  }
}
Claro! Considerando Portugol/Visualg, usando enquanto, escolha/caso e se:

algoritmo "Votacao"

var
   voto: inteiro
   candidatoA, candidatoB, candidatoC: inteiro
   nulos, brancos, total: inteiro
   maior: inteiro

inicio

   candidatoA <- 0
   candidatoB <- 0
   candidatoC <- 0
   nulos <- 0
   brancos <- 0
   total <- 0

   enquanto voto <> 0 faca

      escreval("")
      escreval("===== VOTAÇÃO =====")
      escreval("1 - Candidato A")
      escreval("2 - Candidato B")
      escreval("3 - Candidato C")
      escreval("4 - Voto nulo")
      escreval("5 - Voto em branco")
      escreval("0 - Encerrar votação")
      escreva("Digite seu voto: ")
      leia(voto)

      escolha voto

         caso 1
            candidatoA <- candidatoA + 1
            total <- total + 1

         caso 2
            candidatoB <- candidatoB + 1
            total <- total + 1

         caso 3
            candidatoC <- candidatoC + 1
            total <- total + 1

         caso 4
            nulos <- nulos + 1
            total <- total + 1

         caso 5
            brancos <- brancos + 1
            total <- total + 1

         caso 0
            escreval("Votação encerrada.")

         outrocaso
            escreval("Voto inválido!")

      fimescolha

   fimenquanto

   escreval("")
   escreval("===== RESULTADO =====")
   escreval("Total de votos: ", total)
   escreval("Candidato A: ", candidatoA)
   escreval("Candidato B: ", candidatoB)
   escreval("Candidato C: ", candidatoC)
   escreval("Votos nulos: ", nulos)
   escreval("Votos em branco: ", brancos)

   maior <- candidatoA

   se candidatoB > maior entao
      maior <- candidatoB
   fimse

   se candidatoC > maior entao
      maior <- candidatoC
   fimse

   se (candidatoA = maior) e (candidatoB = maior) e (candidatoC = maior) entao
      escreval("Houve empate entre os candidatos.")

   senao
      se (candidatoA = maior) e (candidatoB = maior) entao
         escreval("Houve empate entre Candidato A e Candidato B.")
      senao
         se (candidatoA = maior) e (candidatoC = maior) entao
            escreval("Houve empate entre Candidato A e Candidato C.")
         senao
            se (candidatoB = maior) e (candidatoC = maior) entao
               escreval("Houve empate entre Candidato B e Candidato C.")
            senao
               se candidatoA = maior entao
                  escreval("Candidato vencedor: Candidato A")
               senao
                  se candidatoB = maior entao
                     escreval("Candidato vencedor: Candidato B")
                  senao
                     escreval("Candidato vencedor: Candidato C")
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

fimalgoritmo

Estruturas utilizadas
enquanto → mantém a votação acontecendo até o voto 0.
escolha/caso → identifica qual opção foi escolhida.
se → determina o maior número de votos e verifica possíveis empates.
total → conta apenas os votos efetivamente registrados (1 a 5); o 0 não entra na contagem.