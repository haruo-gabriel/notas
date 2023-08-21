# daytime

- Cliente e servidor

## Passo-a-passo para implementar um cliente e um servidor

_obs.: os trechos grifados são específicos do daytime_

0. Ler a RFC (IETF)
- Existe uma porta bem-definida?
  - **Porta 13**
- Qual é a sequência de reads e writes?
- Quem fecha a conexão?
1. Definir quantos sockets são necessários
2. Definir quantas áreas de memória serão necessárias para armazenar informações enviadas e recebidas
- **`char recvline[MAXLINE+1]`**
1. Declarar a estrutura de endereçamento para cada socket
- **`struct sockaddr_in servaddr`**
1. Criar cada socket e associar aos descritores do passo 1
- Definir qual é o protocolo de de transporte
- **TCP**
1. Preparar a estrutura de endereçameno de cada socket criado no passo 4
- Tomar cuidado com a representação interna dos bytes na máquina
1. Fazer a conexão
![TCP server process](image-2.png) 
- [[three-way-handshake]]
1. Implementar o protocolo de camada de aplicação
- **No caso do odaytime, vai ser um laço com read**