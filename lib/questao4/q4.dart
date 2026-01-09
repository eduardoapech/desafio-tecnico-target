void main() {
  print("MODELO LÓGICO - BANCO DE DADOS\n");

  print("TABELA: ESTADO");
  print(" - id_estado (PK)");
  print(" - codigo (SP, RJ, etc)");
  print(" - nome\n");

  print("TABELA: CLIENTE");
  print(" - id_cliente (PK)");
  print(" - razao_social");
  print(" - id_estado (FK -> ESTADO.id_estado)\n");

  print("TABELA: TIPO_TELEFONE");
  print(" - id_tipo_telefone (PK)");
  print(" - descricao (Celular, Residencial, etc)\n");

  print("TABELA: TELEFONE");
  print(" - id_telefone (PK)");
  print(" - numero");
  print(" - id_cliente (FK -> CLIENTE.id_cliente)");
  print(" - id_tipo_telefone (FK -> TIPO_TELEFONE.id_tipo_telefone)\n");

  print("RELACIONAMENTOS:");
  print(" ESTADO 1 --- N CLIENTE");
  print(" CLIENTE 1 --- N TELEFONE");
  print(" TIPO_TELEFONE 1 --- N TELEFONE\n");

  print("CONSULTA SQL - CLIENTES DO ESTADO SP:\n");

  print("""
SELECT 
  c.id_cliente,
  c.razao_social,
  t.numero
FROM cliente c
JOIN estado e ON e.id_estado = c.id_estado
JOIN telefone t ON t.id_cliente = c.id_cliente
WHERE e.codigo = 'SP';
""");
}
