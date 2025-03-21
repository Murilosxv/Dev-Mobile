class Animal{

String? nome;
int? idade;
void dormir(){
  print("O animal esta dormindo");
}
}

// classe filha
class Cachorro extends Animal{
  void latir(){
    print("O animal ${nome} esta latindo");
  }
}

class Tigre extends Animal{

  String? cor;

  void atacar(){
    print("O animal Tigre $nome atacou");
  }

}

void main(){
  Cachorro Rocky = Cachorro();
  Rocky.nome = "Rocky";
  Rocky.idade =2;
  Rocky.latir();
  Rocky.dormir();
  Tigre lucas = Tigre();
  lucas.nome ="Lucas";
  lucas.idade = 30;
  lucas.atacar();

}