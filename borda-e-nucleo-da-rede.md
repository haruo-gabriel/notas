# borda e núcleo da rede

Os elementos da **borda** são as aplicações e hosts.
- A borda é maleável a mudanças e atualizações.

Os elementos do **núcleo** são roteadores e subredes.
- O núcleo é muito mais rígido a mudanças.

As redes de acesso pelos meios físicos conectam a borda ao núcleo.

## Modelos de comunicação

Modelo cliente/servidor
- Cliente e servidor são bem definidos.
- Se o cliente cair da rede, isso não impede de outro cliente acessar certo servidor. Se o servidor cair da rede, isso impede qualquer cliente de acessá-lo.
Modelo P2P
- Cliente e servidor se confundem.
- Ex.: torrent

## Tipo de serviço

TCP e UDP são protocolos da camada de transporte.

### Serviço orientado a conexão (TCP)

1. Os dados chegam em ordem
2. Os dados chegam por completo
3. OS daddos não são modificados
4. Controle de fluxo
5. COntrole de congestionamento

1., 2., 3. são os principais. 4. e 5. são adicionais.

RFC793
- Documento da IETF que especifica como implementar o protocolo TCP.
- Transferência de dados confiável e sequencial orientada à cadeia de bytes.

Exemplo de protocolo TFP
- HTTP
- FTP
- SSH

### Serviço não orientado à conexão (UDP)

1. Transferência de dados não confiáveis
2. Sem controle de fluxo
3. Sem controle de comgestionamento

RCF768
- Documento da IETF que especifica como implementar o UDP
- Serviço sem conexão à internet

Exemplo de protocolo UDP
- DNS

## Núcleo da rede

- Malha de roteadores
- Como os dados são transferidos na rede? (não focando apenas na internet)
- Comutação de circuito
  - Usa um canal dedicado para cada conexão
- Comutação de pacotes
  - Os dados são enviados em blocos sem canais dedicados

## Comutação de circuito

- Taxa de transmissão
  - A capacidade dos roteadores é bem definida
- Recursos não dedicados
- Exige estabelecimento de conexão
  1. Pede para a rede que crie um circuito para B.
  2. Verifica se a rede suporta
  3. O circuito é criado.
1. O circuito é encerrado.

A divisão do canal pode ser feita por frequência ou por tempo.

- FDM (Frequency Division Multiplexing)
  - Divisão do canal por frequência
- TDM (Time Division Multiplexing)
  - Divisão do canal por tempo
