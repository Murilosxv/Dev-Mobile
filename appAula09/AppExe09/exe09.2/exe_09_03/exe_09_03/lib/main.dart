import 'package:flutter/material.dart';

void main() {
  runApp(PlayerApp());
}

class Player {
  String name;
  int age;
  int stats;
  String sport;

  Player({required this.name, required this.age, required this.stats, required this.sport});
}

class PlayerApp extends StatefulWidget {
  @override
  _PlayerAppState createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  final List<Player> players = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController statsController = TextEditingController();
  String selectedSport = 'Futebol';

  void addPlayer() {
    setState(() {
      players.add(
        Player(
          name: nameController.text,
          age: int.parse(ageController.text),
          stats: int.parse(statsController.text),
          sport: selectedSport,
        ),
      );
      nameController.clear();
      ageController.clear();
      statsController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Gerenciador de Jogadores')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(controller: nameController, decoration: InputDecoration(labelText: 'Nome')),
              TextField(controller: ageController, decoration: InputDecoration(labelText: 'Idade'), keyboardType: TextInputType.number),
              TextField(controller: statsController, decoration: InputDecoration(labelText: 'Gols/Pontos'), keyboardType: TextInputType.number),
              DropdownButton<String>(
                value: selectedSport,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedSport = newValue!;
                  });
                },
                items: ['Futebol', 'Basquete'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              ElevatedButton(onPressed: addPlayer, child: Text('Adicionar Jogador')),
              Expanded(
                child: ListView.builder(
                  itemCount: players.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(players[index].name),
                      subtitle: Text('${players[index].age} anos - ${players[index].sport}: ${players[index].stats}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
