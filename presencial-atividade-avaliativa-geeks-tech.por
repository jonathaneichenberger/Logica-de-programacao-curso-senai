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

	const inteiro cadastros = 4
	const inteiro propriedades = 5
	
	cadeia cadastro_equipamento[cadastros][propriedades]
	cadeia equipamento_consertado[cadastros][propriedades]
	caracter opcao = '0'
	cadeia atributos[5] = {
			"Nome: ",
			"Equipamento: ",
			"Problema: ", 
			"Data: ",
			"Valor do Conserto: R$:"
		}
	inteiro contador = 0
	inteiro status_fila = 0
	
	funcao inicio()
	{	
		
		
		escolha(opcao){

			caso '0':{
				
				menu()
				pare
			}
			caso '1':{
		
				cadastrar_equipamentos()
				
				pare
			}
			caso '2':{

				executar_manutencao()
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

	funcao menu()
	{
		limpa()
		
		escreva("+========================================================+\n")
		escreva("|  BEM VINDO A GEEKS TECH - SELECIONE UMA OPÇÃO DO MENU  |\n")
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

		verificar_caracter_valido()
		
	}

	funcao cadastrar_equipamentos(){

		caracter confirmar_cadastro
		caracter resposta_continuar_cadastrando
		cadeia perguntas[4] = {
			"Nome do cliente?",
			"Nome do equipamento?",
			"Qual o problema relatado? ",
			"Digite a data de entrada usando o formato [dd/mm/aa] "
		}
		
						
		limpa()
		escreva("+========================================================+\n")
		escreva("|       GEEKS TECH - CADASTRAR NOVO EQUIPAMENTO          |\n")
		escreva("+========================================================+\n\n")
		
		

		se(status_fila <= 1){
			
			para(inteiro i = 0; i < propriedades - 1; i++){
				
				escreva(perguntas[i])
				escreva("\n")
				escreva(atributos[i])
				leia(cadastro_equipamento[contador][i])
				escreva("----------------------------------------------------------\n")
			}
			u.aguarde(500)
			escreva("\nCliente cadastrado com sucesso!")
			u.aguarde(1000)
			
			contador++
			
		}senao se(status_fila == 2){

			escreva("ATENÇÃO: Você Atingiu o limite máximo de cadastros.\n\n\n\n")

			voltar_com_enter()
		}
		
		limpa()
		escreva("Gostaria de continuar cadastrando? [S/N]:")
		leia(resposta_continuar_cadastrando)

		verificar_status_fila()
		
		
		se(resposta_continuar_cadastrando == 'n' ou resposta_continuar_cadastrando == 'N')
		{	
			
			u.aguarde(300)
			opcao = '0'
			limpa()
			escreva("Voltando ao menu Principal")
			u.aguarde(300)
			escreva(".")
			u.aguarde(300)
			escreva(".")
			u.aguarde(300)
			escreva(".")
			u.aguarde(300)
			
			resposta_continuar_cadastrando = ' '
			
			inicio()
			
		}senao se(resposta_continuar_cadastrando == 's' ou resposta_continuar_cadastrando == 'S' e status_fila <= 1){
			
			opcao = '1'
			resposta_continuar_cadastrando = ' '
			
			inicio()
			
		}senao{
			
			limpa()
			escreva("ATENÇÃO: Você digitou uma resposta inválida")
			voltar_com_enter()
		}		
	}

	funcao executar_manutencao()
	{
		caracter resposta_confirmacao = ' '
		logico realizar_manutencao = falso

		limpa()
		escreva("+========================================================+\n")
		escreva("|    GEEKS TECH - REALIZAR MANUTENÇÃO NO EQUIPAMENTO     |\n")
		escreva("+========================================================+\n\n")

		escreva("Dados do próximo equipamento na fila para efetuar a manutenção\n")
		escreva("\n----------------------------------------------------------------\n")

		se(contador > 0){
			
			para(inteiro i = 0; i < propriedades - 1; i++){
				
				escreva(atributos[i])
				escreva(cadastro_equipamento[0][i])
				escreva("\n----------------------------------------------------------------\n")
			
			}

			escreva("\nDeseja efetuar a Manutenção no equipamento agora? [S/N]: ")
			leia(resposta_confirmacao)
			
			se(resposta_confirmacao == 'n' ou resposta_confirmacao == 'N'){

				voltar_com_enter()
			
			}senao se(resposta_confirmacao == 's' ou resposta_confirmacao == 'S'){
				
				para(inteiro i = 0; i < contador - 1; i++)
				{
					para(inteiro n = 0; n < propriedades; n++)
					{
						se(i == 0)
						{
							equipamento_consertado[i][n] = cadastro_equipamento[i][n]
						}
						
						cadastro_equipamento[i][n] = cadastro_equipamento[i + 1][n]
					}
					
				}
				contador--

				limpa()
				escreva("Manutenção realizada com sucesso!\n\n")
				escreva("Qual o valor que será cobrado pelo serviço? R$:")
				

				voltar_com_enter()
				
			}senao{
			
				limpa()
				escreva("ATENÇÃO: Você digitou uma resposta inválida")
				voltar_com_enter()
			
			}	
			
		}senao{

			escreva("\nNenhum equipamento encontrado esperando para realizar a manutenção")
			voltar_com_enter()
		}

	}

	funcao inteiro verificar_status_fila(){
		
		inteiro fila_cheia = -1
		
		
		se(fila_cheia == contador - 1){

			status_fila = 0
			
			retorne status_fila 
			
		}
		se(contador == cadastros){
			
			status_fila = 2
			
			retorne status_fila
			
		}senao{
			
			status_fila = 1
			
			retorne status_fila
		}
	}

	funcao verificar_caracter_valido(){
		
		se(tp.caracter_e_inteiro(opcao) == verdadeiro){
			
			inicio()
			
		}senao{
			
			limpa()

			escreva("ATENÇÃO: Letras não podem ser usadas para acessar o menu.")

			voltar_com_enter()

		}
	}

	funcao voltar_com_enter(){
		
		
		cadeia verificar_enter

		escreva("\n\n============ TECLE ENTER PARA VOLTAR AO MENU ===============\n\n")
		leia(verificar_enter)
		
		opcao = '0'
		
		inicio()	
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6171; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cadastro_equipamento, 19, 8, 20}-{equipamento_consertado, 20, 8, 22}-{contador, 29, 9, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */