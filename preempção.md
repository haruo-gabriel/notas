# preempção

*Preempção é a comutação do processo em execução realizada pelo escalonador de processos do SO. Quem sofre preempção é a CPU.* (fonte: slide 4 da aula 5 de 2024)

- **Preempção**: A preempção ocorre quando o escalonador de processos do sistema operacional interrompe o processo que está atualmente em execução na CPU para permitir que outro processo seja executado. Em outras palavras, a CPU é retirada do controle do processo em execução e entregue a outro processo.

- **Comutação de processo**: A comutação de processo é o ato de trocar o contexto de execução de um processo pelo contexto de execução de outro processo. Isso envolve salvar o estado do processo atual, incluindo os valores dos registradores e o contador de programa, e carregar o estado do próximo processo a ser executado.

- **Quem sofre preempção é a CPU**: Nesse contexto, "a CPU" se refere à unidade de processamento central do computador. Quando um processo é preemptionado, significa que ele perde temporariamente o controle da CPU, pois o escalonador decide que outro processo deve ser executado em seu lugar. Assim, o processo que estava em execução é "preemptionado" da CPU.- A preempção ocorre quando o escalonador de processos do sistema operacional **