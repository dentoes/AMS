programa {
  funcao inicio() {
   inteiro numero, soma = 0, quantidade = 0
   real media
   inteiro i = 1

   para ( i = 1; i <= 10; i++) {
    escreva("Digite o ", i, "º número: ")
    leia(numero)

    se (numero >= 0) {
      soma = soma + numero
      quantidade = quantidade + 1
    }
   }

   se (numero >= 0) {
    media = soma / quantidade
    escreva("A média dos números é: ", media)
   } senao {

    escreva("Este número não é inteiro! Reinicie o programa e faça com os números requeridos.")
   }
  }
}
