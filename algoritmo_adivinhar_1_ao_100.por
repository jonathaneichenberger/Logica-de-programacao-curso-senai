programa
{
	
	
	funcao inicio()
	{
		inteiro  limite_inferior = 0, limite_superior = 100, palpite = 0, palpite_certo = 0, aux = 0
		caracter resposta
		inteiro  verificar_palpite[8]
		
		faca{
			palpite = (limite_inferior + limite_superior) / 2
			verificar_palpite[aux] = palpite
			aux += 1

			escreva("O número que voçê está pensando é maior que " ,palpite," ? [S/N]:\n")
			leia(resposta)
			limpa()
			
			se( resposta == 's' ou resposta == 'S' )
			{
				limite_inferior = palpite + 1
			}senao
			{
				limite_superior = palpite
			}
	
			para( inteiro contador = 0; contador < aux; contador++ )
			{
				se ( limite_inferior == verificar_palpite[contador])
				palpite_certo += 1
			}
		}enquanto( palpite_certo != 1 )
		
		escreva("O número que voçê pensou era: ", limite_inferior,"\n\n\n\n\n\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 34; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */