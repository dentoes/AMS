programa
{
    funcao inicio()
    {
        inteiro idade, totalIdades = 0, somaIdades = 0, maior21 = 0
        real media = 0.0
        cadeia continuar

        faca
        {
            escreva("Digite a idade: ")
            leia(idade)

            totalIdades = totalIdades + 1
            somaIdades = somaIdades + idade

            se (idade >= 21)
            {
                maior21 = maior21 + 1
            }

            escreva("Quer continuar? [S/N]: ")
            leia(continuar)
            
        } enquanto (continuar == "S" ou continuar == "s")

        se (totalIdades > 0)
        {
            media = somaIdades / totalIdades
        }

        escreva("\n--- RESULTADO ---")
        escreva("\na) Total de idades digitadas: ", totalIdades)
        escreva("\nb) Média das idades: ", media)
        escreva("\nc) Pessoas com 21 anos ou mais: ", maior21)
    }
}
