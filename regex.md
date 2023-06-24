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