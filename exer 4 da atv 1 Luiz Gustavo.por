programa
{
	
	funcao inicio()
	{
		cadeia nome 
		inteiro  idade , pQnt = 20, mQnt = 15  
		real kg , total
		caracter  exames = 'S' 
		caracter acomp = 'S' , sair = 'S' , opcao
		

			escreva ("----Bem-vindo(a)s ao nosso Hotel----\n")
			escreva ("Por favor digite seu nome: \n")
			leia (nome)
			limpa()
			escreva ("Olá " ,nome, ",bem-vindo ao nosso sistema\n")

			//controle do menu, direcionando o usuario ao local desejado
			
			faca
    				{			
			escreva ("-- Menu de opções do Hotel --\n") //mensagem de boas-vindas
			escreva ("Selecione a opção desejada digitando o número do menu\n")
			escreva ("'A' ou 'a' - Acessar Lavandeira do Hotel \n")
    			escreva ("'B' ou 'b' - Acessar Piscina do Hotel \n")
    			escreva ("'S' ou 's' - Sair do sistema\n")

    		
    			escreva ("Qual área do hotel deseja acessar?\n")
			leia (opcao)

					
			limpa()

			
    				}enquanto (opcao != 'A' e opcao != 'B' e opcao != 'a' e opcao != 'b' e opcao != 'b' e opcao != 'S' e opcao != 's')
	
			escolha (opcao)
			{//inicio escolha

				//primeira opção de escolha atrelada a letra A
				caso 'a':
					escreva (nome , " você entrou na lavanderia, digite abaixo a quantidade em kilos de roupas que deseja lavar: \n")
							leia(kg)
							
							se(kg > 10)
								
								{

									total = kg * mQnt
								escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
								escreva("Obrigado por utilizar nosso sistema")
								}	

							senao se(kg < 10)
								{
									total = kg * pQnt
								escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
								escreva("Obrigado por utilizar nosso sistema")
								
								}
							pare
				caso 'A':
					escreva (nome , " você entrou na lavanderia, digite abaixo a quantidade em kilos de roupas que deseja lavar: \n")
							leia(kg)
							
							se(kg > 10)
								
								{

									total = kg * mQnt
								escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
								escreva("Obrigado por utilizar nosso sistema")
								}	

							senao se(kg < 10)
								{
									total = kg * pQnt
								escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
								escreva("Obrigado por utilizar nosso sistema")
								
								}
							pare

				//segunda opção de escolha atrelada a letra B			
				caso 'b':
					escreva (nome , " você entrou na piscina, vamos fazer algumas verificações para prosseguir.\n") 
							escreva ("Digite sua idade por favor: \n")
							leia (idade)

							se (idade >=18)

								{
									escreva("Seus exames estão em dia? S/N\n")
									leia(exames)
										se(exames == 'N' ou exames == 'n')
										{
											escreva("Por favor faça seus exames\n")
										}
										senao
											escreva("Aproveite a piscina\n")
										
								}

							senao se (idade < 18)
								{
									escreva("Você está acompanhado? S/N\n")
									leia(acomp)
										se(acomp == 'N' ou acomp == 'n')
										{
											escreva ("Por favor chame um adulto para te acompanhar\n")
										}

										senao se (acomp == 'S' ou acomp == 's')
										{
											escreva ("Seus exames estão em dia? S/N\n")
											leia(exames)

												se(exames == 'N' ou exames == 'n')
													{
														escreva("Por favor faça seus exames\n")
													}
												senao
														escreva("Aproveite a piscina\n")
										}
								}
							pare

					caso 'B':
						escreva (nome , " você entrou na piscina, vamos fazer algumas verificações para prosseguir.\n") 
							escreva ("Digite sua idade por favor: \n")
							leia (idade)

							se (idade >=18)

								{
									escreva("Seus exames estão em dia? S/N\n")
									leia(exames)
										se(exames == 'N' ou exames == 'n')
										{
											escreva("Por favor faça seus exames\n")
										}
										senao
											escreva("Aproveite a piscina\n")
										
								}

							senao se (idade < 18)
								{
									escreva("Você está acompanhado? S/N\n")
									leia(acomp)
										se(acomp == 'N' ou acomp == 'n')
										{
											escreva ("Por favor chame um adulto para te acompanhar\n")
										}

										senao se (acomp == 'S' ou acomp == 's')
										{
											escreva ("Seus exames estão em dia? S/N\n")
											leia(exames)

												se(exames == 'N' ou exames == 'n')
													{
														escreva("Por favor faça seus exames\n")
													}
												senao
														escreva("Aproveite a piscina\n")
										}
								}
							pare
					//terceira opção de escolha atrelalado a letra s minusculoa com possibilidade de loop??
					caso 's':
						escreva ("Você realmente deseja sair do nosso sistema? S/N\n")
							leia (sair)
										//possibilidade de loop??
									se (sair == 'n' ou sair == 'N')
									{
										limpa()
										escreva ("-- Menu de opções do Hotel --\n")//inicio do loop
										escreva ("Selecione a opção desejada digitando o número do menu\n")
										escreva ("'A' ou 'a' - Acessar Lavandeira do Hotel \n")
    										escreva ("'B' ou 'b' - Acessar Piscina do Hotel \n")
    										escreva ("'S' ou 's' - Sair do sistema\n")
    										escreva ("Qual área do hotel deseja acessar?\n")
										leia (opcao)

										escolha (opcao) //loop iniciado
										{
											//1ºopção dentro do loop
											caso 'a': //dentro do loop de S
												escreva (nome , " você entrou na lavanderia, digite abaixo a quantidade em kilos de roupas que deseja lavar: \n")
												leia(kg)
													se(kg > 10)								
														{
															total = kg * mQnt
															escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
															escreva("Obrigado por utilizar nosso sistema")
														}	

													senao se(kg < 10)
														{
															total = kg * pQnt
															escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
															escreva("Obrigado por utilizar nosso sistema")
														}
											pare

												//dentro do loop de S
											caso 'A':
												escreva (nome , " você entrou na lavanderia, digite abaixo a quantidade em kilos de roupas que deseja lavar: \n")
												leia(kg)
													se(kg > 10)
														{
															total = kg * mQnt
															escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
															escreva("Obrigado por utilizar nosso sistema")
														}	

													senao se(kg < 10)
														{
															total = kg * pQnt
															escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
															escreva("Obrigado por utilizar nosso sistema")
								
														}
											pare

											//2º opção de escolha atrelada a letra B dentro do loop de S		
											caso 'b':
												escreva (nome , " você entrou na piscina, vamos fazer algumas verificações para prosseguir.\n") 
												escreva ("Digite sua idade por favor: \n")
												leia (idade)
													se (idade >=18)
														{
															escreva("Seus exames estão em dia? S/N\n")
															leia(exames)
																se(exames == 'N' ou exames == 'n')
																	{
																		escreva("Por favor faça seus exames\n")
																	}
																senao
																		escreva("Aproveite a piscina\n")
										
														}

													senao se (idade < 18)
														{
															escreva("Você está acompanhado? S/N\n")
															leia(acomp)
																se(acomp == 'N' ou acomp == 'n')
																	{
																		escreva ("Por favor chame um adulto para te acompanhar\n")
																	}

																senao se (acomp == 'S' ou acomp == 's')
																	{
																		escreva ("Seus exames estão em dia? S/N\n")
																		leia(exames)
																			se(exames == 'N' ou exames == 'n')
																				{
																					escreva("Por favor faça seus exames\n")
																				}
																			senao
																				escreva("Aproveite a piscina\n")
																	}
														}
											pare

											//dentro do loop de S					
											caso 'B':
												escreva (nome , " você entrou na piscina, vamos fazer algumas verificações para prosseguir.\n") 
												escreva ("Digite sua idade por favor: \n")
												leia (idade)
													se (idade >=18)
														{
															escreva("Seus exames estão em dia? S/N\n")
															leia(exames)
																se(exames == 'N' ou exames == 'n')
																	{
																		escreva("Por favor faça seus exames\n")
																	}
																senao
																		escreva("Aproveite a piscina\n")
										
														}

													senao se (idade < 18)
														{
															escreva("Você está acompanhado? S/N\n")
															leia(acomp)
																se(acomp == 'N' ou acomp == 'n')
																	{
																		escreva ("Por favor chame um adulto para te acompanhar\n")
																	}
																senao se (acomp == 'S' ou acomp == 's')
																	{
																		escreva ("Seus exames estão em dia? S/N\n")
																		leia(exames)
																			se(exames == 'N' ou exames == 'n')
																				{
																					escreva("Por favor faça seus exames\n")
																				}
																			senao
																				escreva("Aproveite a piscina\n")
																	}
														}
											pare
										}
									
									
									
									
									
									
									
									}
									//fim da possibilidade de loop??
									senao {
										escreva("Obrigado por utilizar nosso sistema\n")
									}
										
											
										
									
									
									
									pare
					//terceira opção de escolha atrelalado a letra S minusculoa com possibilidade de loop??
					caso 'S':
						escreva ("Você realmente deseja sair do nosso sistema? S/N\n")
							leia (sair)
										//possibilidade de loop??
									se (sair == 'n' ou sair == 'N')
									{
										limpa()
										escreva ("-- Menu de opções do Hotel --\n")//inicio do loop
										escreva ("Selecione a opção desejada digitando o número do menu\n")
										escreva ("'A' ou 'a' - Acessar Lavandeira do Hotel \n")
    										escreva ("'B' ou 'b' - Acessar Piscina do Hotel \n")
    										escreva ("'S' ou 's' - Sair do sistema\n")
    										escreva ("Qual área do hotel deseja acessar?\n")
										leia (opcao)

										escolha (opcao) //loop iniciado
										{
											//1ºopção dentro do loop
											caso 'a': //dentro do loop de S
												escreva (nome , " você entrou na lavanderia, digite abaixo a quantidade em kilos de roupas que deseja lavar: \n")
												leia(kg)
													se(kg > 10)								
														{
															total = kg * mQnt
															escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
															escreva("Obrigado por utilizar nosso sistema")
														}	

													senao se(kg < 10)
														{
															total = kg * pQnt
															escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
															escreva("Obrigado por utilizar nosso sistema")
														}
											pare

												//dentro do loop de S
											caso 'A':
												escreva (nome , " você entrou na lavanderia, digite abaixo a quantidade em kilos de roupas que deseja lavar: \n")
												leia(kg)
													se(kg > 10)
														{
															total = kg * mQnt
															escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
															escreva("Obrigado por utilizar nosso sistema")
														}	

													senao se(kg < 10)
														{
															total = kg * pQnt
															escreva("O valor da utilização da lavanderia foi de ", total , " reais\n")
															escreva("Obrigado por utilizar nosso sistema")
								
														}
											pare

											//2º opção de escolha atrelada a letra B dentro do loop de S		
											caso 'b':
												escreva (nome , " você entrou na piscina, vamos fazer algumas verificações para prosseguir.\n") 
												escreva ("Digite sua idade por favor: \n")
												leia (idade)
													se (idade >=18)
														{
															escreva("Seus exames estão em dia? S/N\n")
															leia(exames)
																se(exames == 'N' ou exames == 'n')
																	{
																		escreva("Por favor faça seus exames\n")
																	}
																senao
																		escreva("Aproveite a piscina\n")
										
														}

													senao se (idade < 18)
														{
															escreva("Você está acompanhado? S/N\n")
															leia(acomp)
																se(acomp == 'N' ou acomp == 'n')
																	{
																		escreva ("Por favor chame um adulto para te acompanhar\n")
																	}

																senao se (acomp == 'S' ou acomp == 's')
																	{
																		escreva ("Seus exames estão em dia? S/N\n")
																		leia(exames)
																			se(exames == 'N' ou exames == 'n')
																				{
																					escreva("Por favor faça seus exames\n")
																				}
																			senao
																				escreva("Aproveite a piscina\n")
																	}
														}
											pare

											//dentro do loop de S					
											caso 'B':
												escreva (nome , " você entrou na piscina, vamos fazer algumas verificações para prosseguir.\n") 
												escreva ("Digite sua idade por favor: \n")
												leia (idade)
													se (idade >=18)
														{
															escreva("Seus exames estão em dia? S/N\n")
															leia(exames)
																se(exames == 'N' ou exames == 'n')
																	{
																		escreva("Por favor faça seus exames\n")
																	}
																senao
																		escreva("Aproveite a piscina\n")
										
														}

													senao se (idade < 18)
														{
															escreva("Você está acompanhado? S/N\n")
															leia(acomp)
																se(acomp == 'N' ou acomp == 'n')
																	{
																		escreva ("Por favor chame um adulto para te acompanhar\n")
																	}
																senao se (acomp == 'S' ou acomp == 's')
																	{
																		escreva ("Seus exames estão em dia? S/N\n")
																		leia(exames)
																			se(exames == 'N' ou exames == 'n')
																				{
																					escreva("Por favor faça seus exames\n")
																				}
																			senao
																				escreva("Aproveite a piscina\n")
																	}
														}
											pare
										}
									
									
									
									
									
									
									
									}
									//fim da possibilidade de loop??
									senao {
										escreva("Obrigado por utilizar nosso sistema\n")
									}
										
											
										
									
									
									
									pare

									
					

					
			
			//final escolha
			}
	
	
	
	
	
	
	

	} //finado da funcao inicio 

//final do programa
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */