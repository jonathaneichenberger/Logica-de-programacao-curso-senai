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

	const inteiro tamanho = 5
	
	funcao inicio()
	{			
		caracter opcao = ' '
		
		menu(opcao)

		
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
		
		se(t.caracter_e_inteiro(opcao_menu_valido) == verdadeiro)
		{
			retorne opcao_menu_valido
		}
		senao
		{
			limpa()

			escreva("ATENÇÃO: Letras não podem ser usadas para acessar o menu.\n\n\n\n\n")
			escreva("============ TECLE ENTER PARA VOLTAR AO MENU ===============\n")
			leia(navegar_para_menu)

			opcao_menu_valido = ' '
			
			retorne opcao_menu_valido
		}
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2664; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */