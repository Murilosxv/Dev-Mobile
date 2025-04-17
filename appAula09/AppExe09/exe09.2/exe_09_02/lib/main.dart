import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SM Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Controladores para os campos de texto
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  final TextEditingController _enderecoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();

  // Variáveis para armazenar as informações inseridas
  String _nome = '';
  String _idade = '';
  String _endereco = '';
  String _email = '';
  String _telefone = '';

  void _exibirInformacoes() {
    setState(() {
      // Atualiza as variáveis com as informações inseridas pelo usuário
      _nome = _nomeController.text;
      _idade = _idadeController.text;
      _endereco = _enderecoController.text;
      _email = _emailController.text;
      _telefone = _telefoneController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SM Mobile App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Campos de entrada de dados
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _idadeController,
              decoration: InputDecoration(labelText: 'Idade'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _enderecoController,
              decoration: InputDecoration(labelText: 'Endereço'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'E-mail'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _telefoneController,
              decoration: InputDecoration(labelText: 'Telefone'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),

            // Botão para exibir as informações
            ElevatedButton(
              onPressed: _exibirInformacoes,
              child: Text('Exibir Informações'),
            ),

            SizedBox(height: 20),

            // Exibindo as informações inseridas
            Text('Nome: $_nome', style: TextStyle(fontSize: 16)),
            Text('Idade: $_idade', style: TextStyle(fontSize: 16)),
            Text('Endereço: $_endereco', style: TextStyle(fontSize: 16)),
            Text('E-mail: $_email', style: TextStyle(fontSize: 16)),
            Text('Telefone: $_telefone', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
