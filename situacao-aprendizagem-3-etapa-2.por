//Aluno: Jonathan Reinaldo Eichenberger
//Curso: Desenvolvimento de sistemas
//Módulo: Lógica de Programação
//Professor: Christian Daniel Licnerski Marques Pinheiro
//Tipo de Entrega: Não Avaliativa
//Atividade: Stiuação de Aprendizagem 3 - Etapa 2

programa
{
	inclua biblioteca Util --> U
	
	const inteiro total = 100
	
	inteiro   quant, idade[total], ponteiro = 0, n
	caracter  opcao
	cadeia    nome[total]
	
	funcao inicio()
	{
		limpa()
		escreva("Quantos clientes gostaria de cadastrar?\n")
		leia(quant)

		se(quant > 0)
		{
			menu()	//Redireciona o usuario para a função menu
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
			escreva("|                M E N U                 |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 1 |- Cadastrar novo usuário            |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 2 |- Listar todos usuários cadastrados |\n")
			escreva("+----------------------------------------+\n")
			escreva("| 3 |- Sair do sistema                   |\n")
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
					sair()		//Chama a função sair
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
		se(ponteiro < quant)
		{
			limpa()
			escreva("Informe o nome do(a) cliente:\n")
			leia(nome[ponteiro])
	
			limpa()
			escreva("Informe quantos anos o(a) ", nome[ponteiro], " tem:\n")
			leia(idade[ponteiro])
	
			ponteiro++		
			
			limpa()
			escreva("AVISO: Cadastro realizado com sucesso!")
			Util.aguarde(3000)
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
		se(ponteiro == 0)
		{
			escreva("AVISO: Nenhum registro encontrado!")
			U.aguarde(3000)
			menu()
		}
		senao
		{
			escreva("Lista dos clientes cadastrados\n\n")
			escreva(".================================================.\n")

			para(n = 0; n < ponteiro; n++)
			{
				escreva("Nome: ", nome[n], " - Idade: ", idade[n], "\n\n")
			}

			
			escreva(".================================================.\n")
			Util.aguarde(4000)
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
 * @POSICAO-CURSOR = 249; 
 * @DOBRAMENTO-CODIGO = [80, 107];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */