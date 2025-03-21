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

class Tigre extends Animal{
  Tigre(nome,idade,this.cor):super(nome,idade);
  String? cor;
  void atacar(){
    print("O animal Tigre $nome atacou");
  }
}
void main(){
  // Cria objeto Rocky a partir da classe cachorro
  Cachorro Rocky = Cachorro("Rocky",2);
  Rocky.nome="Rocky";
  Rocky.idade =2;
  Rocky.latir();
  Rocky.dormir();
 
  Tigre Lucas = Tigre("Lucas",30,"Pardo");

  Lucas.atacar();
}