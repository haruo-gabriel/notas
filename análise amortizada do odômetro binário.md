# análise amortizada do odômetro binário

## método do potencial

No exemplo a seguir, 

| 1 	| 0 	| 1 	| 0 	| 1 	| 1 	| 1 	|
|---	|---	|---	|---	|---	|---	|---	|

o custo amortizado é
$$\hat{c}_i = c_i + \Delta\Phi_i = (1 + \text{n° de 1's seguidos no prefixo}) + (1 - \text{n° de 1's seguidos no prefixo}) = 2,$$
sendo $c_i$ o custo real e $\Delta\Phi_i$ a variação do potencial.

*Observe que queremos um potencial grande quando há muitos 1's seguidos no prefixo, pois queremos gastar esse potencial para uma operação cara, ou seja, a mudança de vários 1's para 0's. Por outro lado, queremos um potencial pequeno quando há um 0 no prefixo, pois não precisamos gastar esse potencial para uma operação barata, ou seja, a mudança de um 0 para 1.*


