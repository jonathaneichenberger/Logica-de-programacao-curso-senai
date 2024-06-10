/*
Aluno: Jonathan Reinaldo Eichenberger
Curso: Desenvolvimento de sistemas
Módulo: Lógica de Programação
Professor: Christian Daniel Licnerski Marques Pinheiro
Tipo de Entrega: Avaliativa
Atividade: Stiuação de Aprendizagem 5 - Etapa 2
*/

programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u

	const inteiro total = 3
	
	cadeia   paciente[total], msg, enter
	caracter opcao, resposta
	inteiro  ponteiro = 0, n
	
	funcao inicio()
	{
		opcao = menu()
		
		escolha (opcao)
		{
			caso '1': 
				{
					adicionar_paciente()	
					pare
				}
				caso '2':
				{
					chamar_paciente()	
					pare
				}
				caso '3':
				{
					remover_fila()	
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
					u.aguarde(3000)
					menu()						
					pare
				}
		}
	}
	funcao caracter menu() //Função para imprimir na tela do usuário o menu com as opções que o algoritmo tem, recebendo a resposta da seleção do usuário e enviando este valor para a função inicio() para então fazer uso deste dado.
	{
			msg = "Menu Geral          |"	//Personaliza o topo com uma mensagem
			topo()	//Chama a função topo
			
			escreva("| 1 |- Adicionar paciente na fila de espera   |\n")
			escreva("+---------------------------------------------+\n")
			escreva("| 2 |- Chamar paciente para o atendimento     |\n")
			escreva("+---------------------------------------------+\n")
			escreva("| 3 |- Remover todos os pacientes da fila     |\n")
			escreva("+---------------------------------------------+\n")
			escreva("| 4 |- Mostrar pacientes aguardando na fila   |\n")
			escreva("+---------------------------------------------+\n")
			escreva("| 5 |- Verificar se existem pacientes na fila |\n")
			escreva("+---------------------------------------------+\n")
			escreva("| 6 |- Sair do Programa                       |\n")
			escreva("+---------------------------------------------+\n")
			escreva("Opção: ")
			leia(opcao)
			
			retorne (opcao)				
	}
	funcao adicionar_paciente() //Função para fazer o cadastramentos dos pacientes que serão colocados na fila.
	{
		se(ponteiro < total)
		{
			msg = "Adicionar           |"	//Personaliza o topo com uma mensagem
			topo()
			
			escreva("\n[", ponteiro, " / ", total, "] Informe o nome do paciente:\n")
			leia(paciente[ponteiro])
			paciente[ponteiro] = t.caixa_alta(paciente[ponteiro])

			ponteiro++
			
			limpa()
			escreva("AVISO: Paciente 0", ponteiro, ": ", paciente[ponteiro - 1], " adicionado à fila com sucesso!")
			Util.aguarde(2000)
			inicio() 			
		}
		senao
		{
			limpa()
			escreva("\nATENÇÃO: Infelizmente só podemos ter ", total, " pacientes na fila de espera!\n\nAguarde até um paciente ser atendido para adicionar outro paciente!")
			u.aguarde(5000)
						
			inicio()
		}
	}
	funcao chamar_paciente() //Função para chamar o primeiro paciente da fila para o atendimento e reorganizar a fila.
	{
		cadeia medico[5] = {"Dr. Augusto", "Dr. Daniel", "Dr. Augusto", "Dr. Raphael", "Dr. Emanuel"} 
		inteiro consultorio
		
		msg = "Chamada             |"	
		topo()

		consultorio = u.sorteia(0, 4)
		
		se(ponteiro > 0)
		{	
			escreva("\nPaciente ", paciente[0], " favor comparecer ao consultório 0", consultorio + 1, " para atendimento com o ", medico[consultorio], " !\n")
			
			para(n = 0; n < ponteiro - 1; n++)
			{
				paciente[n] = paciente[n+1]
				
			}
			ponteiro--
			retornar()
		}	
		senao
		{
			topo()
			escreva("\nATENÇÃO: No momento, não exitem pacientes aguardando atendimento!")
			u.aguarde(3000)
			inicio()
		}
	}
	funcao remover_fila() //Função para remover todos os pacientes da fila.
	{ 
		inteiro load = 0
		se(ponteiro > 0 )
		{
			msg = "Limpar lista	      |"
			topo()
			
			escreva("\nTem certeza que gostaria de remover todos os pacientes da fila? [S/N]\n")
			leia(resposta)
			limpa()

			se(resposta == 'S' ou resposta == 's')
			{
				enquanto(load <= 100)
				{
					limpa()
					escreva("\nAGUARDE: Estamos removendo os pacientes da fila!\n")
					escreva("Loading ", load, "% ")
					u.aguarde(50)
					load++
				}
				limpa()
			
				escreva("\nFila vazia, agora você pode começar a cadastrar novos pacientes!")
				ponteiro = 0
				u.aguarde(3000)
				
				inicio()
			}
			senao se (resposta == 'N' ou resposta == 'n')
			{
				escreva("\nNenhum paciente foi retirado da fila!")
				u.aguarde(2000)
				inicio()
			}
			senao
			{
				
				escreva("\nATENÇÃO: Resposta inválida")
				u.aguarde(2000)

				remover_fila()
			}
		}
		senao 
		{
			topo()
			escreva("\nATENÇÃO: Não foi encontrado nenhum paciente na fila!")
			u.aguarde(3000)
			
			inicio()
		}
	}
	funcao listar() //Função para Listar todos os pacientes que estão na fila.
	{
		limpa()
		
		se(ponteiro == 0)
		{
			escreva("\nAVISO: Nenhum paciente foi encontrado na fila!")
			u.aguarde(3000)
			inicio()
		}
		senao
		{
			msg = "Lista de pacientes  |"
			topo()			

			escreva("\n")
			
			para( n = 0; n < ponteiro; n++)
			{
				escreva("Paciente 0", n + 1, ": ", paciente[n], "\n")
			}
			
			retornar()
		}	
	}
	funcao vazia() //Função para determinar se a fila de espera esta vazia.
	{
		msg = "Lista vazia	      |"
		topo()
		
		se(ponteiro == 0)
		{
			escreva("\nVERDADEIRO - A lista de espera está vazia\n")
		}
		senao
		{
			escreva("\nFALSO - A lista de espera não está vazia\n")
		}
			retornar()
	}
	funcao topo() //Função para fazer a personalização do cabeçalho na vizualização do Algoritmo.
	{
			limpa()
			escreva("+---------------------------------------------+\n")
			escreva("|      HOSPITAL JARAGUÁ - ", msg,"\n")
			escreva("+---------------------------------------------+\n")
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
		escreva("\nTem certeza que vai sair? [S/N]\n")
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
 * @POSICAO-CURSOR = 3369; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */