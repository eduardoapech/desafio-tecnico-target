/*
  Questão 4 – Banco de Dados

  Enunciado:
  Uma empresa solicitou o desenvolvimento de um aplicativo para manutenção
  de um cadastro de clientes, com os seguintes requisitos:

  - Um cliente pode possuir um número ilimitado de telefones;
  - Cada telefone possui um tipo (comercial, residencial, celular, etc.),
    sendo possível cadastrar novos tipos;
  - É necessário armazenar apenas o estado brasileiro do cliente,
    permitindo o cadastro de novos estados.

============================================================


  MODELO LÓGICO PROPOSTO

  TABELA: ESTADO
  - id_estado (PK)
  - codigo (SP, RJ, etc)
  - nome

  TABELA: CLIENTE
  - id_cliente (PK)
  - razao_social
  - id_estado (FK → ESTADO.id_estado)

  TABELA: TIPO_TELEFONE
  - id_tipo_telefone (PK)
  - descricao (Celular, Residencial, etc)

  TABELA: TELEFONE
  - id_telefone (PK)
  - numero
  - id_cliente (FK → CLIENTE.id_cliente)
  - id_tipo_telefone (FK → TIPO_TELEFONE.id_tipo_telefone)
  
============================================================

  RELACIONAMENTOS

  - ESTADO (1) → (N) CLIENTE
  - CLIENTE (1) → (N) TELEFONE
  - TIPO_TELEFONE (1) → (N) TELEFONE

============================================================
  CONSULTA SQL – CLIENTES DO ESTADO DE SÃO PAULO

  SELECT 
    c.id_cliente,
    c.razao_social,
    t.numero
  FROM cliente c
  JOIN estado e ON e.id_estado = c.id_estado
  JOIN telefone t ON t.id_cliente = c.id_cliente
  WHERE e.codigo = 'SP';
*/


