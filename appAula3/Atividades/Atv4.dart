import 'dart:io';

void main() {
  // Taxas de câmbio fixas
  const double taxaEuro = 7.00;
  const double taxaDolar = 6.56;
  const double taxaFranco = 4.35;

  // Entrada do valor em reais
  stdout.write("Digite o valor em reais (R\$): ");
  double valorReais = double.parse(stdin.readLineSync()!);

  // Menu de escolha da moeda
  print("\nEscolha a moeda para conversão:");
  print("1 - Euro (EUR)");
  print("2 - Dólar (USD)");
  print("3 - Franco Suíço (CHF)");
  stdout.write("Opção: ");
  int opcao = int.parse(stdin.readLineSync()!);

  double valorConvertido = 0;
  String moeda = "";

  // Conversão de acordo com a escolha do usuário
  switch (opcao) {
    case 1:
      valorConvertido = valorReais / taxaEuro;
      moeda = "EUR";
      break;
    case 2:
      valorConvertido = valorReais / taxaDolar;
      moeda = "USD";
      break;
    case 3:
      valorConvertido = valorReais / taxaFranco;
      moeda = "CHF";
      break;
    default:
      print("Opção inválida.");
      return;
  }

  // Exibir resultado formatado
  print("\nR\$ ${valorReais.toStringAsFixed(2)} equivale a ${valorConvertido.toStringAsFixed(2)} $moeda.");
}
