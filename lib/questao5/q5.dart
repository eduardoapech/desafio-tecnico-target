void main() {
  const double distanciaTotal = 125;
  const double velocidadeCarro = 90;
  const double velocidadeCaminhao = 80;

  const int pedagios = 3;
  const double atrasoPorPedagio = 5 / 60; // horas

  double atrasoTotalCarro = pedagios * atrasoPorPedagio;

  double tempoEncontro = distanciaTotal / (velocidadeCarro + velocidadeCaminhao);

  double distanciaCarro =
      velocidadeCarro * (tempoEncontro - atrasoTotalCarro);

  double distanciaCaminhao =
      velocidadeCaminhao * tempoEncontro;

  double distanciaAteRibeirao =
      distanciaTotal - distanciaCaminhao;

  print("Distância do carro: ${distanciaCarro.toStringAsFixed(2)} km");
  print("Distância do caminhão até Ribeirão Preto: ${distanciaAteRibeirao.toStringAsFixed(2)} km");
  print("Conclusão: O caminhão estará mais próximo de Ribeirão Preto.");
}
