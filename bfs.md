# bfs

A *busca em largura* é um algoritmo de busca em grafos.

## Motivação

O algoritmo bfs visita um vértice e depois os seus vizinhos, e em seguida os vizinhos dos vizinhos, e assim por diante, nessa ordem.

Uma fila será usada para guardar os vértices a serem visitados.

## Implementação

```cpp
void bfs()
{
  bool* marked = new bool[V];
  for (int i=0; i<B; i++) marked[i] = false;
  queue<int> fila;
  for (int i=0; i<V; i++) { // adiciona todos os vértices não-marcados
    if (!marked[i]) {
      marked[i] = true;
      fila.push(i);
      while (!fila.empty()) {
        int u = fila.pop();
        for (int j=0; j<adj[u].size(); i++) { // adiciona todos os vizinhos
          w = adj[u].at(i);
          if (!marked[w]) {
            fila.push(w);
            marked[w] = true;
          }
        }
      }
    }
  }
  delete []marked;
  return;
}
```

Proposição: 
## Aplicações
