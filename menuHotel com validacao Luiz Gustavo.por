programa
{

     funcao inicio()
     {
          cadeia nome
          inteiro idade
          inteiro pQnt = 20
          inteiro mQnt = 15
          real kg
          real total
          caracter exames = 'S'
          caracter acomp = 'S'
          caracter sair = 'S'
          caracter opcao
          logico flag = verdadeiro
          escreva("----Bem-vindo(a) ao nosso Hotel----\n")
          escreva("Por favor digite seu nome: \n")
          leia(nome)
          limpa()
          escreva("Olá ", nome, ",bem-vindo(a) ao nosso sistema\n")
          faca {
               escreva("-- Menu de opções do Hotel --\n")
               escreva("Selecione a opção desejada digitando a letra do menu\n")
               escreva("'A' - Acessar Lavandeira do Hotel \n")
               escreva("'B' - Acessar Piscina do Hotel \n")
               escreva("'S' - Sair do sistema\n")
               escreva("Qual área do hotel deseja acessar?\n")
               leia(opcao)
               limpa()
               se (opcao != 'A' e opcao != 'B' e opcao != 'a' e opcao != 'b' e opcao != 'b' e opcao != 'S' e opcao != 's') {
                    escreva("Você digitou um caracter inválido\n")
                    flag = verdadeiro
               }
               senao {
                    flag = falso
               }
          }
          enquanto (flag)
          escolha (opcao) {
               caso 'a':
               caso 'A':
                    escreva(nome, " você entrou na lavanderia, digite abaixo a quantidade em kilos de roupas que deseja lavar: \n")
                    leia(kg)
                    se (kg > 10) {
                         total = kg * mQnt
                         escreva("O valor da utilização da lavanderia foi de ", total, " reais\n")
                         escreva("Obrigado por utilizar nosso sistema")
                    }
                    senao {
                         se (kg < 10) {
                              total = kg * pQnt
                              escreva("O valor da utilização da lavanderia foi de ", total, " reais\n")
                              escreva("Obrigado por utilizar nosso sistema")
                         }
                    }
                    pare
               caso 'b':
               caso 'B':
                    escreva(nome, " você entrou na piscina, vamos fazer algumas verificações para prosseguir.\n")
                    escreva("Digite sua idade por favor: \n")
                    leia(idade)
                    se (idade >= 18) {
                         escreva("Seus exames estão em dia? S/N\n")
                         leia(exames)
                         se (exames == 'N' ou exames == 'n') {
                              escreva("Por favor faça seus exames\n")
                         }
                         senao {
                              escreva("Aproveite a piscina\n")
                         }
                    }
                    senao {
                         se (idade < 18) {
                              escreva("Você está acompanhado? S/N\n")
                              leia(acomp)
                              se (acomp == 'N' ou acomp == 'n') {
                                   escreva("Por favor chame um adulto para te acompanhar\n")
                              }
                              senao {
                                   se (acomp == 'S' ou acomp == 's') {
                                        escreva("Seus exames estão em dia? S/N\n")
                                        leia(exames)
                                        se (exames == 'N' ou exames == 'n') {
                                             escreva("Por favor faça seus exames\n")
                                        }
                                        senao {
                                             escreva("Aproveite a piscina\n")
                                        }
                                   }
                              }
                         }
                    }
                    pare
               caso 's':
               caso 'S':
                    escreva("Você realmente deseja sair do nosso sistema? S/N\n")
                    leia(sair)
                    se (sair == 'n' ou sair == 'N') {
                         limpa()
                         escreva("-- Menu de opções do Hotel --\n")
                         escreva("Selecione a opção desejada digitando o número do menu\n")
                         escreva("'A' ou 'a' - Acessar Lavandeira do Hotel \n")
                         escreva("'B' ou 'b' - Acessar Piscina do Hotel \n")
                         escreva("'S' ou 's' - Sair do sistema\n")
                         escreva("Qual área do hotel deseja acessar?\n")
                         leia(opcao)
                         escolha (opcao) {
                              caso 'a':
                              caso 'A':
                                   escreva(nome, " você entrou na lavanderia, digite abaixo a quantidade em kilos de roupas que deseja lavar: \n")
                                   leia(kg)
                                   se (kg > 10) {
                                        total = kg * mQnt
                                        escreva("O valor da utilização da lavanderia foi de ", total, " reais\n")
                                        escreva("Obrigado por utilizar nosso sistema")
                                   }
                                   senao {
                                        se (kg < 10) {
                                             total = kg * pQnt
                                             escreva("O valor da utilização da lavanderia foi de ", total, " reais\n")
                                             escreva("Obrigado por utilizar nosso sistema")
                                        }
                                   }
                                   pare
                              caso 'b':
                              caso 'B':
                                   escreva(nome, " você entrou na piscina, vamos fazer algumas verificações para prosseguir.\n")
                                   escreva("Digite sua idade por favor: \n")
                                   leia(idade)
                                   se (idade >= 18) {
                                        escreva("Seus exames estão em dia? S/N\n")
                                        leia(exames)
                                        se (exames == 'N' ou exames == 'n') {
                                             escreva("Por favor faça seus exames\n")
                                        }
                                        senao {
                                             escreva("Aproveite a piscina\n")
                                        }
                                   }
                                   senao {
                                        se (idade < 18) {
                                             escreva("Você está acompanhado? S/N\n")
                                             leia(acomp)
                                             se (acomp == 'N' ou acomp == 'n') {
                                                  escreva("Por favor chame um adulto para te acompanhar\n")
                                             }
                                             senao {
                                                  se (acomp == 'S' ou acomp == 's') {
                                                       escreva("Seus exames estão em dia? S/N\n")
                                                       leia(exames)
                                                       se (exames == 'N' ou exames == 'n') {
                                                            escreva("Por favor faça seus exames\n")
                                                       }
                                                       senao {
                                                            escreva("Aproveite a piscina\n")
                                                       }
                                                  }
                                             }
                                        }
                                   }
                                   pare
                         }
                    }
                    senao {
                         escreva("Obrigado por utilizar nosso sistema\n")
                    }
                    pare
          }
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 549; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */