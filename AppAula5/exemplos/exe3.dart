class Pessoa {
  String? _nome; // _ representa elemento privado

  // Cria metodo setnome

  void setNome(String nome) {
    _nome = nome;
  }

  String? getNome() {
    return _nome;
  }
}

class Aluno {
  String? nome;
  getNome() {
    return nome;
  }
}

void main() {
  Pessoa cliente = Pessoa();
  cliente._nome = "Murilo";
  print("Nome do cliente: ${cliente._nome}");
  print("Nome do cliente ${cliente.getNome()} ");
  Aluno sabriny = Aluno();
  sabriny.nome = "Sabriny";
  print("${sabriny.nome}");
}
