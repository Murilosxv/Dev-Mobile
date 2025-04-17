import 'package:flutter/material.dart';

class TelaItalia extends StatelessWidget {
  const TelaItalia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Pizza',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Image.network(
          'https://static.itdg.com.br/images/1200-630/34659b4aa9a62a4e168dc06422f46c91/shutterstock-2152386432.jpg',
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
