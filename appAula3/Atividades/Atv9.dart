 import 'dart:io';

 void main() {
   print("Digite a quantidade de kWh consumida:");
   double consumo = double.parse(stdin.readLineSync()!);

   print("Digite o tipo de instalação (R para Residencial, I para Indústria, C para Comércio):");
   String tipoInstalacao = stdin.readLineSync()!;

   double precoUnitario;
   double valorTotal;

   if (tipoInstalacao == "R") {
     if (consumo <= 500) {
       precoUnitario = 0.50;
     } else {
       precoUnitario = 0.70;
     }
   } else if (tipoInstalacao == "C") {
     if (consumo <= 1000) {
       precoUnitario = 0.65;
     } else {
       precoUnitario = 0.60;
     }
   } else if (tipoInstalacao == "I") {
     if (consumo <= 5000) {
      precoUnitario = 0.55;
     } else {
       precoUnitario = 0.50;
     }
   } else {
     print("Tipo de instalação inválido.");
     return;
   }

   valorTotal = precoUnitario * consumo;

   print("O valor a ser pago pelo fornecimento de energia elétrica é: R\$ ${valorTotal.toStringAsFixed(2)}");
 }