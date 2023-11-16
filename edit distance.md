# edit distance

Dadas duas strings $A$ e $B$, qual é a menor quantidade de operações necessárias para transformar $A$ em $B$?
As operações são:
- Inserir um caractere
- Remover um caractere
- Substituir um caractere

## Resolução por programação dinâmica (bottom-up)

O subproblema é $d(i,j)$, que é a distância entre os prefixos $A[1..i]$ e $B[1..j]$.

Uma matriz de tamanho $|A| \times |B|$ é criada, e cada célula $d(i,j)$ é preenchida com a distância entre os prefixos $A[1..i]$ e $B[1..j]$.
Os casos base são $d(i,0) = i$ e $d(0,j) = j$, que são as distâncias entre uma string e a string vazia.
Após preencher a matriz com os casos base, a matriz é preenchida de forma bottom-up:
- Se $A[i] = B[j]$, então $d(i,j) = d(i-1,j-1)$, pois não é necessário realizar nenhuma operação.
- Caso contrário, $d(i,j) = 1 + \min\{d(i-1,j-1), d(i,j-1), d(i-1,j)\}$, pois é necessário realizar uma operação.


### Código
[Edit Distance - Dynamic Programming - Leetcode 72 - Python](https://youtu.be/XYi2-LPrwm4?feature=shared)

```cpp
#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main() {
  string pal1, pal2;
  cin >> pal1 >> pal2;

  vector<vector<int>> pd(pal1.size()+1, vector<int>(pal2.size()+1));
  for (int i=0; i<=pal1.size(); i++)
    pd[i][0] = i;
  for (int j=0; j<=pal2.size(); j++)
    pd[0][j] = j;

  for (int i=1; i<=pal1.size(); i++) {
    for (int j=1; j<=pal2.size(); j++) {
      if (pal1[i-1] == pal2[j-1])
        pd[i][j] = pd[i-1][j-1];
      else
        pd[i][j] = 1 + min(min(pd[i-1][j-1],pd[i][j-1]),pd[i-1][j]);
    }
  }
  
  cout << pd[pal1.size()][pal2.size()];

  return 0;
}
```