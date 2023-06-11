# bfs

A *busca em largura* é um algoritmo de busca em grafos.

## Motivação

O algoritmo bfs pode ser aplicado para determinar o menor caminho entre dois vértices.

## Implementação

```cpp
void bfs(int s)
{
  bool* marked = new bool[V];
  for (int i=0; i<V ; i++)
    marked[i] = false;  
  queue<int> q;
  q.push(s);
  marked[s] = true;
  while (!q.empty()) {
    int v = q.front();
    q.pop();
    for (int i=0; i<adj(v).size(); i++) {
      int w = adj(v)[i];
      if (!marked[w]) {
        q.push(w);
        marked[w] = true;
      }
    }
  }
}
```

## Aplicações

