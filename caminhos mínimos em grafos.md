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

**Proposição**: Seja $G$ um digrafo com pesos não negativos. Seja $s$ um vértice de $G$. Seja `dist[]` as estimaticas para distâncias (ou seja, maior ou igual à distância real), com `dist[u] = INF` se não há caminho de $s$ a $u$.
`dist[u]` são os comprimentos dos caminhos mínimos de $s$ a $u$ **sse** para todo arco $(u, v)$, temos que `dist[v] <= dist[u] + peso(u, v)`, ou seja, se todos os arcos estão relaxados.

**Prova**: Para provar a ida, suponha que `dist[]` esteja correto e suponha que exista arco `u-v` com `dist[v] > dist[u] + peso(u,v)`. Ora, se existe tal arco que vai de $u$ para $v$ e `dist[v] > dist[u] + peso(u,v)`, então `dist[v]` não é o comprimento de um caminho mínimo de $u$ a $v$. É um absurdo.
Para provar a volta, suponha que $v$ seja atingível a partir de $s$ e que
$s = v_0, v_1, v_2, \dots, v_k = v$  seja caminho mínimo. Como todos os arcos estão relaxados por hipótese, então 
```
dist[v] = dist[vk] <= dist[vk-1] + peso(vk-1,vk)
          dist[vk-1] <= dist[vk-2] + peso(vk-2,vk-1)
          ...
          dist[v1] <= dist[v0] + peso(v0,v1)
          dist[v0] = dist[s]
```
Somando todas as inequações, temos que 
`dist[v] <= dist[s] + peso(s,v0) + ... + peso(vk-1,vk)`. Como `dist[s]` é 0, então temos que `dist[v] <= peso(s,v0) + ... + peso(vk-1,vk)`, que é igual ao comprimento mínimo, como queríamos.