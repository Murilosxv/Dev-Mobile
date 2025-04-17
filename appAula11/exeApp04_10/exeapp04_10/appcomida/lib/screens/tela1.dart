import 'package:flutter/material.dart';

class TelaBrasil extends StatelessWidget {
  const TelaBrasil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Feijoada',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Image.network(
          'https://www.receiteria.com.br/wp-content/uploads/feijoada-simples-01.jpg',
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
