programa {
  funcao inicio() {
    cadeia func[3]
    real sal[3]
    real reajuste

    para(inteiro i = 0; i < 3; i++) {
      escreva("Nome do(a) funcionário(a): ")
      leia(func[i])

      escreva("Digite o salário de ", func[i], ": R$: ")
      leia(sal[i])
      escreva("\n")
    }

    escreva("Digite o indice para cálculo do reajuste salarial (%): ")
    leia(reajuste)
    escreva("\n==== SALÁRIO REAJUSTIDOS ====\n")
    limpa()

    para (inteiro i = 0; i < 3; i++) {
      sal[i] = sal[i] +(sal[i] * reajuste) / 100
      escreva("\nFuncionário(a): ", func[i])
      escreva("\nSalário reajustado: R$ ", sal[i])
      escreva("\n")
    }
  }
}
