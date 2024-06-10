programa
{
	inclua biblioteca Util --> u

	inteiro numeros[20] = {1, 7, 10, 9, 2, 3, 20, 18, 33, 90, 44, 34, 30, 21, 27, 5, 8, 99, 54, 68}
	inteiro auxiliar_troca, ponteiro

	funcao inicio()
	{
		ponteiro = u.numero_elementos(numeros)
		
		bublle_sort(ponteiro)
		
		para(inteiro i = 0; i < ponteiro; i++)
		{
			escreva(numeros[i],", ")
		}
		
	}
	
	funcao bublle_sort(inteiro contador)
	{
		para(inteiro i = contador; i > 0 ; i--)
		{
			para(inteiro n = 0; n < contador - 1; n++)
			{
				se(numeros[n] > numeros[n + 1])
				{
					auxiliar_troca = numeros[n + 1]
					numeros[n + 1] = numeros[n]
					numeros[n] = auxiliar_troca
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */