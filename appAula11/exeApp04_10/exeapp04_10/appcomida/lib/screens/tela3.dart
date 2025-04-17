import 'package:flutter/material.dart';

class TelaJapao extends StatelessWidget {
  const TelaJapao({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sushi',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Image.network(
          'https://sushibarsp.com.br/wp-content/uploads/2022/05/sushi.png',
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
