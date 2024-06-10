programa
{
	const inteiro tamanho = 20
	inteiro numeros[20] = {1, 7, 10, 9, 2, 3, 20, 18, 33, 90, 44, 34, 30, 21, 27, 5, 8, 99, 54, 68}
		
	funcao inicio()
	{
		escreva("Vetor original: ")
    		imprimir_vetor(numeros)

    		merge_sort(numeros, 0, tamanho - 1)

    		escreva("\nVetor ordenado: ")
    		imprimir_vetor(numeros)
    		
	}
	funcao imprimir_vetor(inteiro vetor[])
	{
	    para(inteiro i = 0; i < tamanho; i++)
	    escreva(vetor[i], ", ")
  	}
	funcao merge_sort(inteiro vetor[], inteiro inic, inteiro fim)
	{
		inteiro meio, i, j, k, aux[tamanho]
		
	     se(inic < fim)
	     {
			meio = (inic + fim) / 2
			merge_sort(vetor, inic, meio)
			merge_sort(vetor, meio + 1, fim)
			
			
			i = inic
			j = meio + 1
			k = inic
			
			enquanto(i <= meio e j <= fim)
			{
				se(vetor[i] < vetor[j])
				{
					aux[k] = vetor[i]
					i++
				}
				senao
				{
					aux[k] = vetor[j]
					j++
				}
				k++
			}
			enquanto(i <= meio)
			{
				aux[k] = vetor[i]
				i++
				k++
			}
			enquanto(j <= fim)
			{
				aux[k] = vetor[j]
				j++
				k++
			}
			
			para(i = inic; i <= fim; i++)
			{
				vetor[i] = aux[i]
			}
	    	}
	    		escreva("\nVetor: ", inic, " até ", fim, ": ")
	    		imprimir_vetor(vetor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 586; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */