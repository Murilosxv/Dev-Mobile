/*1. Crie uma classe mãe chamada “Animal” com os atributos:
String nome, int idade, String cor, String raça.*/

class Animal{
  String nome;
  int idade;

  // construtor 
  Animal(this.nome,this.idade);
  void dormir(){
    print("O animal ${nome} esta dormindo");
  }
}

//Classe filha

class Cachorro extends Animal{
  Cachorro(nome,idade):super(nome,idade);
  void latir(){
    print("O animal ${nome} esta latindo");
  }
}


