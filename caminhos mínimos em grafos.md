# caminhos mínimos em grafos

## Relaxar um arco

```cpp
void relaxaArco(int u, int v) {
  // u é o vértice de partida, v é o vértice de chegada
  if (dist[v] > dist[u] + peso(u, v)) {
    dist[v] = dist[u] + peso(u, v);
    pred[v] = u;
  }
}
```

Relaxar um vértice significa relaxar todos os arcos que saem dele.

**Proposição**: Seja $G$ um digrafo com pesos não negativos. Seja $s$ um vértice de $G$. Seja `dist[]` as estimaticas para distâncias, com `dist[u] = INF` se não há caminho de $s$ a $u$.
`dist[u]` são os comprimentos dos caminhos mínimos de $s$ a $u$ **sse** para todo arco $(u, v)$, temos que `dist[v] <= dist[u] + peso(u, v)`, ou seja, se todos os arcos estão relaxados.

**Prova**: Para provar a ida, suponha que `dist[]` esteja correto e suponha que exista arco `u-v` com `dist[v] > dist[u] + peso(u,v)`. Ora, se existe tal arco que vai de $u$ para $v$ e `dist[v] > dist[u] + peso(u,v)`, então `dist[v]` não é o comprimento de um caminho mínimo de $u$ a $v$. É um absurdo.
Para provar a volta, suponha que 