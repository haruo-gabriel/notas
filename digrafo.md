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


Os arcos de um digrafo percorrido em [[dfs]] têm as seguintes categorias:
- Arco de arborescência
Um arco de arboresência ocorre quando um vértice $u$ cria um arco com um vértice $v$ que ainda não foi visitado.

- Arco de retorno
Um arco de retorno ocorre quando um vértice $u$ cria um arco com um vértice $v$ que ainda não terminou sua recursão em [[dfs]].

- Arco cruzado
Um arco cruzado ocorre quando um vértice $u$ cria um arco para um vértice $v$, que já terminou sua recursão em [[dfs]].

- Arco descendente
Um arco descendente ocorre quando um vértice $u$ cria um arco para um vértice $v$ que já terminou de ser visitado.