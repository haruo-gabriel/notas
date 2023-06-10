# dfs

Algoritmo de busca em grafos

## Implementação

```cpp
void dfs()
{
  bool* marked = new bool[V];
  for (int i=0; i<V ; i++)
    marked[i] = false;  
  for (int v=0; v<V; v++)
    if (!marked[v])
      dfsR(v);
}
void dfsR(int v, bool* marked)
{
  marked[v] = true;
  for (int i=0; i<adj(v).size(); i++) {
    if (!marked[w]) {
      int w = adj(v)[i];
      if (!marked[w])
        dfsR(w, marked);
    }
  }
}
```

## Complexidade

Proposição: O algoritmo `dfsR` é executado exatamente 1 vez para cada vértice.

Prova: Observe que o algoritmo `dfsR` é executado pelo menos 1 vez para cada vértice v tal que `marked[v] = false`.
Como marked[v] = false é setado para true no início da execução do algoritmo `dfsR(v)`, então é executado exatamente 1 vez para cada vértice v tal que `marked[v] = false`.
Como o algoritmo dfsR(v) é executado exatamente 1 vez para cada vértice v tal que `marked[v] = false`, então o algoritmo dfs é executado exatamente 1 vez para cada vértice.

Proposição: A complexidade é O(V+E).

Prova: Observe que `marked[v] = true` é executado $V$ vezes.
Observe que o loop `for (int i=0; i<adj(v).size(); i++)` é executado $2E$ vezes.
Isto pois 
