# regex

Expressões regulares são usadas para realizar buscas flexíveis em textos.

Dados um texto e uma expressão regular, vamos verificar se essa expressão regular ocorre no texto.

## Definições

Uma expressão regular é formada através de uma das 4 operações abaixo:

### Concatenação

$x_1$ e $x_2$ são expressões regulares.
Se uma palavra $p_1$ é reconhecida por $x_1$ e $p_2$ é reconhecida por $x_2$, então a palavra $p_1 p_2$ é reconhecida por $x_1 x_2$.

### Alternativa

$x_1$ e $x_2$ são expressões regulares. Se uma palavra $p_1$ é reconhecida por $x_1$ e $p_2$ é reconhecida por $x_2$, então a palavra $p_1$ ou $p_2$ é reconhecida por $x_1 \vert x_2$.

### Fecho

$x_1$ é uma expressão regular. Se uma palavra $p_1$ é reconhecida por $x_1$, então $x_1 *$ reconhece 0 ou mais cópias de $x_1$, ou seja, $\emptyset$, $p_1, \; p_1 p_1, \; p_1 p_1 p_1 , \; \dots$

**Exemplos**
- $A \vert (BC \vert D)$ reconhece $A, \; BC, \; D$.
- $a * (b \vert c) a*$ reconhece $aba, \; b, \; c, \; abaa, \; aaacaaaaa, \; \dots$
- $b b* (a \vert c)* b b*$ reconhece $bb, \; bbbbacacacbbbbb, \; \dots$

Uma expressão regular sobre um alfabeto $\Sigma$ é:
- uma palavra vazia $\epsilon$
- ou um caractere do alfabeto
- ou uma expressão regular entre parênteses
- ou uma concatenação de duas expressões regulares
- ou duas expressões regulares separadas por $\vert$
- ou uma expressão regular seguida por $*$.

Do ponto de vista semântico, uma expressão regular reconhece uma linguagem, ou seja, um conjunto de palavras sobre o alfabeto $\Sigma$.
Por exemplo:
- a expressão regular $\epsilon$ reconhece a linguagem $\set{\epsilon}$.
- um caracter $a \in \Sigma$ reconhece a linguagem $\set{a}$.
- uma expressão regular entre parênteses reconhece a mesma linguagem.
- se temos duas expressões regulares $e_1$ e $e_2$ que reconhecem respectivamente as linguagens $\mathcal{L}_1$ e $\mathcal{L}_2$, então a concatenação $e_1 e_2$ reconhece a linguagem $\mathcal{L} = \set{p_1 p_2 \; \vert \; p_1 \in \mathcal{L}_1 \text{ e } p_2 \in \mathcal{L}_2}$.
- se temos duas expressões regulares $e_1$ e $e_2$ que reconhecem respectivamente as linguagens $\mathcal{L}_1$ e $\mathcal{L}_2$, então $e_1 \vert e_2$ reconhece $\mathcal{L} = \mathcal{L}_1 \cup \mathcal{L}_2$.
- se temos $e_1$ que reconhece $\mathcal{L}_1$, a expressão $e_1 *$ reconhece $\mathcal{L} = \set{p_1 p_2 \dots p_k \; \vert \; k \geq 0 \text{ e } p_i \in \mathcal{L}_1}$.

## Abreviaturas

Existem algumas abreviaturas para expressões regulares:

### +

É um fecho com pelo menos 1 ocorrência.
Exemplo: $a+$ reconhece $a, \; aa, \; aaa, \; \dots$

### .

É o coringa, que reconhece qualquer caractere do alfabeto.
Exemplo: $a.b$ reconhece $aab, \; abb, \; acb, \; \dots$

### ?

É um zero ou uma cópia.
Exemplo: $ba?b$ reconhece $bb, \; bab$.

### {k}

É uma concatenação de $k$ cópias.
Exemplo: $a\set{3}b$ reconhece $aaab$.

### [ ]

É um conjunto.
Exemplo: $[a e i o u]$ reconhece $a, \; e, \; i, \; o, \; u$, ou seja, apenas vogais.

### [ - ]

É um intervalo.
Exemplo: $[a-z]$ reconhece qualquer letra minúscula.
Exemplo: $[0-9]$ reconhece qualquer algarismo.

### [ ^ ]

É o complemento de um conjunto.
Exemplo: $[\land a e i o u]$ reconhece qualquer caractere que *não* seja uma vogal.


