## Questão 1

int INDICE = 12, SOMA = 0, K = 1;

enquanto K < INDICE faça
{
    K = K + 1;
    SOMA = SOMA + K;
}

imprimir(SOMA);

Passo a passo da execução

A variável K inicia com valor 1

O laço executa enquanto K < 12

Em cada iteração:

Primeiro, K é incrementado

Em seguida, o valor de K é somado à variável SOMA

Valores somados
2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12


Isso representa a soma dos números de 2 até 12.

Sabendo que:

Soma de 1 até 12 = 78


Como o valor 1 não é somado:

78 − 1 = 77

Resultado final

Valor final da variável SOMA:

77



## Questão 2
a)

Sequência:
1, 3, 5, 7, 9

Lógica:
Números ímpares consecutivos, com incremento de 2.

b)

Sequência:
2, 4, 8, 16, 32, 64, 128

Lógica:
Cada número é o dobro do anterior (multiplicação por 2).

c)

Sequência:
0, 1, 4, 9, 16, 25, 36, 49

Lógica:
Quadrados perfeitos dos números naturais:

0², 1², 2², 3², 4², 5², 6², 7²

d)

Sequência:
4, 16, 36, 64, 100

Lógica:
Quadrados dos números pares:

2², 4², 6², 8², 10²

e)

Sequência:
1, 1, 2, 3, 5, 8, 13

Lógica:
Sequência de Fibonacci, onde cada número é a soma dos dois anteriores:

1 + 1 = 2  
1 + 2 = 3  
2 + 3 = 5  
3 + 5 = 8  
5 + 8 = 13

f)

Sequência:
2, 10, 12, 16, 17, 18, 19, 200

Lógica:
A sequência considera números que, quando escritos por extenso em português, começam com a letra “D”:

dois

dez

doze

dezesseis

dezessete

dezoito

dezenove

duzentos

Portanto, o próximo número é 200.



## Questão 3

Foi implementado um algoritmo eficiente, com complexidade O(n), que calcula:

O menor valor de faturamento ocorrido no ano

O maior valor de faturamento ocorrido no ano

O número de dias em que o faturamento diário foi superior à média anual

Regras consideradas

O vetor de faturamento já está carregado, conforme o enunciado

Dias sem faturamento (valor igual a 0) são ignorados no cálculo da média

Os dados de faturamento foram simulados diretamente no código, conforme permitido

Arquivo
[Ver solução da Questão 3](https://github.com/eduardoapech/desafio-tecnico-target/blob/main/lib/questao3/q3.dart)


Execução:

dart run lib/questao3/q3.dart

Explicação da solução

Inicialmente, são ignorados os dias sem faturamento.
A partir dos dias válidos, calcula-se o menor e o maior valor por meio de comparação direta.
A média anual é obtida pela soma dos valores válidos dividida pela quantidade de dias com faturamento.
Por fim, é feita a contagem dos dias cujo faturamento foi superior à média calculada.



## Questão 4


 Estrutura das Tabelas
 Tabela: estado
Campo	Tipo	Descrição
id_estado	INT	Identificador único do estado
sigla	CHAR(2)	Sigla do estado (ex: SP, RJ)
nome	VARCHAR	Nome completo do estado

Chave Primária (PK): id_estado

---

 Tabela: cliente
Campo	Tipo	Descrição
id_cliente	INT	Identificador único do cliente
razao_social	VARCHAR	Nome ou razão social
estado_id	INT	Estado do cliente

PK: id_cliente
FK: estado_id → estado.id_estado

---

 Tabela: tipo_telefone
Campo	Tipo	Descrição
id_tipo	INT	Identificador do tipo
descricao	VARCHAR	Tipo do telefone

PK: id_tipo

---

 Tabela: telefone
Campo	Tipo	Descrição
id_telefone	INT	Identificador do telefone
numero	VARCHAR	Número do telefone
cliente_id	INT	Cliente associado
tipo_telefone_id	INT	Tipo do telefone

PK: id_telefone
FK:

cliente_id → cliente.id_cliente

tipo_telefone_id → tipo_telefone.id_tipo

---

 Relacionamentos

Um estado pode possuir vários clientes

Um cliente pode possuir vários telefones

Um tipo de telefone pode ser utilizado por vários telefones

---

 Consulta SQL – Clientes do Estado de São Paulo
SELECT 
  c.id_cliente,
  c.razao_social,
  t.numero AS telefone
FROM cliente c
INNER JOIN estado e 
  ON c.estado_id = e.id_estado
INNER JOIN telefone t 
  ON t.cliente_id = c.id_cliente
WHERE e.sigla = 'SP';

---

[questao 4](https://github.com/eduardoapech/desafio-tecnico-target/blob/main/lib/questao4/q4.dart)


## Questão 5

Dados do problema

Distância entre Ribeirão Preto ↔ Barretos: 125 km

Carro:

Sai de Ribeirão Preto → Barretos

Velocidade: 90 km/h

Passa por 3 pedágios

Atraso: 5 minutos em cada pedágio

Caminhão:

Sai de Barretos → Ribeirão Preto

Velocidade: 80 km/h

Sem atrasos



 O carro está 55,6 km distante de Ribeirão Preto


 Caminhão


 O caminhão está 69,4 km distante de Ribeirão Preto

 Conclusão

 Quando os veículos se cruzam, o carro está mais próximo da cidade de Ribeirão Preto.

Resumo:

Carro → 55,6 km de Ribeirão Preto

Caminhão → 69,4 km de Ribeirão Preto

 Resposta correta: o carro está mais próximo de Ribeirão Preto.

Arquivo:

[questao 5](https://github.com/eduardoapech/desafio-tecnico-target/blob/main/lib/questao5/q5.dart)



Linguagem Utilizada

Dart



Execução

Os arquivos podem ser executados individualmente utilizando o Dart CLI:

dart run nome_do_arquivo.dart