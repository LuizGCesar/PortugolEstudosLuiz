programa
{
     inclua biblioteca Matematica

     inteiro indiceHospede[10]

     cadeia cpfHosp[10]

     inteiro diasHosp[10]

     real despHosp[10]
     inteiro opcao
     inteiro opcaoBusca
     inteiro i = 0

     cadeia nome[10]
     cadeia nomeBusca = " "
     real diaria = 100.0

     real total[10]
     caracter continuar
     caracter confirmar

     funcao inicio()
     {
          escreva("------Bem-vindo(a) ao nosso Hotel------\n")
          faca {
               escreva("------------------MENU-----------------\n")
               escreva("1 - Cadastrar Hóspedes\n")
               escreva("2 - Consultar Hóspedes cadastrados\n")
               escreva("3 - Reservar área de lazer\n")
               escreva("4 - Calcular despesas a pagar\n")
               escreva("0 - Sair\n")
               escreva("Selecione o menu desejado: ")
               leia(opcao)
               escolha (opcao) {
                    caso 1:
                         limpa()
                         se (i < 10) {
                              escreva("Bem-vindo(a) ao cadastro!\n")
                              cadastro()
                         }
                         senao {
                              limpa()
                              escreva("\n\n!!!Atenção!!!\n\nNossos cadastros chegaram ao máximo!!!\n\n")
                         }
                         pare
                    caso 2:
                         limpa()
                         escreva("Menu de consulta de hóspedes.\n")
                         exibir()
                         pare
                    caso 3:
                         limpa()
                         escreva("Menu de reservar área de Lazer.\n")
                         reservar()
                         pare
                    caso 4:
                         limpa()
                         escreva("Menu de fechar a conta.\n")
                         calcular()
                         pare
                    caso 0:
                         limpa()
                         escreva("Você escolheu sair\n")
                         escreva("Obrigado por utilizar nosso sistema!\n")
                         pare
               }
          }
          enquanto (opcao != 0)
     }

     funcao cadastro()
     {
          se (i < 10) {
               para (i = i; i < 10; i = i + 1) {
                    escreva("Digite seu nome: ")
                    leia(nome[i])
                    indiceHospede[i] = i
                    escreva("Digite seu CPF ", nome[i], ": ")
                    para (i = i; i < 10; i = i + 1) {
                         leia(cpfHosp[i])
                         pare
                    }
                    escreva("Quantos dias ficará hospeado em nosso hotel: ")
                    para (i = i; i < 10; i = i + 1) {
                         leia(diasHosp[i])
                         escreva("\n")
                         pare
                    }
                    pare
               }
          }
          escreva("Índice :", indiceHospede[i], "\n")
          escreva("Nome: ", nome[i], "\n")
          escreva("Quantidades de dias que ficará hospedado: ", diasHosp[i], " dias. \n")
          escreva("\nConfirma as informações cadastradas (S/N)?")
          leia(confirmar)
          limpa()
          escreva("\n")
          se (confirmar == 'N' ou confirmar == 'n') {
               cadastro()
          }
          senao {
               se (confirmar == 'S' ou confirmar == 's') {
                    limpa()
                    escreva("Cadastro realizado com Sucesso!\n")
               }
               i = i + 1
          }
     }

     funcao buscarRegistro()
     {
          escreva("Digite seu nome: ")
          leia(nomeBusca)
          i = 0
          enquanto (i < 9 e nome[i] != nomeBusca) {
               i = i + 1
          }
          se (i >= 9) {
               escreva(nomeBusca, " não foi encontrado(a) hospedado em nosso sistema... tente novamente ou cadestre-se em nosso hotel!\n")
          }
          senao {
               escreva("Hóspede encontrado(a)!\n")
               escreva("\n")
               escreva(nomeBusca, " o seu índice é o número ", i, " use o quando for solicitado!\n")
               escreva("\n\n")
          }
     }

     funcao exibir()
     {
          faca {
               escreva("1 - Exibir todos hóspedes Cadastrados.\n")
               escreva("2 - Fazer busca manual do hóspede.\n")
               escreva("3 - Sair da Consulta.\n")
               leia(opcaoBusca)
               limpa()
               escolha (opcaoBusca) {
                    caso 1:
                         escreva("\n")
                         para (i = 0; i < 10; i = i + 1) {
                              escreva("Índice: ", indiceHospede[i], "\nNome: ", nome[i], " CPF: ", cpfHosp[i], "\nQuantidades de Dias: ", diasHosp[i], " dia(s)\n\n\n")
                         }
                         pare
                    caso 2:
                         buscarRegistro()
                         pare
                    caso 3:
                         escreva("Saindo do menu de consulta...\n")
                         pare
               }
          }
          enquanto (opcaoBusca != 3)
     }

     funcao reservar()
     {
          inteiro academia = 20
          inteiro salaoFestas = 50
          inteiro restaurante = 35
          caracter local
          buscarRegistro()
          se (nome[i] == " ") {
               escreva("Por favor tente novamente!\n")
          }
          senao {
               escreva("Digite o índice informado acima para efetuar a reserva em seu nome:")
               leia(i)
               faca {
                    escreva(nome[i], " qual área gostaria de reservar?\n")
                    escreva("A - Academia - R$20\n")
                    escreva("S - Salão de Festas - R$50\n")
                    escreva("R - Restaurante - R$ 35\n")
                    escreva("V - Voltar ao menu anterior\n")
                    leia(local)
                    escreva("\n")
                    escolha (local) {
                         caso 'A':
                         caso 'a':
                              despHosp[i] = despHosp[i] + academia
                              limpa()
                              escreva("O valor da reserva da academia foi adicionado à sua conta.\n\n")
                              pare
                         caso 'S':
                         caso 's':
                              despHosp[i] = despHosp[i] + salaoFestas
                              limpa()
                              escreva("O valor da reserva do salão de festas foi adicionado à sua conta.\n\n")
                              pare
                         caso 'R':
                         caso 'r':
                              despHosp[i] = despHosp[i] + restaurante
                              limpa()
                              escreva("O valor da reserva do restaurante foi adicionado à sua conta.\n\n")
                              pare
                         caso 'v':
                         caso 'V':
                              limpa()
                              escreva("Voltando ao menu principal...\n\n")
                              pare
                    }
                    pare
               }
               enquanto (local != 'v' ou local != 'V')
          }
     }

     funcao calcular()
     {
          buscarRegistro()
          escreva("Digite seu índice por favor: ")
          faca {
               leia(i)
               total[i] = ((diaria * diasHosp[i]) + despHosp[i])
          }
          enquanto (i <= 0 e i > 10)
          escreva(nome[i], " o seu total gasto em nosso hotel foi o valor de RS ", total[i], "\n")
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7697; 
 * @DOBRAMENTO-CODIGO = [0, 0, 0, 0];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {indiceHospede, 5, 13, 13}-{cpfHosp, 7, 12, 7}-{diasHosp, 9, 13, 8}-{despHosp, 11, 10, 8}-{opcao, 12, 13, 5}-{i, 14, 13, 1}-{nome, 16, 12, 4}-{nomeBusca, 17, 12, 9}-{total, 20, 10, 5}-{continuar, 21, 14, 9}-{confirmar, 22, 14, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */