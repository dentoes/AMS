

programa
{
    funcao inicio()
    {
        real valor, soma = 0

        para (inteiro i = 1; i <= 10; i++)
        {
            escreva("Digite o ", i, "º valor: ")
            leia(valor)
            soma = soma + valor
        }

        escreva("A soma dos 10 valores é: ", soma)
    }
}
