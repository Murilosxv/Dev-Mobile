

class casa {
  String? cor;
  int? qtde_p;

  void abrirporta() {
    print("A porta esta aberta");
  }
}

void main() {
  casa minhaCasa = casa();
  minhaCasa.cor = "Azul";
  minhaCasa.qtde_p = 2;
  minhaCasa.abrirporta();
  print("Cor da casa ${minhaCasa.cor}");
  print("Quantidade de portas ${minhaCasa.qtde_p}");
}
