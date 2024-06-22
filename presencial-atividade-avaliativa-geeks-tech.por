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
	const inteiro tamanho = 5
	
	funcao inicio()
	{			
		inteiro opcao = 0
		
		menu(opcao)
	}

	funcao inteiro menu(inteiro opcao_menu)
	{
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
		
		retorne opcao_menu
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 320; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */