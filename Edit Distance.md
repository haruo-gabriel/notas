# Edit Distance

Dadas duas strings $A$ e $B$, qual é a menor quantidade de operações necessárias para transformar $A$ em $B$?
As operações são:
- Inserir um caractere
- Remover um caractere
- Substituir um caractere

O subproblema é $d(i,j)$, que é a distância entre os prefixos $A[1..i]$ e $B[1..j]$.