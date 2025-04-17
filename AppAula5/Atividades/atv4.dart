/*. Crie uma classe denominada “Produtos” com os seguintes
parâmetros:
Nome do produto
Quantidade
Preço do produto
Tipo de comunicação
Consumo de energia elétrica
Essa classe de produtos deve ser a mãe de outras classes como
fritadeira, televisão, ar-condicionado.
As classes filhas devem possuir os seguintes métodos – Ligar,
desligar, ajuste de temperatura com passagem de parâmetros para
setpoint. */

// Classe mãe Produtos
class Produto {
  String nome;
  int quantidade;
  double preco;
  String tipoComunicacao;
  double consumoEnergia;

  // Construtor da classe
  Produto(this.nome, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia);

  // Método para ligar o produto
  void ligar() {
    print('$nome foi ligada!');
  }

  // Método para desligar o produto
  void desligar() {
    print('$nome foi desligada!');
  }
}

// Classe filha Fritadeira, que herda de Produto
class Fritadeira extends Produto {
  // Construtor da Fritadeira que chama o construtor da classe mãe
  Fritadeira(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método específico para ajustar a temperatura da fritadeira
  void ajustarTemperatura(int temperatura) {
    print('$nome agora está a $temperatura °C.');
  }
}

// Classe filha Televisão, que herda de Produto
class Televisao extends Produto {
  // Construtor da Televisão que chama o construtor da classe mãe
  Televisao(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método específico para ajustar o volume da televisão
  void ajustarVolume(int volume) {
    print('$nome agora está com volume $volume.');
  }

  // Método para mudar de canal
  void mudarCanal(int canal) {
    print('$nome agora está no canal $canal.');
  }
}

// Classe filha Ar-Condicionado, que herda de Produto
class ArCondicionado extends Produto {
  // Construtor do Ar-Condicionado que chama o construtor da classe mãe
  ArCondicionado(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método específico para ajustar a temperatura do ar-condicionado
  void ajustarTemperatura(int temperatura) {
    print('$nome agora está com a temperatura ajustada para $temperatura °C.');
  }
}

void main() {
  // Criando objetos para cada produto
  Fritadeira fritadeira = Fritadeira('Fritadeira Elétrica', 5, 200.0, 'com fio', 1500.0);
  Televisao tv = Televisao('Televisão LED', 2, 1500.0, 'sem fio', 250.0);
  ArCondicionado arCondicionado = ArCondicionado('Ar Condicionado Split', 3, 3500.0, 'sem fio', 1500.0);

  // Testando os métodos para cada produto

  // Fritadeira
  fritadeira.ligar();
  fritadeira.ajustarTemperatura(180);  // Ajustando a temperatura da fritadeira
  fritadeira.desligar();

  // Televisão
  tv.ligar();
  tv.ajustarVolume(25);  // Ajustando o volume da televisão
  tv.mudarCanal(10);  // Mudando o canal da televisão
  tv.desligar();

  // Ar-Condicionado
  arCondicionado.ligar();
  arCondicionado.ajustarTemperatura(22);  // Ajustando a temperatura do ar-condicionado
  arCondicionado.desligar();
}
