# dfs

A *busca em profundidade* é um algoritmo de busca em grafos.

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

Prova: Observe que o algoritmo `dfsR` é executado pelo menos 1 vez para cada vértice $v$ tal que `marked[v] = false`. Como marked[v] = false é setado para true no início da execução do algoritmo `dfsR(v)`, então é executado exatamente 1 vez para cada vértice v tal que `marked[v] = false`. Como o algoritmo dfsR(v) é executado exatamente 1 vez para cada vértice v tal que `marked[v] = false`, então o algoritmo dfs é executado exatamente 1 vez para cada vértice.

Proposição: A complexidade é $\mathcal{O}(V+E)$.

Prova: Observe que `marked[v] = true` é executado $V$ vezes. Para cada vértice $v$, são atingidos todos os vizinhos de $v$, ou seja, o loop é executado `adj(v).size()` vezes. Logo, se para cada vértice o loop é executado `adj(v).size()` vezes, então para todos os vértices o loop é executado $\sum_{v=0}^{V-1} adj(v).size()$ vezes, que é igual a $2E$.

Se não está convencido, simule. (obs.: eu simulei e deu certo)

## Aplicações

- Determinar se há caminho entre dois vértices.
```cpp
bool hasPathTo(int u, int v)
{
  bool* marked
  return marked = new bool[V];
  for (int w=0; w<V; w++)
    marked[w] = false;
  dfsR(u, marked);
  return (marked[v]);
  // se v foi marcado, então o algoritmo foi capaz de chegar em v a partir de u
}
```

- Determinar o número de componentes conexas.
```cpp
int countCC()
{
  bool* marked = new bool[V];
  for (int v=0; v<V; v++)
    marked[v] = false;
  int count = 0;
  for (int v=0; v<V; v++) {
    if (!marked[v]) {
      dfsR(v, marked);
      count++;
    }
  }
  return count;
}
```

- Determinar se o grafo é bipartido.
```cpp
bool isBipartite()
{
  bool* marked = new bool[V];
  for (int v=0; v<V; v++)
    marked[v] = false;
  bool* color = new bool[V];
  for (int v=0; v<V; v++)
    color[v] = false;
  return isBipartiteR(0, marked, color);
}
bool isBipartiteR(int v, bool* marked, bool* color)
{
  marked[v] = true;
  for (int i=0; i<adj(v).size(); i++) {
    int w = adj(v)[i];
    if (!marked[w]) {
      color[w] = !color[v];
      if (!isBipartiteR(w, marked, color))
        return false;
    }
    else if (color[w] == color[v])
      return false;
  }
  return true;
}
```