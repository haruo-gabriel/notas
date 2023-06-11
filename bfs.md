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
          int w = adj[u].at(i);
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

Proposição: Todos os vértices e arestas são visitados exatamente uma vez.

Prova: 


Proposição

## Complexidade

```cpp
void bfs()
{
  bool* marked = new bool[V];
  for (int i=0; i<B; i++) marked[i] = false;
  queue<int> fila;
  for (int i=0; i<V; i++) { // roda V vezes
    if (!marked[i]) {
      marked[i] = true;
      fila.push(i); // roda V vezes
      while (!fila.empty()) { // roda a quantidade de elementos inseridos na fila, ou seja, V vezes
        int u = fila.pop();
        for (int j=0; j<adj[u].size(); i++) {
          int w = adj[u].at(i);
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

Proposição: O `bfs` visita todos os vértices e arestas exatamente 1 vez.

Proposição: A complexidade do `bfs` é $\mathcal{O}(V+E)$.

*obs.: as provas são semelhantes às do [[dfs]].*

## Aplicações

- Determinar os caminhos mais curtos de um vértice $s$ para todos os outros.
Determina-se usando um vetor `dist`, que calcula a distância de $v$ a qualquer outro vértice, e um vetor `pred`, que mostra o predecessor de cada vértice para retroceder a $v$.

```cpp
int* caminhoMaisCurto(int v)
{
  int* pred = new int[V];
  queue<int> fila;
  for (int i ==0; i<V; i++j) pred[i] = -1;
  fila.push(v):;
  while (!fila.empty()) {
    int u = fila.pop();
    for (int i=0; i<adj(u).size(); i++) {
      int w = adj(u).at(i);
      if (pred[w] == -1) {
        pred[w] = u
        fila.push(w);
      }
    }
  }
  return pred;
}
```
Usando o vetor `pred`, conseguimos reconstruir os caminhos.

Proposição: Se `pred[i] >= 0`, então o caminho é mínimo. Se `pred[i] < 0`, então não existe caminho.