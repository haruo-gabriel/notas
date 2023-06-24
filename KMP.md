# KMP

Knuth, Morris & Pratt

Qual o maior prefixo do padrão que encaixa no sufixo do texto analisado?

## Algoritmo

```cpp
int busca (char* texto, char* padrao) {
  int m = strlen(padra0);
  int n = strlen(texto);
  // constroi matriz dfa[][]
  for (i=0,j=0 ; i<n && j<m ; i++) {
    j = dfa[text[i]][j];
    if (j == m)
      return
  }
}
```