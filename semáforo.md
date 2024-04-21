# semáforo

Um **semáforo** é um tipo especial de variável compartilhada. Assume valores inteiros não-negativos. É manipulado apenas por 2 operações atômicas: `V` e `P`.

- `V` (do holandês *verhogen*, aumentar): incrementa o valor do semáforo.
  - É usado para sinalizar a ocorrência de um evento.
  - `V(s): <s = s+1;>`
- `P` (do holandês *probeer te verlagen*, tentar reduzir): espera o valor de um semáforo ser positivo para decrementá-lo.
  - É usado para atrasar um processo até que um evento ocorra.
  - `P(s): <while(s == 0) skip; s = s-1;>`
