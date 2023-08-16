# arquitetura-em-camadas

1. Passagem (comprar)
2. Bagagem (despachar)
3. Portão (embarcar)
4. Decolagem
5. Roteamento de aeronaves

## Camada de aplicação

- Comunicação entre processos é o que ocorre quando um protocolo da camada de aplicação é utilizado
- Precisamos "conectar" esses processos remotamente usando mensagens

Para criar o socket, é necessário informar onde está o outro processo 
1. Qual é o processo na outra máquina