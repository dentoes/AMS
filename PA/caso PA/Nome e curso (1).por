programa {
  funcao inicio() {
    cadeia nome
    inteiro curso

    escreva("Qual é o seu nome: ")
    leia(nome)
     escreva("### Cursos ###", "\n")
    escreva("1 - Informática - Vespertino", "\n")
    escreva("2 - Informática - Matutino", "\n")
    escreva("3 - Secretariado", "\n")
    escreva("4 - Administração", "\n")
    escreva("5 - Logística", "\n")
     leia(curso)
     

    escolha(curso) {
    caso 1:
    escreva(nome, ", seu curso é informática-Vespertino")
    pare

    caso 2:
    escreva(nome, ", seu curso é informática - Matuino")
    pare

    caso 3:
    escreva(nome, ", seu curso é Secretariado")
    pare

    caso 4: 
    escreva(nome, ", seu curso é Administração")
    pare

    caso 5:
    escreva(nome, ", seu curso é Logística")
    pare
    

    caso contrario:
    escreva(nome, ", esse curso não foi identificado")
    pare
    }
  }
}
