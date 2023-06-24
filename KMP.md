# KMP

Knuth, Morris & Pratt

O KMP é um algoritmo de busca de padrões em textos.

Qual o maior prefixo do padrão que encaixa no sufixo do texto analisado?

## Algoritmo

```cpp
int busca (char* texto, char* padrao) {
  int m = strlen(padra0);
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

A matriz `dfa` representa um autômato finito determinístico.

```cpp
void constroi(int** dfa, char* padrao, int alf) {
  int c, x, j;
  for (c=0; c <alf; c++)
    dfa[c][0] = 0;
  dfa[padra[o]][0] = 1;
  x = 0;
  for (j=1; j<>)
}
```