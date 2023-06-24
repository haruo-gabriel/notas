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
- 