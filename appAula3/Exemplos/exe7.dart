import 'dart:io';

void main(){
  print("Digite seu nome");
  String nome =stdin.readLineSync()!;
  saudar(nome);

}
// funçao do tipo void 
void saudar(String nome){
  print("Ola $nome ! Bem vindo !");

}