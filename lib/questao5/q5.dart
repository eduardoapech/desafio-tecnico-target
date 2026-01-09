void main() {
  // Dados do problema
  double distanciaTotal = 125.0; // km
  double velocidadeCarro = 90.0; // km/h
  double velocidadeCaminhao = 80.0; // km/h

  int qtdPedagios = 3;
  double atrasoPorPedagioMin = 5.0; // minutos

  // 1️⃣ Converter atraso total para horas
  double atrasoTotalHoras =
      (qtdPedagios * atrasoPorPedagioMin) / 60;

  // 2️⃣ Distância que o caminhão percorre enquanto o carro está parado
  double distanciaCaminhaoDuranteAtraso =
      velocidadeCaminhao * atrasoTotalHoras;

  // 3️⃣ Nova distância entre os veículos
  double distanciaRestante =
      distanciaTotal - distanciaCaminhaoDuranteAtraso;

  // 4️⃣ Velocidade relativa
  double velocidadeRelativa =
      velocidadeCarro + velocidadeCaminhao;

  // 5️⃣ Tempo até o encontro após o atraso
  double tempoAteEncontro =
      distanciaRestante / velocidadeRelativa;

  // 6️⃣ Distância do carro até Ribeirão Preto
  double distanciaCarroRibeirao =
      velocidadeCarro * tempoAteEncontro;

  // 7️⃣ Distância do caminhão até Ribeirão Preto
  double tempoTotalCaminhao =
      atrasoTotalHoras + tempoAteEncontro;

  double distanciaCaminhaoRibeirao =
      velocidadeCaminhao * tempoTotalCaminhao;

  // Resultados
  print("Distância do carro até Ribeirão Preto: "
      "${distanciaCarroRibeirao.toStringAsFixed(2)} km");

  print("Distância do caminhão até Ribeirão Preto: "
      "${distanciaCaminhaoRibeirao.toStringAsFixed(2)} km");

  if (distanciaCarroRibeirao < distanciaCaminhaoRibeirao) {
    print("➡ O carro está mais próximo de Ribeirão Preto.");
  } else {
    print("➡ O caminhão está mais próximo de Ribeirão Preto.");
  }
}
