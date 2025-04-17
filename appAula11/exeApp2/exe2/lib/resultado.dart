import 'package:flutter/material.dart';

class TelaResultado extends StatelessWidget {
  final String nome;
  final String idade;
  final String profissao;
  final String sexo;
  final String estadoCivil;

  const TelaResultado({
    super.key,
    required this.nome,
    required this.idade,
    required this.profissao,
    required this.sexo,
    required this.estadoCivil,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nome: $nome", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Idade: $idade", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Profissão: $profissao", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Sexo: $sexo", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Estado Civil: $estadoCivil", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
