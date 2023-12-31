# filter banks

- a transformada wavelet possui complexidade computacional linear $O(n)$, comparado com a transformada de Fourier que é $O(n\log n)$
## O banco de filtros de Haar de 1 estágio e 2 canais

- transformada de 1 estágio e 2 canais
  - filtro de passa-baixa $l$ é o filtro da média móvel
  - filtro de passa-alta $h$ é o filtro da diferença normalizada
  - downsampling
    - reduz a frequência de amostragem pela metade, eliminando os índices ímpares do sinal
    - retorna um sinal de metade do tamanho original
    - a preservação dos índices pares é interpretada como um sinal de 2 vezes a frequência do sinal original
    - é possível reconstruir o sinal original a partir do sinal de frequência dobrada
    - $l_a$ e $h_a$ são os filtros de análise
- transformada de 1 estágio inversa
  - upsampling
    - aumenta a frequência de amostragem pelo dobro, inserindo zeros entre as amostras
    - retorna um sinal de 2 vezes o tamanho original
    - $l_s$ e $h_s$ são os filtros de síntese
- causalidade e atrasos
  - um sistema é causal se a saída em qualquer instante de tempo depende apenas de entradas presentes e passadas
  - um sistema é não-causal se a saída em qualquer instante de tempo depende de entradas futuras
  - para processar um sistema não-causal, é necessário atrasar a entrada para podermos usar os valores "futuros".

## O banco de filtros geral de 1 estágio e 2 canais

- etapa de análise:
  1. filtrar
  2. subamostrar
  3. combinar os resultados
- etapa de síntese
  1. superamostrar
  2. sintetizar
  3. combinar os resultados
- princípio da reconstrução perfeita
  ![equação da reconstrução perfeita](image-15.png)

## Bancos de filtros multiestágio
- Na teoria de wavelets clássica, processamos apenas os sinais de baixa frequência, enquanto os sinais de alta frequência não são processados
- 