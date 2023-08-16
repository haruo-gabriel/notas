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
   - Isso é informado por um número de 16 bits chamado de **porta** (são 65536 portas possíveis)
   - `/etc/services`
   - Associada à camada de transporte
2. Qual é a máquina que está rodando o processo?
   - É a máquina com um certo endereço IP
   - IPv4 (32 bits)