# KMP

Knuth, Morris & Pratt

O KMP é um algoritmo de busca de padrões em textos.

Qual o maior prefixo do padrão que encaixa no sufixo do texto analisado?

## Algoritmo

```cpp
int busca (char* texto, char* padrao) {
  int m = strlen(padrao);
  int n = strlen(texto);
  // constroi matriz dfa[][]
  int i, j;
  for (i=0,j=0 ; i<n && j<m ; i++) {
    j = dfa[text[i]][j];
    if (j == m)
      return (i-m);
    return n;
  }
}
```

A complexidade da `busca()` é proporcional a $\mathcal{O}(n)$, o tamanho do texto.

A matriz `dfa` representa um autômato finito determinístico.

```cpp
void constroi(int** dfa, char* padrao, int alf) {
  int c, x, j;
  for (c=0; c<alf; c++) // inicializa dfa
    dfa[c][0] = 0;
  dfa[padrao[0]][0] = 1; // aponta o primeiro padrao para a letra seguinte
  x = 0;
  for (j=1; j<strlen(padrao), j++) {
    for (c=0; c<alf; c++>) // faz a cópia da coluna que x aponta
      dfa[c][j] = dfa[c][x];
    dfa[padrao[j]][j] = j+1; // ajusta o que acontece se ocorre a letra certa
    x = dfa[padrao[j]][x]; // x anda para a coluna certa
  }
}
```

A complexidade de `constroi()` é proporcional a $O(\text{tamanho do padrao} \cdot \text{tamanho do alfabeto})$.