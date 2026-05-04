programa {
  funcao inicio() {
    inteiro N_1, N_2
    real resultado
    caracter operacao

    escreva("digite o primeiro número que deseja usar para calcular: ")
    leia(N_1)

    escreva("selecione o sinal que deseja usar para calcular: \n")
    escreva("################### \n")
    escreva("# 1 - soma \n")
    escreva("# 2 - subtração \n")
    escreva("# 3 - divisão \n")
    escreva("# 4 - multiplicação \n")
    escreva("------------------ \n")
    escreva("sinal: \n ")
    leia(operacao)
    escreva("------------------ \n")

    escreva("digite o segundo número que deseja usar para calcular: ")
    leia(N_2) 

    // leia(resultado)
    // leia(calculo_final)
    // leia(final)
    // leia(finalizacao)

    se (operacao == '+') {
        resultado = N_1 + N_2
        escreva ("Resultado da soma foi: ", resultado )
    }

se (operacao == '-') {
        resultado = N_1 - N_2
        escreva ("Resultado da subtração foi: ", resultado )
    }

    se (operacao == '*') {
        resultado = N_1 * N_2
        escreva ("Resultado da multiplicação foi: ", resultado )

se (operacao == '/') {
        resultado = N_1 / N_2
        escreva ("Resultado da divisão foi: ", resultado )
  }
    }

    se (operacao == '/') {
      se (N_2 == 0)
        escreva ("Não é possível efetuar o cálculo de divisão por 0. \n" )
    } senao {
      (N_2 > 0)
    }

  }
}
