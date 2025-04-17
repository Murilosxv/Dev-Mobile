/*Crie uma classe “Filha” com o tipo de animal pássaro, cachorro, tigre, peixe e o atributo:
peso, métodos acordou, dormiu.
 */

// Classe Animal
class Animal {
  String nome;
  int peso;

  // Construtor
  Animal(this.nome, this.peso);

  // Método para dormir
  void dormir() {
    print("O animal ${nome} está dormindo");
  }

  // Método para acordar
  void acordou() {
    print("O animal ${nome} acordou");
  }
}

// Classe Cachorro (Filha)
class Cachorro extends Animal {
  Cachorro(String nome, int peso) : super(nome, peso);

  // Método para latir
  void latir() {
    print("O animal ${nome} está latindo");
  }
}

// Classe Tigre (Filha)
class Tigre extends Animal {
  String? cor;

  Tigre(String nome, int peso, this.cor) : super(nome, peso);

  // Método para atacar
  void atacar() {
    print("O animal Tigre ${nome} atacou");
  }
}

// Classe Peixe (Filha)
class Peixe extends Animal {
  String? cor;

  Peixe(String nome, int peso, this.cor) : super(nome, peso);

  // Método para saltar
  void salto() {
    print("O animal Peixe ${nome} deu um salto na água");
  }
}

// Classe Passaro (Filha)
class Passaro extends Animal {
  Passaro(String nome, int peso) : super(nome, peso);

  // Método para voar
  void voar() {
    print("O animal Passaro ${nome} está voando");
  }
}
