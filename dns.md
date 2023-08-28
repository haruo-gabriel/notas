# dns

Servidor DNS locais fazem o trabalho de resolver noes para os computadores nessa rede.

Cache faz diferença!
- É necessário garantir que as entradas expirem
- TTLs (Time To Live) fazem sentido aqui
- O próprio SO tem um cache

Como o SO resolve o problema de cache?
1. Olha no cache
2. Olha no `etc/hosts` (localhost 127.0.0.1)
3. 