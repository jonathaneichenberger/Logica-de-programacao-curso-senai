/*
Aluno: Jonathan Reinaldo Eichenberger
Curso: Desenvolvimento de sistemas
Módulo: Lógica de Programação
Professor: Christian Daniel Licnerski Marques Pinheiro
Tipo de Entrega: Avaliativa
Atividade: Situação de Aprendizagem 5 - Etapa 1
*/

programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u

	const inteiro total = 20
	
	cadeia   livro[total], msg, enter
	caracter opcao, resposta
	inteiro  ponteiro = 0
	
	funcao inicio()
	{
		opcao = menu()
		
		escolha (opcao)
		{
			caso '1': 
				{
					empilhar()	
					pare
				}
				caso '2':
				{
					desempilhar()		
					pare
				}
				caso '3':
				{
					remover_pilha()	
					pare
				}
				caso '4':
				{
					listar()		
					pare
				}
				
				caso '5':
				{
					vazia()		
					pare
				}
				caso '6':
				{
					sair()
					pare
				}
				caso contrario:
				{
					escreva("\nATENÇÃO: Opção inválida!")
					u.aguarde(2000)
					menu()						
					pare
				}
		}
	}
	funcao caracter menu() //Função para imprimir na tela do usuário o menu com as opções que o algoritmo tem, recebendo a resposta da seleção do usuário e enviando este valor para a função inicio() para então fazer uso deste dado.
	{
			msg = "Menu Geral          |"	//Personaliza o topo com uma mensagem
			topo()	//Chama a função topo
			
			escreva("| 1 |- Adicionar livro à Pilha           |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 2 |- Remover último livro da Pilha     |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 3 |- Remover todos os livros da Pilha  |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 4 |- Mostrar livros Empilhados         |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 5 |- Verificar a Pilha está vazia      |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 6 |- Sair do Programa                  |\n")
			escreva("+----------------------------------------+\n")
			escreva("Opção: ")
			leia(opcao)
			
			retorne (opcao)				
	}
	funcao empilhar() //Função para fazer o cadastramentos dos elementos que serão empilhados.
	{
		se(ponteiro < total)
		{
			msg = "Adicionar           |"	//Personaliza o topo com uma mensagem
			topo()
			
			escreva("Informe o nome do livro:\n")
			leia(livro[ponteiro])
			livro[ponteiro] = t.caixa_alta(livro[ponteiro])

			ponteiro++
			
			limpa()
			escreva("AVISO: Livro colocado na Pilha com sucesso!")
			Util.aguarde(2000)
			inicio() 			
		}
		senao
		{
			limpa()
			escreva("ATENÇÃO: Limite de livros na Pilha atingido!")
			u.aguarde(2000)
						
			inicio()
		}
	}
	funcao desempilhar() //Função para fazer a remoção apenas do elemento que está no topo da Pilha.
	{
		msg = "Remoção 		 |"	
		topo()
		
		se(ponteiro > 0)
		{	
			escreva("Tem certeza que gostaria de remover: ", livro[ponteiro - 1], " da Pilha? [S/N] \n")
			leia(resposta)
			limpa()
			
			se(resposta == 'S' ou resposta == 's')
			{
				escreva("Livro retirado da Pilha com sucesso")
				u.aguarde(2000)
				ponteiro--
				
				inicio()
			}
			senao se(resposta  == 'N' ou resposta == 'n')
			{
				escreva("Seu livro foi mantido na Pilha!")
				u.aguarde(2000)
	
				inicio()
			}
			senao
			{
				escreva("ATENÇÃO: Resposta inválida")
				u.aguarde(1500)
	
				desempilhar()
			}
		}
		senao
		{
			topo()
			escreva("ATENÇÃO: Não foi encontrado nenhum livro na Pilha!")
			u.aguarde(3000)
			inicio()
		}
	}
	funcao remover_pilha() //Função para remover todos os elementos da Pilha.
	{ 
		se(ponteiro > 0 )
		{
			msg = "Apagar lista	 |"
			topo()
			
			escreva("Tem certeza que gostaria de remover todos os livros da Pilha? [S/N]\n")
			leia(resposta)
			limpa()

			se(resposta == 'S' ou resposta == 's')
			{
				escreva("AGUARDE: Estamos removendo os livros da sua Pilha!")
				u.aguarde(3000)
				limpa()
			
				escreva("Pilha Vazia, agora você pode começar uma nova Pilha de livros")
				ponteiro = 0
				u.aguarde(3000)
				
				inicio()
			}
			senao se (resposta == 'N' ou resposta == 'n')
			{
				escreva("Seus livros permanecem na Pilha")
				u.aguarde(2000)
				inicio()
			}
			senao
			{
				escreva("ATENÇÃO: Resposta inválida")
				u.aguarde(2000)

				remover_pilha()
			}
		}
		senao 
		{
			topo()
			escreva("ATENÇÃO: Não foi encontrado nenhum livro na Pilha!")
			u.aguarde(3000)
			
			inicio()
		}
	}
	funcao listar() //Função para Listar todos os elementos que estão na Pilha.
	{
		limpa()
		
		se(ponteiro == 0)
		{
			escreva("AVISO: Nenhum livro encontrado na Pilha!")
			u.aguarde(3000)
			inicio()
		}
		senao
		{
			msg = "Lista de livros	 |"
			topo()			

			para(inteiro n = ponteiro - 1; n >= 0; n--)
			{
				escreva("Livro: ", livro[n], "\n")
			}
			
			retornar()
		}	
	}
	funcao vazia() //Função para determinar se a Pilha está vazia ou não.
	{
		msg = "Lista vazia	 |"
		topo()
		
		se(ponteiro == 0)
		{
			escreva("VERDADEIRO - A Pilha está vazia\n")
		}
		senao
		{
			escreva("FALSO - A Pilha não está vazia\n")
		}
			retornar()
	}
	funcao topo() //Função para fazer a personalização do cabeçalho na vizualização do Algoritmo.
	{
			limpa()
			escreva("+----------------------------------------+\n")
			escreva("|  PILHA DE LIVROS - ", msg,"\n")
			escreva("+----------------------------------------+\n")
	}
	funcao retornar() //Funçao para retornar ao inicio do programa e consequentemente ao menu().
	{
		escreva("\n================================================.\n")
		escreva("Pressione a tecla [ENTER] para retornar!")
		leia(enter)
		inicio()
	}
	funcao sair() //Função para finalizar o programa.
	{
		limpa()
		escreva("Tem certeza que vai sair? [S/N]\n")
		leia(resposta)
		
			se(resposta == 'S' ou resposta == 's')
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
			senao
			{
				inicio()
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 203; 
 * @DOBRAMENTO-CODIGO = [157];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */