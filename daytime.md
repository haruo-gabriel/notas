# daytime

- Cliente e servidor

## Passo-a-passo para implementar um cliente e um servidor

_obs.: os trechos grifados são específicos do daytime_

0. Ler a RFC (IETF)
  - Existe uma porta bem-definida?
    - **Porta 13**
  - Qual a sequência de reads e writes?
    - 
  - Quem fecha a conexão?
1. Definir quantos sockets são necessários
2. Definir quantas áreas de memória serão necessárias para armazenar informações enviadas e recebidas
   - **`char recvline[MAXLINE+1]`**