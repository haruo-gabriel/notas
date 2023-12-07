# análise amortizada do odômetro binário

## método do potencial

No exemplo a seguir, 

| 1 	| 0 	| 1 	| 0 	| 1 	| 1 	| 1 	|
|---	|---	|---	|---	|---	|---	|---	|

o custo amortizado é
$$\hat{c}_i = c_i - \Delta\Phi_i = (1 + \text{n° de 1's seguidos no prefixo}) - (1 - \text{n° de 1's seguidos no prefixo}) = ,$$
sendo $c_i$ o custo real e $\Delta\Phi_i$ a variação do potencial.