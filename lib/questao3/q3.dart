void main() {
  List<double> faturamento = [
    1000, 1200, 0, 900, 0, 1500, 1800,
    0, 2000, 1700, 0, 0, 2500
  ];

  var diasValidos = faturamento.where((v) => v > 0).toList();

  double menor = diasValidos.reduce((a, b) => a < b ? a : b);
  double maior = diasValidos.reduce((a, b) => a > b ? a : b);

  double media =
      diasValidos.reduce((a, b) => a + b) / diasValidos.length;

  int diasAcimaMedia =
      diasValidos.where((v) => v > media).length;

  print("Menor faturamento: $menor");
  print("Maior faturamento: $maior");
  print("Dias acima da média: $diasAcimaMedia");
}
