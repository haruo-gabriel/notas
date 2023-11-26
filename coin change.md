# Coin Change

Dado um conjunto de moedas $C = \{c_1, c_2, \dots, c_n\}$ e um valor $v$, qual é o menor número de moedas necessárias para formar $v$?
Seja $f(x)$ o menor número de moedas necessárias para formar $x$. Então,

$f(x) = \min\set{1 + f(x-C[i]) : C[i] \leq x}$.

A base da recursão é $f(0) = 0$.

```
// Seja n o numero de moedas no vetor C[]
// Seja f[] o vetor das solucoes para 1, 2, ..., x moedas
// Vamos preenchendo o vetor f[] por bottom-up
f(v):
  if(v == 0):
    return 0
  for(i=1, i<=v, i++):
    for(j=1, j<=n, j++):
      if(C[j] <= i):
        f[i] = min(f(i), f(i-C[j]) + 1)
  return f(v)
```

A complexidade é de $\Theta(nv)$.