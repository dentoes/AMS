programa {
  funcao inicio() {
    inteiro N_1, N_2
    real resultado, calculo_final, final, finalizacao,  adicao, divisao, multiplicacao, subtracao
    cadeia operacao

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

    leia(resultado)
    leia(calculo_final)
    leia(final)
    leia(finalizacao)

    se (N_1 + N_2) {
    escreva (resultado == N_1 + N_2)
    }

    se (N_1 - N_2) {
    escreva (calculo_final == N_1 - N_2)
    }

se (N_1 * N_2) {
    escreva (final == N_1 * N_2)
    }

se (N_1 / N_2) {
    escreva (finalizacao == N_1 / N_2)
    }

 resultado=(N_1 + N_2)
 calculo_final=(N_1-N_2)
 final=(N_1*N_2)
 finalizacao=(N_1/N_2)
  }
}
