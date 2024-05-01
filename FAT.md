# FAT

- Para superar as desvantagens da alocação por lista encadeada, é possível **armazenar os ponteiros de cada bloco em uma tabela na memória**. O File Allocation Table (FAT) faz exatamente isso.
- Embora inicialmente possa haver uma lentidão para carregar toda a tabela na memória, isso ocorre apenas no início da execução. Uma vez que a tabela esteja carregada na memória, as operações de leitura e escrita se tornam mais eficientes, já que os ponteiros para os blocos estão prontamente disponíveis na tabela.

## Vantagens

### Utilização completa do disco

Cada bloco do disco pode ser usado, já que não há necessidade de manter uma sequência contígua de blocos para um arquivo.

### Acesso aleatório mais fácil e rápido

O acesso aleatório aos blocos de dados torna-se mais simples e rápido. Embora seja necessário percorrer os $n - 1$ blocos anteriores em uma cadeia, a informação entre eles está na memória, o que agiliza o acesso.

### Armazenamento eficiente no diretório

Da mesma forma que na alocação por lista encadeada, as entradas no diretório só precisam armazenar um único número, que representa o primeiro bloco de cada arquivo. Isso simplifica a estrutura do diretório e facilita o gerenciamento de arquivos.

### Desvantagens

### Uso de memória adicional

É necessário que a tabela fique guardada na memória o tempo inteiro.

- Não escala para discos grandes.
