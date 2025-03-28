import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
 home: Telaprincipal(),
  ));
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App aula 09 - Campo texto"),
      ),
      body: Campotexto(),
    );
  }
}


//classe do tipo stateful

class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {
  // armazena o que digitarmos no campo nome do textfield
  TextEditingController nome = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // cria o widget textfield
        TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(labelText: "Digite seu nome"),
          onChanged: (String texto) {
            print("Texto digitado pelo usuario ${texto}");
          },

        )

      ],
    );
  }
}