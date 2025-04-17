import 'package:flutter/material.dart';

class TelaMexico extends StatelessWidget {
  const TelaMexico({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Tacos',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Image.network(
          'https://cdn.panelinha.com.br/receita/1640793977642-taco.jpg',
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
