# filter banks

- a transformada wavelet possui complexidade computacional linear $O(n)$, comparado com a transformada de Fourier que é $O(n\log n)$
## banco de filtros de Haar de 1 estágio e 2 canais
  - transformada de 1 estágio e 2 canais
    - filtro de passa-baixa é o filtro da média
    - filtro de passa-alta é o filtro da diferença normalizada
    - downsampling
      - reduz a frequência de amostragem pela metade, eliminando os índices ímpares do sinal
      - retorna um sinal de metade do tamanho original
      - a preservação dos índices pares é interpretada como um sinal de 2 vezes a frequência do sinal original
      - é possível reconstruir o sinal original a partir do sinal de frequência dobrada
  - transformada de 1 estágio inversa
    - upsampling
      - aumenta a frequência de amostragem pelo dobro, inserindo zeros entre as amostras
      - retorna um sinal de 2 vezes o tamanho original
- causalidade e atrasos
  - um sistema é causal se a saída em qualquer instante de tempo depende apenas de entradas presentes e passadas
  - um sistema é não-causal se a saída em qualquer instante de tempo depende de entradas futuras
  - para processar um sistema não-causal, é necessário atrasar a entrada para podermos usar os valores "futuros".

