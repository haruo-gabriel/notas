# dns

Servidor DNS locais fazem o trabalho de resolver noes para os computadores nessa rede.

Cache faz diferença!
- É necessário garantir que as entradas expirem
- TTLs (Time To Live) fazem sentido aqui
- O próprio SO tem um cache

Como o SO resolve o problema de cache?
1. Olha no cache
2. Olha no `etc/hosts` (localhost 127.0.0.1)
3. Pede para o servidor DNS que está configurado na rede configurada
   1. O servidor olha no cache
   2. O servidor navega pela árvore de DNS

## Tipos de DNS

Tipo A
- Entrega um nome e recebe um endereço IP

Tipo NS
- Entrega um domínio e recebe um nome que é o servidor DNS reformável pelo domínio
  
Tipo CNAME
- Entrega um apelido (que é um nome) e recebe um nome real

Tipo MX
- Entrega um domínio e recebe o servidor de email do domínio

## Exemplo de como ter um novo nome na internet

Empresa fictícia "Network Utopia".

obs.: todos esses tipos de informações do DNS são chamadas de RESOURCE RECORDS (RRs)

1. Contratar o serviço de alguma empresa que registre domínios>
- A empresa que você contratou vai fornecer nome e IPs (RR tipo NS) para sua empresa fazendo referência ao seu servidor DNS.
2. A empresa **Network Utopia** configura um servidor DNS responsável por todos os nomes **networkutopia.com** (RRs do tipo A são possíves a partir de agora). Muito provavelmente o admin da **Network Utopia** vai configurar o *BIND*.