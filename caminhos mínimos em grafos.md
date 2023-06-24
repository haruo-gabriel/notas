# caminhos mínimos em grafos

## Relaxar um arco

```cpp
void relaxaArco(int u, int v) {
  if (dist[v] > dist[u] + peso(u, v)) {
    dist[v] = dist[u] + peso(u, v);
    pred[v] = u;
  }
}
```

Relaxar um vértice significa relaxar todos os arcos que saem dele.