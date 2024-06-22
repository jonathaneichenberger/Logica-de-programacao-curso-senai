/*

Aluno: Jonathan Reinaldo Eichenberger
Curso: Desenvolvimento de sistemas
Módulo: Lógica de Programação
Professor:
Tipo de Entrega: Avaliativa
Atividade: Ativividade avaliativa Lógica Computacional - Geeks Tech
*/
programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u

	const inteiro cadastros = 5
	const inteiro propriedades = 4
	
	cadeia cadastro_equipamento[cadastros][propriedades]
	inteiro fila_cheia = - 1	
	
	funcao inicio()
	{	
		
		caracter opcao = ' '
		inteiro contador = 0
		
		
		
		menu(opcao)

		escolha(opcao){
			
			caso '1':{
				
				cadastrar_equipamentos(contador)
				pare
			}
			caso '2':{
				
				pare
			}
			caso '3':{
				
				pare
			}
			caso '4':{
				
				pare
			}
			caso '5':{
				
				pare
			}
			caso '6':{
				
				pare
			}
			caso '7':{
				
				pare
			}
			caso '8':{
				
				pare
			}
		}

		
	}

	funcao caracter menu(caracter opcao_menu)
	{
		limpa()
		
		escreva("+========================================================+\n")
		escreva("   BEM VINDO A GEEKS TECH - SELECIONE UMA OPÇÃO DO MENU\n")
		escreva("+========================================================+\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("| 1 | Cadastrar novo equipamento                         |\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("| 2 | Executar Manutenção no próximo equipamento         |\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("| 3 | Listar equipamentos na fila para atendimento       |\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("| 4 | Consultar o próximo equipamento a ser atendido     |\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("| 5 | Pesquisar por equipamento na fila para manutenção  |\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("| 6 | Exibir status da fila [aguardando/atendidos]       |\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("| 7 | Listar Equipamentos consertados                    |\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("| 7 | Pesquisar por equipamentos consertados             |\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("| 8 | Sair do Sistema                                    |\n")
		escreva("+--------------------------------------------------------+\n")
		escreva("Opção: ")
		leia(opcao_menu)

		verificar_caracter_valido(opcao_menu)
		
		retorne opcao_menu
	}

	funcao caracter verificar_caracter_valido(caracter opcao_menu_valido)
	{
		caracter navegar_para_menu
		
		se(t.caracter_e_inteiro(opcao_menu_valido) == verdadeiro){
			
			retorne opcao_menu_valido
			
		}senao{
			
			limpa()

			escreva("ATENÇÃO: Letras não podem ser usadas para acessar o menu.\n\n\n\n\n")
			escreva("============ TECLE ENTER PARA VOLTAR AO MENU ===============\n")
			leia(navegar_para_menu)

			opcao_menu_valido = ' '
			
			retorne opcao_menu_valido
		}
	}

	funcao inteiro cadastrar_equipamentos(inteiro contador_equipamentos)
	{
		inteiro fila_cheia_verificada = 0

		limpa()
		escreva("+========================================================+\n")
		escreva("        GEEKS TECH - CADASTRAR NOVO EQUIPAMENTO\n")
		escreva("+========================================================+\n")
		
		verificar_fila_cheia(contador_equipamentos, fila_cheia_verificada)

		se(fila_cheia_verificada <= 1)
		{
			para(inteiro i = 0; i < propriedades; i++)
			{
				limpa()
				escreva("RETORNANDO DO CAFÉ \n")
				
				leia(cadastro_equipamento[contador_equipamentos][i])

				
				
				
			}
			
		}
		
		retorne contador_equipamentos
	}

	funcao inteiro verificar_fila_cheia(inteiro contador_equipamentos, inteiro fila_cheia_verificada)
	{
		se(fila_cheia == contador_equipamentos - 1){

			fila_cheia_verificada = 0
			retorne fila_cheia_verificada 
			
		}senao se(fila_cheia == cadastros - 1){
			fila_cheia_verificada = 2
			retorne fila_cheia_verificada
		}senao{
			
			fila_cheia_verificada = 1
			retorne fila_cheia_verificada
		}
		
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3676; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */