# gerência de espaço livre por lista encadeada

- Uma lista encadeada é usada para apontar para os blocos livres.
- Os próprios blocos livres são usados para guardar os números dos blocos que também estão livres.
  - É necessário que no início da partição haja um bloco especial com um ponteiro para o primeiro bloco livre da lista.

## Lista encadeada melhorada

- Caso haja vários blocos livres consecutivos, cada bloco livre pode ter um valor associado que indica a quantidade de blocos livres consecutivos a partir dele.
  - Obs.: Essa abordagem pode ser problemática caso o disco estiver muito fragmentado.
