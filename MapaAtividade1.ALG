Algoritmo "ControleLogistico"

Var
   // Se��o de Declara��es das vari�veis
   producaoTotal, producaoRestante: real
   quantidadeCaminhoes, capacidadeCaminhao, quilometrosCaminhao : inteiro
   valorTransporte, valorToneladaQuilometro: real
   custoTotal, capacidadeTotalFrota: real
   i: inteiro
Inicio

   Escreva("Digite a produ��o total em toneladas da empresa:")
   Leia(producaoTotal)

   Escreva("Digite a quantidade de caminh�es dispon�veis: ")
   Leia(quantidadeCaminhoes)

   producaoRestante <- producaoTotal
   custoTotal <- 0
   capacidadeTotalFrota <- 0
   valorTransporte <- 0
   Para i de 1 at� quantidadeCaminhoes fa�a;

      Escreva("Digite a capacidade do caminh�o ",i," em toneladas: ")
      Leia(capacidadeCaminhao)
      capacidadeTotalFrota <- capacidadeCaminhao + capacidadeTotalFrota

      Escreva("Quantos quil�metros que o caminh�o ",i," percorrer�: ")
      Leia(quilometrosCaminhao)

      Escreva("Qual o valor por tonelada do quil�metro rodado para o caminh�o ",i, " :")
      Leia(valorToneladaQuilometro)

      // Verifica��o da aptid�o da empresa
      Se producaoRestante >= capacidadeCaminhao ent�o

         // C�lculo do custo de transporte para caminh�es com capacidade superior a 45 toneladas
         Se capacidadeCaminhao > 45 ent�o
            valorTransporte <- (capacidadeCaminhao * quilometrosCaminhao) * (valorToneladaQuilometro * 0.75)
         Sen�o
            // C�lculo do custo de transporte para caminh�es com capacidade inferior a 45 toneladas
            valorTransporte <- (capacidadeCaminhao * quilometrosCaminhao) * valorToneladaQuilometro
         Fimse

         // Atualiza��o das vari�veis
         custoTotal <- custoTotal + valorTransporte
         producaoRestante <- producaoRestante - capacidadeCaminhao
      Fimse
   Fimpara
   Se capacidadeTotalFrota >= producaoTotal ent�o
      Escreva("A empresa est� Apta para o transporte da produ��o")
      Escreval("O valor total do custo ficou em R$ ", custoTotal)
   Sen�o
      Escreva("A empresa N�O est� Apta para o tranposte da produ��o")
   Fimse

Fimalgoritmo
