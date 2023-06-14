# digrafo

Um *digrafo* é um conjunto de vértices e arcos (arestas dirigidas).

## Grau de um vértice em um digrafo

O grau de entrada de um vértice $v$, denotado como $\delta^-(v)$, é a quantidade de arcos que entram em $v$.
O grau de saída de um vértice $v$, denotado como $\delta^+(v)$, é a quantidade de arcos que saem de $v$.

## Componente fortemente conexa
  
Um grafo é *fortemente conexo* se para todos os vértices $u,v$ de um grafo, há um caminho de $u$ para $v$ e inclusive um caminho de $v$ para $u$.

## Problemas em digrafos

- Determinar se há caminho de $u$ para $v$ em um digrafo.
Solução: [[dfs]]

