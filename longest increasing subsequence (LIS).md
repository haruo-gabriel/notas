# Longest Increasing Subsequence (LIS)

Dado um vetor $A[1..n]$, qual é o tamanho da maior subsequência crescente?
obs.: subsequência não é necessariamente subvetor, sendo que a subsequência pode considerar elementos não adjacentes.

Queremos uma subsequência crescente $X[1..k]$ tal que $\forall i \in [k], A[x_i] > A[x_j] \text{ tal que } j<i$

A função de recorrência é $LIS(i) = 1 + \max{LIS(j)} \text{ se } j<i \text{ e } A(j)<A(i) \text{ OU 1 c.c}$

```
// Seja LIS[] o vetor das solucoes para 1, 2, ..., n elementos
PDLIS(A,n):
  for(i=1, i<=n, i++):
    LIS[i] = 1
  for(i=2, i<=n, i++):
    for(j=1, j<i-1, j++):
      if(A[j] < A[i] && LIS[i] < LIS[j] + 1):
        LIS[i] = LIS[j] + 1
  return max(LIS)
```