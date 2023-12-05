# análise amortizada de inserção em tabelas dinâmicas

## método agregado
![custo amortizado pelo método agregado na inserção em tabelas dinâmicas](image-18.png)
- no somatório, o termo $n$ vem da soma de todos os $1$'s dos 2 casos da igualdade de $c_{i+1}$
- o termo em parênteses vem da soma de todas as potências de $2$ do segundo caso da igualdade de $c_{i+1}$

## método por créditos
![custo amortizado pelo método por créditos na inserção em tabelas dinâmicas](image-19.png)
- suponha que inserimos um item na tabela dinâmica, mas ela já está cheia
  - como temos armazenado $2$ créditos em cima de cada **item novo** inserido e também temos o mesmo número de itens novos e itens velhos, podemos usar $1$ crédito para pagar a realocação de cada item novo e $1$ crédito para pagar a realocação de cada item velho