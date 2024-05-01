# método da bisseção

- É necessário saber um intervalo $[a,b]$ em que a curva troca de sinal.
  - O teorema do valor intermediário garante que existe uma raíz em $[a,b]$.

## Número de iterações

- O número de iterações necessárias para obter uma precisão $\epsilon$ é dado por $n = \left\lceil \log_2 \left( \frac{b-a}{2\epsilon} \right) \right\rceil$.
