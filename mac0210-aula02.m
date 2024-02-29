#{
Exemplo que ilustra porque comparações
de igualdade entre valores em ponto
flutuante (ou seja, com precisão finita)
não funcionam...
#}

# a expressão lógica abaixo devolve 0 (falso)
1-2/3 == 1/3

# a expressão lógica abaixo devolve 1 (verdadeiro)
1/3 + 2/3 == 1

#{
Exemplo 1.1 do livro: aproximação de Stirling
para valores de n! (n fatorial) com n grande
#}

n = 1:10 # cria um vetor com os valores n=1, 2, ..., 10
#{
Observação: comandos em octave por default
produzem uma saída impressa. Para executar
comandos "silenciosos" utilize ';' no final.
Por exemplo,
n = 1:10;
faz o mesmo que o trecho acima, sem produzir
saída impressa.
#}

fatn = factorial(n) # calcula o vetor de fatoriais 1!, 2!, ..., 10!

Sn = sqrt(2*pi*n).*(n/e).^n # aproximação de Stirling
#{
observe na linha acima como as operações
de multiplicação (*) e exponenciação (^)
são convertidas em operações incidentes
em cada componente do vetor (.* e .^,
respectivamente).
#}

erro_abs = abs(fatn-Sn) # calcula o erro absoluto entre os fatoriais exatos e suas aproximações de Stirling

erro_rel = abs(fatn-Sn)./fatn # calcula o erro relativo entre os fatoriais exatos e suas aproximações de Stirling
#{
observe nesse último vetor como os erros relativos diminuem à medida que n cresce.
#}

#{
apresenta todos os vetores linha acima na forma de uma matriz, como no livro: aqui os vetores linhas são "empilhados" com o separador ';', \
e depois a matriz inteira é transposta com o operador '''.
#}
[n; fatn; Sn; erro_abs; erro_rel]'