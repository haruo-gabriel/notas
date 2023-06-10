# dfs

Algoritmo de busca em grafos

## Implementação

```cpp
void dfs()
{
  bool* marked = new bool[G.V()];
  for (int i=0; i<V ; i++)
    marked[i] = false;  
  for (int v=0; v<G.V(); v++)
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

O algoritmo dfs 