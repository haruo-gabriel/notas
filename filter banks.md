# filter banks

- a transformada wavelet possui complexidade computacional linear $O(n)$, comparado com a transformada de Fourier que é $O(n\log n)$
- banco de filtros de Haar de 2 canais e 1 estágio
  - filtro de passa-baixa é o filtro da média
  - filtro de passa-alta é o filtro da diferença normalizada
- princípio da reconstrução perfeita
  - downsampling
    - reduz a frequência de amostragem pela metade, eliminando os índices ímpares do sinal
    - retorna um sinal de metade do tamanho original
    - a preservação dos índices pares é interpretada como um sinal de 2 vezes a frequência do sinal original
    - é possível reconstruir o sinal original a partir do sinal de frequência dobrada
  - upsampling
    - aumenta a frequência de amostragem pelo dobro, inserindo zeros entre as amostras
    - retorna um sinal de 2 vezes o tamanho original
    - 