# notacao-assintotica

## Notação O

"limitante superior"

Prove que $\mathcal{O}(n^2) = \mathcal{O}(3n^2 + 3n)$.
**Prova:** Seja $f(n) \in \mathcal{O}(3n^2 + 2n)$ (\*). Queremos provar que existem constantes $n_0$ e $c_0$ tais que, para todo $n \geq n_0$, temos $f(n) \leq c_0 \; n^2$. Observe que em (*), é possível concluir que existem constantes $n_1$ e $c_1$ tais que, para todo $n \geq n_1$, $f(n) \leq c_1 \; (3n^2 + 3n)$. Então, $f(n) \leq c_1 \; (3n^2 + 3n) \leq c_1 3n^2 + c_1 3n \leq c_1 3n^2 + c_1 3n^2 \leq  6 c_1 n^2$. Finalmente, podemos adotar $c_0 = 6 c_1$ e $n_0 = n_1$, como queríamos provar.

## Notação Omega

"limitante inferior"

## Notação Theta

Ex.: Merge Sort é $\Omega(n \log n)$, ou seja, para qualquer $n$, o tempo de execução é $n \log n$. Agora, para o Insertion Sort, não existe $f(n)$ tal que o Merge Sort seja $\Theta(f(n))$ para todo caso. Porém, o Insertion Sort é $\mathcal{O}(n^2)$ e $\Omega(n)$, ou seja, no pior caso, o tempo de execução é $n^2$ e, no melhor caso, é $n$.
Obs.: podemos dizer que, **no pior caso**, o Insertion Sort é $\Theta(n^2)$, e **no melhor caso**, é $\Theta(n)$.