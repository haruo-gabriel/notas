# alocação contígua

O sistema procura por um espa;o livre no disco que seja grande o suficiente para armazenar todos os bytes do arquivo em uma sequência.

- A unidade de medida usada é o **bloco**.
- O sistema reserva blocos consecutivos para o arquivo.
- O último bloco reservado pode ter espaço desperdiçado, caso ele não seja totalmente preenchido com bytes do arquivo.

## Vantagens

1. Fácil de implementar: É simples de implementar porque para cada arquivo, o sistema só precisa gravar o endereço do primeiro bloco e o número total de blocos do arquivo.
2. Desempenho de leitura excelente: Proporciona um excelente desempenho de leitura, já que os blocos de um arquivo são armazenados em sequência, facilitando o acesso rápido aos dados.
