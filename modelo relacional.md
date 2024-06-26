# modelo relacional

- É um modelo de dados com o intuito de implementação.
- É um modelo simples, mas bem fundamentado **matematicamente**.
  - Bloco de construção básico: conceito de relação matemática.
  - Base teórica: teoria dos conjuntos e a lógica de predicados de primeira ordem.

- No modelo relacional, um banco de dados é uma **coleção de relações**.
- Cada tabela de valores é uma relação.
- Cada linha (tupla) representa uma entidade ou relacionamento do mundo real.
- Cada coluna (atributo) representa uma propriedade da relação.

- Domínio
- Esquema de relação
- Relação (ou estado de relação)

## Restrições

- Restrições implícitas
  - Uma relação não pussui tuplas repetidas
  - As tuplas em uma relação não possuem qualquer ordem em particular
- Restrições explícitas
  - Restrições de domínio
  - Restrições de chave
    - [[superchave]]
    - chave candidata
    - chave primária
    - chave única
  - Restrições sobre valores NULL
  - Restrições de integridade
    - Restrições de integridade de entidade
    - Restrições de integridade referencial
      - chave estrangeira
- Restrições semânticas

## Operações

- Recuperações
- Modificações
  - Inserção de tupla
  - Remoção de tupla
  - Alteração de valores de atributos em uma tupla
