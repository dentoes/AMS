programa {
    funcao inicio()
    {
        inteiro N[10]
        inteiro i
        inteiro maior
        inteiro menor

        para (i = 0; i < 10; i++)
        {
            escreva("Digite o ", i + 1, "º número: ")
            leia(N[i])
        }
        
        maior = N[0]
        menor = N[0]

        para (i = 1; i < 10; i++)
        {
            se (N[i] > maior) {
                maior = N[i]
            }

            se (N[i] < menor) {
                menor = N[i]
            }
        }

        escreva("Maior elemento: ", maior, "\n")
        escreva("Menor elemento: ", menor)
    }
}
