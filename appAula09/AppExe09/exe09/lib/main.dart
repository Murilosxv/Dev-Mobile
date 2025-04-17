import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Notas',
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
  // Controle dos campos de texto para o nome e notas
  final TextEditingController _nomeController = TextEditingController();
  final List<TextEditingController> _notaControllers = List.generate(12, (_) => TextEditingController());

  String _resultado = '';
  double _mediaFinal = 0;

  void _calcularMedia() {
    double media;
    String status = '';
    double totalMedia = 0;

    // Iterando para cada disciplina
    for (int i = 0; i < 4; i++) {
      // Coletando as 3 notas da disciplina
      double nota1 = double.tryParse(_notaControllers[i * 3].text) ?? 0;
      double nota2 = double.tryParse(_notaControllers[i * 3 + 1].text) ?? 0;
      double nota3 = double.tryParse(_notaControllers[i * 3 + 2].text) ?? 0;

      // Calculando a média
      media = (nota1 + nota2 + nota3) / 3;
      totalMedia += media;

      // Verificando aprovação ou reprovação
      if (media >= 7) {
        status += 'Disciplina ${i + 1}: Aprovado (Média: ${media.toStringAsFixed(2)})\n';
      } else {
        status += 'Disciplina ${i + 1}: Reprovado (Média: ${media.toStringAsFixed(2)})\n';
      }
    }

    // Calculando a média geral do aluno
    _mediaFinal = totalMedia / 4;
    _resultado = status + "\nMédia Final: ${_mediaFinal.toStringAsFixed(2)}\n" + (_mediaFinal >= 7 ? "Aluno Aprovado" : "Aluno Reprovado");

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App de Notas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campo para o nome do aluno
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome do Aluno'),
            ),
            SizedBox(height: 20),

            // Campos para as notas das disciplinas
            for (int i = 0; i < 4; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Disciplina ${i + 1}'),
                  TextField(
                    controller: _notaControllers[i * 3],
                    decoration: InputDecoration(labelText: 'Nota 1'),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: _notaControllers[i * 3 + 1],
                    decoration: InputDecoration(labelText: 'Nota 2'),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: _notaControllers[i * 3 + 2],
                    decoration: InputDecoration(labelText: 'Nota 3'),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 20),
                ],
              ),

            // Botão para calcular a média
            ElevatedButton(
              onPressed: _calcularMedia,
              child: Text('Calcular Médias'),
            ),

            // Exibição do resultado
            SizedBox(height: 20),
            Text(
              _resultado,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
