/*Exemplo de estrutura condicional*/

import 'dart:io';

void main(){
  int idade; 
  print("Digite sua idade:");
  idade = int.parse(stdin.readLineSync()!);
if(idade>=18){
  print("Idade: $idade - maior de idadde");
}
else{
  print("Idade:$idade - Menor de  idade");
}
}