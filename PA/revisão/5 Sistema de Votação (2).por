programa
{
    funcao inicio()
    {
    inteiro voto
    inteiro total_votos = 0
    inteiro candidato_a = 0
    inteiro candidato_b = 0
    inteiro candidato_c = 0
    inteiro voto_nulo = 0
    inteiro voto_branco = 0

    escreva("VOTAÇÃO PARA REPRESENTANTE DE TURMA (Vote quantas vezes quiser e encerre utilizando o número 0): \n")

    enquanto (verdadeiro)
      {
  escreva("\n1 - Candidato A\n")
  escreva("2 - Candidato B\n")
  escreva("3 - Candidato C\n")
  escreva("4 - Voto nulo\n")
  escreva("5 - Voto em branco\n")
  escreva("0 - Encerrar votação\n")
  escreva("Escolha uma opção: ")
  leia(voto)
  limpa()

  se (voto == 0)
    {
  pare
   }
  senao se (voto == 1)
{
  candidato_a++
  total_votos++
    }
 senao se (voto == 2)
 {
  candidato_b++
  total_votos++
    }
    senao se (voto == 3)
        {
    candidato_c++
    total_votos++
   }
    senao se (voto == 4)
    {
    voto_nulo++
    total_votos++
      }
  senao se (voto == 5)
      {
  voto_branco++
  total_votos++
      }
    senao
     {
   escreva("Opção inválida! Digite uma opção de 0 a 5.\n")
     }
    }

  escreva("\nRESULTADO DA VOTAÇÃO:\n")
  escreva("Total de votos: ", total_votos, "\n")
  escreva("Candidato A: ", candidato_a, " votos\n")
  escreva("Candidato B: ", candidato_b, " votos\n")
  escreva("Candidato C: ", candidato_c, " votos\n")
  escreva("Votos nulos: ", voto_nulo, "\n")
  escreva("Votos em branco: ", voto_branco, "\n")
  limpa()
    }
}