# árvore geradora mínima (MST)

- aresta segura
  - aresta $e$ que, quando adicionada a um conjunto $A$ de arestas que é subconjunto de alguma MST, produz um novo conjunto $A \cup \{e\}$ que também é subconjunto de alguma MST.
- corte
  - Um corte é o conjunto de arestas que conectam um conjunto de vértices 
  - Um corte é definido por um conjunto de vértices
- margem do corte
  - A margem de um corte é o conjunto de arestas que conectam um conjunto de vértices a seus adjacentes.

**Teorema**: Se $A$ está contida em uma MST de $(G,c)$, então qualquer $e$ com $c(e)$ mínimo em qualquer corte disjunto de $A$, então $e$ é segura para $A$.
**Prova**:

[[algoritmo de Kruskal]]
[[algoritmo de Prim]]