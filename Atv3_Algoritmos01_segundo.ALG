Algoritmo VetoresSemDuplicidade
//

Var
   // Declara��o dos vetores
   vetorPrimeiro : Vetor [1..10] de inteiro
   vetorSegundo : Vetor [1..10] de inteiro
   vetorVerificador : Vetor [1..10] de inteiro
   vetorElemento, i,j, cont : inteiro
   
Inicio
   // Passo 1: Leitura do vetor de c�digos da capacita��o 1
   Para vetorElemento de 1 at� 10 fa�a
      Escreva("Digite o c�digo do funcion�rio da Primeira capacita��o : ")
      Leia(vetorPrimeiro[vetorElemento])
   Fimpara

   // Passo 2: Leitura do vetor de c�digos da capacita��o 2
   Para vetorElemento de 1 at� 10 fa�a
      Escreva("Digite o c�digo do funcion�rio da Segunda capacita��o: ")
      Leia(vetorSegundo[vetorElemento])
   Fimpara

   // Passo 3: Cria��o do vetor de c�digos em comum
   Para i de 1 at� 10 fa�a
      Para j de 1 at� 10 fa�a
         Se vetorPrimeiro[i] = vetorSegundo[j] ent�o
            vetorVerificador[i] <- vetorPrimeiro[i]
         Fimse
      Fimpara
   Fimpara

   // Passo 4: Verifica��o de duplicidade e armazenamento no vetor
   cont <- 0
   Para i de 1 at� 10 fa�a
      Se vetorVerificador[i] <> 0 ent�o
         duplicados[cont] <- vetorVerificador[i]
         cont <- cont + 1
      Fimse
   Fimpara

   // Passo 5: Mostrar os c�digos duplicados na tela
   Escreva("C�digos duplicados:")
   Para i de 0 at� cont-1 fa�a
      Escreva(duplicados[i])
   Fimpara

FimAlgoritmo