# árvore geradora mínima (MST)

- aresta segura
  - uma aresta $e$ é **segura** se, quando adicionada a um conjunto $A$ de arestas que é subconjunto de alguma MST, produz um novo conjunto $A \cup \{e\}$ que também é subconjunto de alguma MST.
- corte
  - um **corte** $(S,V-S)$ é uma partição de um grafo não-dirigido $G = (V,E)$
    - definido por um conjunto de vértices
  - uma aresta **cruza** um corte se um de seus vértices está em $S$ e o outro está em $V-S$
  - um corte **respeita** um conjunto $A$ de arestas se nenhuma aresta de $A$ cruza o corte
- margem do corte
  - A **margem de um corte** é o conjunto de arestas que conectam um conjunto de vértices a seus adjacentes.
- aresta leve
  - uma aresta é **leve** que cruza um corte se seu peso é o mínimo de qualquer aresta que cruza o corte

**Teorema**: Se $A$ está contida em uma MST de $(G,c)$, então qualquer $e$ com $c(e)$ mínimo em qualquer corte disjunto de $A$, então $e$ é segura para $A$.
**Prova**:

---

- [[algoritmo de Kruskal]]
- [[algoritmo de Prim]]