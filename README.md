# Trabalho_T1_FSC_2025


Grupo: Matheus Cunha, Matheus Kretzmann, Nicolas Arcari e Rafael Magalhães


Linguagem de montagem e montador do processador TRM


Questão 1: 


  Escreve os N primeiros números inteiros positivos maiores que zero, armazenando-os de forma sequencial. O programa começa lendo o valor de N e inicializando os registradores v1 recebe 1, v2 é o contador de endereços e v3 o contador da quantidade de números já gerados. Dentro do loop1, o valor de v1 é gravado na memória e atualizado para o próximo número ímpar ao somar 2. O v2 também é incrementado em 2, o contador v3 aumenta em 1, sendo comparado com v0 que é o valor de N. Quando v3 atinge ou ultrapassa v0, o programa sai do loop, encerrando a execução com hlt.

  
![img](img/Questao_1.png)


Questão 2:


  Gera os N primeiros números da sequência de Fibonacci, armazenando-os na memória a partir do endereço 0x30. O programa começa inicializando os registradores, v0 guarda 0 e v1 guarda 1, v3 é o contador de quantos termos já foram calculados e v4 armazena o valor de N, o registrador v7 guarda o endereço na memória, começando em 0x30 e sendo incrementado de 2 em 2. A cada loop, o próximo termo da sequência é obtido pela soma dos dois anteriores (add v0,v1), armazenado na memória e então os registradores são atualizados para continuar a série. Esse processo se repete até que o v3 atinja o valor de v4, encerrando a execução com hlt.


![img](img/Questao_2.png)


Questão 3:


  Encontra o maior número inteiro armazenado na memória entre os endereços 0x40 e 0x80 e salva o resultado na posição 0x90. O programa começa inicializando v0 como referência para o maior valor, v2 para percorrer os endereços de memória e v3 como limite de busca (0x80). No loop, cada valor da memória é carregado em v5, se v5 for maior que v0, ele passa a ser o novo maior. Em seguida, v2 é incrementado em 2, e o processo continua até que chegue em v3. Ao final da busca, o maior valor encontrado é gravado no endereço 0x90, encerrando a execução com hlt.


![img](img/Questao_3.png)


Questão 4:


  A


![img](img/Questao_4.png)


Questão 5:


  Procura nos endereços de memória 0x60 e 0x70 dois números cuja soma seja igual a 10 e, caso encontre, salva as posições da memória desses números nos endereços 0x80 e 0x90.  O programa começa inicializando o registrador a0 guardando o endereço 0x60 e o registrador v6 que guarda o endereço 0x70. Para isso, o programa utiliza dois loops, o primeiro para percorrer o intervalo iniciando no registrador a0 até o registrador v6, e o segundo, que está dentro do primeiro, compara cada número desse intervalo, usando a1 como auxiliar. Em cada passada pelos loops, os valores lidos de memória (v0 e v1) são somados e armazenados em v2; se a soma for igual a 10, o programa salva os endereços dos dois números em 0x80 e 0x90 e encerra a execução com hlt. Se não, o a1 é incrementado até percorrer todo o intervalo, e depois o a0 também testa outras combinações.


![img](img/Questao_5.png)


Questão 6:


  Inverte a ordem dos valores armazenados entre os endereços de memória 0x40 e 0x60, fazendo com que eles apareçam invertidos dentro do mesmo intervalo. O programa começa carregando inicialmente os ponteiros que apontam para os blocos de texto (text1, text2, text3, text4), e em seguida percorre cada um desses vetores de caracteres em loops separados (loop, loop1, loop2, loop3). Em cada loop, os valores são lidos da memória e gravados em ordem inversa dentro dos espaços de memória 0x40 a 0x60. O código também utiliza condições de parada para verificar o fim de cada string, antes de passar para o próximo. Depois disso todos os valores aparecerão na memória em ordem invertida. 


![img](img/Questao_6.png)


Questão 7:


  A


![img](img/Questao_7.png)


Questão 8:


  A


![img](img/Questao_8.png)


Questão 9:


  A


![img](img/Questao_9.png)


Questão 10:


  A


![img](img/Questao_10.png)












