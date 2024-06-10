//Aluno: Jonathan Reinaldo Eichenberger
//Curso: Desenvolvimento de sistemas
//Módulo: Lógica de Programação
//Professor: Christian Daniel Licnerski Marques Pinheiro
//Tipo de Entrega: Não Avaliativa
//Atividade: Stiuação de Aprendizagem 4 - Etapa 2

programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> txt
	
	const inteiro total = 100
	
	inteiro   quant, idade[total], ponteiro = 0, n
	caracter  opcao = ' '
	cadeia    nome[total]
	caracter 	voltar
	
	funcao inicio()
	{
		limpa()
		escreva("Quantos clientes gostaria de cadastrar?\n")
		leia(quant)
		
		se(quant > 0)
		{
			menu()
		}
		senao
		{
			escreva("\n\n  ATENÇÃO: Quantidade inválida! Tente novamente!")
			Util.aguarde(3000)			
			inicio()
		}
			
			
	
	}
	funcao menu() //Função para printar o Menu e também fazer o desvio para outras funções a partir da seleção das opções no menu.
	{
		
			limpa()
			escreva("+----------------------------------------+\n")
			escreva("|           MENU -- PRINCIPAL --         |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 1 |- Cadastrar novo usuário            |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 2 |- Listar todos usuários cadastrados |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 3 |- Buscar Cadastro                   |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 4 |- Remover cadastro                  |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 5 |- Sair do Programa                  |\n")
			escreva("+----------------------------------------+\n")
			escreva("Opção: ")
			leia(opcao)

			escolha(opcao)  
				{
					caso '1': 
					{
						cadastro()	//Chama a funcao cadastro
					pare
					}
	
					caso '2':
					{
						listar()		//Chama a função listar
					pare
					}
					
					caso '3':
					{
						buscar()		//Chama a função buscar
					pare
					}
	
					caso '4':
					{
						remover_cadastro()		
						pare
					}
					caso '5':
					{
						sair()
						pare
					}
	
					caso contrario:
					{
						//limpa()
						escreva("\nATENÇÃO: Opção inválida!")
						Util.aguarde(3000)			
						pare
					}
				}
	}
	funcao cadastro() //Função para fazer o cadastro de nome e idade de clientes.
	{
		limpa()
		escreva("+----------------------------------------+\n")
		escreva("|       MENU -- INSERIR CADASTRO --      |\n")
		escreva("+----------------------------------------+\n")
		se(ponteiro < quant)
		{
			
			escreva("\nInforme o nome do(a) cliente: ")
			leia(nome[ponteiro])
			nome[ponteiro] = txt.caixa_alta(nome[ponteiro])
	
			
			escreva("\nInforme quantos anos o(a) ", nome[ponteiro], " tem: ")
			leia(idade[ponteiro])
	
			ponteiro++		
			
			limpa()
			escreva("AVISO: Cadastro realizado com sucesso!")
			Util.aguarde(1000)
			menu() 			
		}
		senao
		{
			limpa()
			escreva("ATENÇÃO: Limite de cadastros atingido!")
			Util.aguarde(3000)			
			menu()
		}
	}
	funcao listar() //Função para listar os dados dos clientes cadastrados, se houver cadastros.
	{
		limpa()
		escreva("+----------------------------------------+\n")
		escreva("|       MENU -- LISTAR CADASTROS --      |\n")
		escreva("+----------------------------------------+\n")
		
		se(ponteiro == 0)
		{
			escreva("AVISO: Nenhum registro encontrado!")
			U.aguarde(3000)
			menu()
		}
		senao
		{
			escreva("\n\tLista dos clientes cadastrados:\n\n")
			escreva("================================================\n\n")

			para(n = 0; n < ponteiro; n++)
			{
				escreva(n+1, " - Nome: ", nome[n], " - Idade: ", idade[n], "\n\n")
			}
			retornar()
		}
	}
	funcao buscar()  //Função para fazer a pesquisa de um cadastro pelo nome
	{
		cadeia 	busca
		logico 	encontrado

		limpa()
		escreva("+----------------------------------------+\n")
		escreva("|       MENU -- BUSCAR CADASTRO --       |\n")
		escreva("+----------------------------------------+\n\n")
			
		escreva("Informe o nome do cliente a ser procurado:\nNome: ")
		leia(busca)

		busca = txt.caixa_alta(busca)
		
		encontrado = falso
		escreva("\n")
		
		para(n = 0; n < ponteiro; n++)
		{
			se(nome[n] == busca )
			{
				limpa()
				escreva("+----------------------------------------+\n")
				escreva("|      MENU -- RESULTADO DA BUSCA --     |\n")
				escreva("+----------------------------------------+\n\n")
				
				escreva(n+1, " - Nome:", nome[n]," - Idade: ", idade[n], "\n")
				encontrado = verdadeiro
				escreva("\n================================================.\n")
				escreva("\nDeseja fazer outra consulta? [S/N]: ")
				leia(voltar)
			}			
		}
		se(encontrado == falso)
		{
			limpa()
			escreva("+----------------------------------------+\n")
			escreva("|      MENU -- RESULTADO DA BUSCA --     |\n")
			escreva("+----------------------------------------+\n\n")
			
			escreva("Nenhum cliente foi encontrado com o nome: ", busca, ".\n")
			escreva("\nDeseja fazer outra consulta? [S/N]: ")
			leia(voltar)
		}
		se ( voltar == 'S' ou  voltar == 's')
		{
			buscar()
		}
		senao 
		{
			menu()	
		}
	}
	 funcao retornar() //Funçao para dar um pause até ser digitado ENTER e voltar para função menu
	{
		cadeia enter
		
		escreva("\n================================================.\n")
		escreva("Pressione a tecla [ENTER] para retornar!")
		leia(enter)
		menu()
	}
	funcao remover_cadastro() //Função para fazer a reordenaçao do vetor, removendo um cadastro
	{
		cadeia 	busca
		logico 	encontrado
		caracter confirmar_excluir
		
		limpa()
		escreva("+----------------------------------------+\n")
		escreva("|       MENU -- REMOVER CADASTRO --      |\n")
		escreva("+----------------------------------------+\n\n")
			
		escreva("Informe o nome do cliente a ser REMOVIDO:\nNome: ")
		leia(busca)

		busca = txt.caixa_alta(busca)
		
		encontrado = falso
		escreva("\n")
		
		para(n = 0; n < ponteiro; n++)
		{
			se(nome[n] == busca )
			{
				limpa()
				escreva("+----------------------------------------+\n")
				escreva("|       MENU -- REMOVER CADASTRO --      |\n")
				escreva("+----------------------------------------+\n\n")

				encontrado = verdadeiro

				escreva("Deseja realmente apagar o registro do[a] ", busca, " ? [S/N]: ")
				leia(confirmar_excluir) 

				se(confirmar_excluir == 'S' ou confirmar_excluir == 's' )
				{
					para(inteiro i = n; i < ponteiro - 1; i++)
					{
						nome[i] = nome[i + 1]
						idade[i] = idade[i + 1]
					}
					ponteiro--
						
					limpa()
					escreva("+----------------------------------------+\n")
					escreva("|       MENU -- REMOVER CADASTRO --      |\n")
					escreva("+----------------------------------------+\n\n")
					escreva("Registro apagado com sucesso!")
					U.aguarde(2000)

					limpa()
					escreva("+----------------------------------------+\n")
					escreva("|       MENU -- REMOVER CADASTRO --      |\n")
					escreva("+----------------------------------------+\n\n")
					
					escreva("\n================================================.\n")
					escreva("\nDeseja fazer outra remoção? [S/N]: ")
					leia(voltar)
				}
			}			
		}
		se(encontrado == falso)
		{
			limpa()
			escreva("+----------------------------------------+\n")
			escreva("|       MENU -- REMOVER CADASTRO --      |\n")
			escreva("+----------------------------------------+\n\n")
			
			escreva("Nenhum cliente foi encontrado com o nome: ", busca, ".\n")
			escreva("\nDeseja buscar outro nome para remover? [S/N]: ")
			leia(voltar)
		}
		se ( voltar == 'S' ou  voltar == 's')
		{
			remover_cadastro()
		}
		senao 
		{
			menu()	
		}
	}
	funcao sair() //Função para finalizar o programa
	{
		limpa()
		escreva("Finalizando o sistema em 05 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Finalizando o sistema em 04 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Finalizando o sistema em 03 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Finalizando o sistema em 02 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Finalizando o sistema em 01 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Sistema finalizado com sucesso!\n\n\n\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7084; 
 * @DOBRAMENTO-CODIGO = [131];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */