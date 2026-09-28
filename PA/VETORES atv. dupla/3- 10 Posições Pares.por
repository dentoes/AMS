programa {
 funcao inicio()
    {
   inteiro N[10]
   inteiro i
   inteiro contador = 0

    para (i = 0; i < 10; i++)
        {
     escreva("Digite o ", i + 1, "º número: ")
     leia(N[i])
      se (N[i] % 2 == 0) {
      contador = contador + 1
            }
        }

        escreva("Quantidade de números pares: ", contador)
    }
}
