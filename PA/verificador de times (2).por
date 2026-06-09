programa
{
    inclua biblioteca Texto --> txt

    funcao inicio()
    {
        cadeia time_fut

        escreva("Digite o nome do time que deseja saber o estado: ")
        leia(time_fut)

        escolha (time_fut)
        {
            caso "flamengo":
                escreva("O time é do Rio de Janeiro.")
                pare

            caso "vasco":
            caso "vasco da gama":
                escreva("O time é do Rio de Janeiro.")
                pare

            caso "fluminense":
                escreva("O time é do Rio de Janeiro.")
                pare

                caso "botafogo":
                caso "bota fogo":
                escreva("O time é do Rio de Janeiro.")
                pare

                caso "corinthians":
                escreva("O time é de São Paulo.")
                pare

                caso "palmeiras":
                escreva("O time é de São Paulo.") 
                pare

                caso "sao paulo fc":
                caso "são paulo fc":
                caso "sao paulo": 
                escreva("O time é de São Paulo.")
                pare

                caso "santos":
                caso "santos fc": 
                escreva("O time é de São Paulo.")
                pare

                caso "atlético mineiro":
                escreva("O time é de Minas Gerais.")
                pare

                caso "cruzeiro":
                escreva("O time é de Minas Gerais.")
                pare

                caso "américa mineiro":
                caso "america mineiro":
                escreva("O time é de Minas Gerais.")
                pare

                caso "grêmio":
                caso "gremio":
                escreva("O estado é do Rio Grande do Sul.")
                pare

                caso "internacional":
                escreva("O estado é do Rio Grande do Sul.")
                pare

                caso "juventude":
                escreva("O estado é do Rio Grande do Sul.")
                pare

                caso "athletico paranaense":
                caso "athletico":
                caso "paranaense":
                escreva("O estado é do Paraná.")
                pare

                caso "coritiba":
                escreva("O estado é do Paraná.")
                pare

                caso "operário":
                caso "operario":
                escreva("O estado é do Paraná.")
                pare

                caso "chapecoense":
                escreva("O estado é de Santa catarina.")
                pare

                caso "avaí":
                caso "avai":
                escreva("O estado é de Santa catarina.")
                pare

                caso "criciúma":
                caso "criciuma":
                escreva("O estado é de Santa catarina.")
                pare

                caso "figueirense":
                escreva("O estado é de Santa catarina.")
                pare

                caso "bahia":
                escreva("O estado é da Bahia.")
                pare

                caso "vitória":
                caso "vitoria":
                escreva("O estado é da Bahia.")
                pare

                caso "sport":
                escreva("O estado é de Pernambuco.")
                pare

                caso "náutico":
                caso "nautico":
                escreva("O estado é de Pernambuco.")
                pare

                caso "santa cruz":
                escreva("O estado é de Pernambuco.")
                pare

                caso "fortaleza":
                escreva("O estado é do Ceará.")
                pare

                caso "ceará":
                caso "ceara":
                escreva("O estado é do Ceará.")
                pare

            caso contrario:
                escreva("Time não cadastrado.")
                pare


        }
    }
}