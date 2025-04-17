import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DashboardScreen(),
  ));
}

// cria uma classe do tipo Stateless
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  // polimorfismo que permite tratar as funções de forma particular
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer propriedade do Scaffold que permite criar um elemento lateral
    drawer: Drawer(
      child: ListView(
        // adicionando espaçamento com o padding
        padding: EdgeInsets.zero,
        // children pois utilizaremos mais de um widget
        children: [
          // Widget DrawerHeader vamos colocar o titulo do Drawer
         DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.brown
          ),
          
          child: Text('Menu',style: TextStyle(color: Colors.white),)),
          ListTile(title: Text('Opção 1'),),
          ListTile(title: Text('Opção 2'),)
        ],
       ),
    ),
    // criando o appbar

    appBar: AppBar(
      // atribuindo cor ao appbar
    backgroundColor: Colors.brown,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
    // centraliza o titulo do aplicativo
    centerTitle: true,
    title: Row(
      children: [
        Ima
      ],
    ),

    ),
    );
  }
}