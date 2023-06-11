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
  queue<int> fila;
  for (int i=0; i<B; i++) marked[i] = false;
  for (int i=0; i<V; i++)
    if (!marked[i]) {
      fila.push(i);
      
    }
}
```

## Aplicações

