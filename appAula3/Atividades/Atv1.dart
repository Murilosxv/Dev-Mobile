import 'dart:io';

void main() {
  int idade;
  String nome;
  String curso;

  print("Digite seu nome:");
  nome = stdin.readLineSync()!;
  print("Digite o nome do seu curso:");
  curso = stdin.readLineSync()!;
  print("Digite sua idade:");
  idade = int.parse(stdin.readLineSync()!);

  print("Nome: $nome, Curso: $curso, Idade: $idade");
}
