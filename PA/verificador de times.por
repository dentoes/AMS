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

            caso contrario:
                escreva("Time não cadastrado.")
                pare


        }
    }
}