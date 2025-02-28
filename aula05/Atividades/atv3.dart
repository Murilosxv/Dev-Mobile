/*Crie uma classe denominada “Máquinas” com os seguintes atributos:
Nome da máquina
Quantidade de eixos
Rotações por minuto
Consumo de energia elétrica
Essa classe deve ser a mãe de outras classes.
Criar classe denominada furadeira herdando o nome da máquina, rotações por minuto,
consumo de energia elétrica.
Criar métodos para ligar, desligar a máquina e um método para ajustar a velocidade de
rotação da máquina. */

// Classe mãe
class Maquina {
  // Atributos comuns a todas as máquinas
  String nome;
  int quantidadeEixos;
  int rotacoesPorMinuto;
  double consumoEnergia;

  // Construtor da classe (para inicializar os atributos)
  Maquina(this.nome, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

  // Método para ligar a máquina
  void ligar() {
    print('$nome foi ligada!');
  }

  // Método para desligar a máquina
  void desligar() {
    print('$nome foi desligada!');
  }

  // Método para ajustar a velocidade de rotação
  void ajustarVelocidade(int novaVelocidade) {
    rotacoesPorMinuto = novaVelocidade;
    print('$nome agora está com $rotacoesPorMinuto rotações por minuto.');
  }
}

// Classe filha, Furadeira, que herda de Maquina
class Furadeira extends Maquina {
  // Construtor da classe Furadeira que chama o construtor da classe mãe
  Furadeira(String nome, int quantidadeEixos, int rotacoesPorMinuto, double consumoEnergia)
      : super(nome, quantidadeEixos, rotacoesPorMinuto, consumoEnergia);
  
  // Podemos adicionar métodos ou atributos específicos para Furadeira aqui se necessário
}

void main() {
  // Criando uma instância (objeto) da Furadeira
  Furadeira furadeira = Furadeira('Furadeira Elétrica', 3, 1500, 350.5);

  // Testando os métodos da classe
  furadeira.ligar();  // Ligar a furadeira
  furadeira.ajustarVelocidade(1800);  // Ajustar a velocidade da furadeira
  furadeira.desligar();  // Desligar a furadeira
}

