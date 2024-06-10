programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
	
	cadeia 	bovino[10] = {"Alcatra", "Contrafilé", "Filé Mignon", "Picanha", "Patinho", "Fraldinha", "Coxão Mole", "Costela", "Ossobuco", "Mocotó "}
	cadeia 	suino[7] = {"Costelinha", "Pernil  ", "Lombo   ", "Bacon   ", "Linguicinha", "Bisteca ", "Panceta "}
	real   	preco_bovino[10] = {28.99, 32.99, 49.99, 45.99, 22.99, 21.99, 25.99, 19.99, 13.99, 10.99}
	real   	preco_suino[7] = {15.99, 12.99, 19.99, 34.99, 17.99, 11.99, 14.99}
	inteiro 	id_bovino[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	inteiro 	id_suino[7] = {1, 2, 3, 4, 5, 6, 7}
	real 	peso_bovino[10]
	real 	peso_suino[10]
	real 	total_carrinho = 0.0
	inteiro 	auxiliar = 0
	caracter 	opcao = ' '
	inteiro 	opcao_carrinho
	
	
	funcao inicio()
	{
		se(auxiliar < 1)
		{
			abertura()	
		}
		menu()
		
		escolha(opcao)
		{
			caso '1':
			{
				auxiliar++
				carne_bovina()
				pare
			}
			caso '2':
			{
				auxiliar++
				carne_suina()
				pare
			}
			caso '3':
			{
				auxiliar++
				carrinho()
				pare
			}
			caso contrario:
			{
				escreva("ALERTA: Opção Inválida")
				u.aguarde(2000)
				inicio()
				pare
			}
		}
	}
	funcao abertura()
	{
		escreva("|||||||||||||||||||||||||||||||||||||||||||||||||\n")
		escreva("||         ||||         ||         ||          ||\n")
		escreva("||  |||||   |||  |||||||||  |||||||||||||  ||||||\n")
		escreva("||  ||||||  |||  |||||||||  |||||||||||||  ||||||\n")
		escreva("||  ||||||  |||  |||||||||  |||||||||||||  ||||||\n")
		escreva("||  |||||  ||||  |||||||||  |||||||||||||  ||||||\n")
		escreva("||        |||||         ||         ||||||  ||||||\n")
		escreva("||  |||||  ||||  ||||||||||||||||  ||||||  ||||||\n")
		escreva("||  ||||||  |||  ||||||||||||||||  ||||||  ||||||\n")
		escreva("||  ||||||  |||  ||||||||||||||||  ||||||  ||||||\n")
		escreva("||  |||||   |||  ||||||||||||||||  ||||||  ||||||\n")
		escreva("||        |||||         ||         ||||||  ||||||\n")
		escreva("|||||||||||||||||||||||||||||||||||||||||||||||||\n")
		u.aguarde(2000)
		limpa()
		
		escreva("|||||||||||||||||||||||||||||||||||||||||||||||||\n")
		escreva("||         ||||         ||         ||         |||\n")
		escreva("||  |||||   |||  |||||||||  |||||||||  ||||||||||\n")
		escreva("||  ||||||  |||  |||||||||  |||||||||  ||||||||||\n")
		escreva("||  ||||||  |||  |||||||||  |||||||||  ||||||||||\n")
		escreva("||  |||||  ||||  |||||||||  |||||||||  ||||||||||\n")
		escreva("||        |||||         ||         ||         |||\n")
		escreva("||  |||||  ||||  |||||||||  |||||||||  ||||||||||\n")
		escreva("||  ||||||  |||  |||||||||  |||||||||  ||||||||||\n")
		escreva("||  ||||||  |||  |||||||||  |||||||||  ||||||||||\n")
		escreva("||  |||||   |||  |||||||||  |||||||||  ||||||||||\n")
		escreva("||        |||||         ||         ||  ||||||||||\n")
		escreva("|||||||||||||||||||||||||||||||||||||||||||||||||\n")
		u.aguarde(2000)
		limpa()
		
	}
	funcao menu()
	{
		escreva("+--------------------------------------------+\n")
		escreva("|    A Ç O U G U E -- B E S T -- B E E F     |\n")
		escreva("+--------------------------------------------+\n")
		escreva("|       ESCOLHA UMA DAS OPÇÕES ABAIXO        |\n")
		escreva("+--------------------------------------------+\n")
		escreva("| 1 |- Carnes Bovinas                        |\n")
		escreva("+--------------------------------------------+\n")
		escreva("| 2 |- Carnes Suínas                         |\n")
		escreva("+--------------------------------------------+\n")	
		escreva("| 3 |- Carrinho                              |\n")
		escreva("+--------------------------------------------+\n")
		escreva("Opção: ")
		leia(opcao)	
	}
	funcao carne_bovina()
	{
		caracter retornar
		
		
		
		limpa()
		escreva("+--------------------------------------------+\n")	
		escreva("|Nº |   CORTES BOVINOS          |  PREÇO KG  |\n")
		escreva("+--------------------------------------------+\n")

		para(inteiro i = 0; i < 10; i++)
		{
			escreva("| ", i + 1, " | -  ", bovino[i])
			escreva("\t\t| R$: ", preco_bovino[i], "  |\n")
		}
		escreva("+--------------------------------------------+\n")
		escreva("|      ESCOLHA UMA OPÇÃO ENTRE 1 E 10        |\n")
		escreva("+--------------------------------------------+\n")
		escreva("Opçao: ")
		leia(opcao_carrinho)
		
		para(inteiro i = 0; i < 10; i++)
		{
			se( opcao_carrinho == id_bovino[i])
			{
				limpa()
				escreva("Quantos Kg de ", bovino[i], " deseja colocar no carrinho? [MÁX 10 KG]: ")
				leia(peso_bovino[i])
				
				limpa()
				escreva(peso_bovino[i], " kg de ", bovino[i], " adicionados com sucesso ao carrinho!\n")
				u.aguarde(1000)
			}
		}
		escreva("\n+=====================================================+\n")
		escreva("Deseja continuar comprando cortes Bovinos? [S/N]: ")
		leia(retornar)
		se(retornar == 's' ou retornar == 'S')
		{
			limpa()
			carne_bovina()
		}
		senao
		{
			limpa()
			inicio()
		}
	
		
	}
	funcao carne_suina()
	{
		caracter retornar
		
		limpa()
		escreva("+--------------------------------------------+\n")	
		escreva("|Nº |   CORTES SUÍNOS           |  PREÇO KG  |\n")
		escreva("+--------------------------------------------+\n")
		
		para(inteiro i = 0; i < 7; i++)
		{
			escreva("| ", i + 1, " | - ", suino[i])
			escreva("\t\t| R$: ", preco_suino[i], "  |\n")
		}
		
		escreva("+--------------------------------------------+\n")
		escreva("|      ESCOLHA UMA OPÇÃO ENTRE 1 E 10        |\n")
		escreva("+--------------------------------------------+\n")
		escreva("Opçao: ")
		leia(opcao_carrinho)
		
		para(inteiro i = 0; i < 7; i++)
		{
			se( opcao_carrinho == id_suino[i])
			{
				limpa()
				escreva("Quantos Kg de ", suino[i], " deseja colocar no carrinho? [MÁX 10 KG]: ")
				leia(peso_suino[i])
				
				limpa()
				escreva(peso_suino[i], " kg de ", suino[i], " adicionados com sucesso ao carrinho!\n")
				u.aguarde(2000)
			}
		}
		escreva("\n+=====================================================+\n")
		escreva("Deseja continuar comprando cortes Suinos? [S/N]: ")
		leia(retornar)
		se(retornar == 's' ou retornar == 'S')
		{
			limpa()
			carne_suina()
		}
		senao
		{
			limpa()
			inicio()
		}
		
	}
	funcao carrinho()
	{
		inteiro contador = 1
		real peso_total = 0.0
		
		limpa()
		escreva("+--------------------------------------------+\n")	
		escreva("|       I T E N S -- C A R R I N H O         |\n")
		escreva("+--------------------------------------------+\n")
		escreva("|  PRODUTOS                	|    TOTAL   |\n")
		escreva("+--------------------------------------------+\n")
		
		para( inteiro i = 0; i < 10; i++)
		{
			se(peso_bovino[i] > 0)
			{
				escreva("| ", contador," | -  ", bovino[i])
				escreva("\t\t| R$: ", m.arredondar(preco_bovino[i] * peso_bovino[i], 2), "  |\n")
				contador++
				peso_total += peso_bovino[i]
				total_carrinho += preco_bovino[i] * peso_bovino[i]
			}
			se(peso_suino[i] > 0)
			{
				escreva("| ", contador," | -  ", suino[i])
				escreva("\t\t| R$: ", m.arredondar(preco_suino[i] * peso_suino[i], 2), "  |\n")
				contador++
				peso_total += peso_suino[i]
				total_carrinho += preco_suino[i] * peso_suino[i]
			}
			
		}
		se(peso_total > 3)
		{
			escreva("+--------------------------------------------+\n")
			escreva("TOTAL À PAGAR:\t\t\t   R$:", m.arredondar(total_carrinho * 0.95, 2),"\n")
			escreva("Você ganhou 5% de desconto por comprar mais de 3kg!\n")
		}
		senao
		{
			escreva("+--------------------------------------------+\n")
			escreva("TOTAL À PAGAR:\t\t\t   R$:", m.arredondar(total_carrinho, 2),"\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2955; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */