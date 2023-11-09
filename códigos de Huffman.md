# Códigos de Huffman

- Motivação: compressão de dados
- Codificação e decodificação

- Problema
Temos um alfabeto $\Sigma$ e a frequência relativa $f_i$ para cada elemento $i$ de $\Sigma$.

- Códigos de prefixo
Queremos que nenhum código de uma chave seja prefixo de outro código de outra chave. Podemos resolver isso com uma árvore binária com as folhas sendo as frequências relativas das chaves.

## Árvores de Huffman

Uma árvore de código (no alfabeto $\Sigma$) é uma árvore binária cheia (cada nó tem 0 ou 2 filhos) cujas folhas são exatamente os símbolos de $\Sigma$. Dadas as frequências $f: \Sigma \to \mathbb{N}$ para cada símbolo, o custo de uma árvore de código $T$ é $c(T) \coloneqq \sum_{x \in \Sigma} f[x]\cdot \text{depth}_T(x)$.
Queremos uma árvore de código $T$ que **minimize** $c(T)$.

## Algoritmo de Huffman

O algoritmo de Huffman é um [[algoritmo guloso]].