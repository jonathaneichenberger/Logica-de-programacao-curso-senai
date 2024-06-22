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
	inclua biblioteca Teclado --> t
	inclua biblioteca Tipos --> tp
	inclua biblioteca Util --> u

	const inteiro cadastros = 5
	const inteiro propriedades = 4
	
	cadeia cadastro_equipamento[cadastros][propriedades]
		
	
	funcao inicio()
	{	
		inteiro status_fila = 0
		caracter opcao = '0'
		inteiro contador = 0
		
		escolha(opcao){

			caso '0':{
				
				menu(opcao)
				pare
			}
			caso '1':{
				
				verificar_status_fila(contador, status_fila)
				
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

	funcao caracter menu(caracter opcao)
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
		leia(opcao)

		verificar_caracter_valido(opcao)
		
		retorne opcao
	}

	funcao caracter verificar_caracter_valido(caracter opcao)
	{
		
		se(tp.caracter_e_inteiro(opcao) == verdadeiro){
			
			retorne opcao
			
		}senao{
			
			limpa()

			escreva("ATENÇÃO: Letras não podem ser usadas para acessar o menu.\n\n\n\n\n")

			voltar_com_enter(opcao)

			retorne opcao
		}
	}

	funcao inteiro cadastrar_equipamentos(inteiro contador)
	{
		inteiro fila_cheia_verificada = 0

		limpa()
		escreva("+========================================================+\n")
		escreva("        GEEKS TECH - CADASTRAR NOVO EQUIPAMENTO\n")
		escreva("+========================================================+\n")
		
		

		se(fila_cheia_verificada <= 1)
		{
			para(inteiro i = 0; i < propriedades; i++)
			{
				limpa()
				escreva("RETORNANDO DO CAFÉ \n")
				
				leia(cadastro_equipamento[contador][i])

			}
			
		}
		
		retorne contador
	}

	funcao inteiro verificar_status_fila(inteiro contador, inteiro status_fila)
	{
		inteiro fila_cheia = -1
		
		
		se(fila_cheia == contador - 1){

			status_fila = 0
			retorne status_fila 
			
		}senao se(fila_cheia == cadastros - 1){
			
			status_fila = 2
			retorne status_fila
			
		}senao{
			
			status_fila = 1
			retorne status_fila
		}
		
	}

	funcao caracter voltar_com_enter(caracter opcao)
	{
		escreva("============ TECLE ENTER PARA VOLTAR AO MENU ===============\n")
			
			opcao = '0'
			
			se(t.tecla_pressionada(t.TECLA_ENTER))
			{
				
				
				
			}

		
		retorne opcao
		
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4111; 
 * @PONTOS-DE-PARADA = 184;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */