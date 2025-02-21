import 'dart:io';

void main() {
  stdout.write("Digite seu salário base: ");
  double salarioBase = double.parse(stdin.readLineSync()!);

  double bonificacao = salarioBase * 0.2;
  double salarioBruto = salarioBase + bonificacao;
  double imposto = salarioBruto * 0.1;
  double salarioLiquido = salarioBruto - imposto;

  print("\nSalário Base: R\$ ${salarioBase.toStringAsFixed(2)}");
  print("Bonificação (20%): R\$ ${bonificacao.toStringAsFixed(2)}");
  print("Imposto (10%): R\$ ${imposto.toStringAsFixed(2)}");
  print("Salário Líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}");
}
 