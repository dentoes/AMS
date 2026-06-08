programa
{
    funcao inicio()
    {
        inteiro N_1, N_2
        real resultado
        caracter operacao

        escreva("Digite o primeiro número: ")
        leia(N_1)
        limpa()

        escreva("Escolha a operação (+, -, /, *): ")
        leia(operacao)
        limpa()

        escreva("Digite o segundo número: ")
        leia(N_2)
        limpa()

        escolha (operacao)
        {
            caso "+":
                resultado = N_1 + N_2
                escreva("O resultado da soma é: ", resultado)
                pare

            caso "-":
                resultado = N_1 - N_2
                escreva("O resultado da subtração é: ", resultado)
                pare

            caso "/":
                se (N_2 == 0)
                {
                    escreva("Não é possível dividir por zero.")
                }
                senao
                {
                    resultado = N_1 / N_2
                    escreva("O resultado da divisão é: ", resultado)
                }
                pare

            caso "*":
                resultado = N_1 * N_2
                escreva("O resultado da multiplicação é: ", resultado)
                pare

            caso contrario:
                escreva("Operação inválida!")
        }
    }
}