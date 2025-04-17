import 'package:flutter/material.dart';
import 'resultado.dart';

void main() {
  runApp(AppColeta());
}

class AppColeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário do Usuário',
      debugShowCheckedModeBanner: false,
      home: Formulario(),
    );
  }
}

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();

  String nome = '';
  String idade = '';
  String profissao = '';
  String sexo = 'Masculino';
  String estadoCivil = 'Solteiro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coleta de Informações'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) => value!.isEmpty ? 'Informe seu nome' : null,
                onSaved: (value) => nome = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Idade'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Informe sua idade' : null,
                onSaved: (value) => idade = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Profissão'),
                validator: (value) => value!.isEmpty ? 'Informe sua profissão' : null,
                onSaved: (value) => profissao = value!,
              ),
              SizedBox(height: 20),
              Text('Sexo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              RadioListTile(
                title: Text('Masculino'),
                value: 'Masculino',
                groupValue: sexo,
                onChanged: (value) {
                  setState(() {
                    sexo = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('Feminino'),
                value: 'Feminino',
                groupValue: sexo,
                onChanged: (value) {
                  setState(() {
                    sexo = value.toString();
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Estado Civil', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              RadioListTile(
                title: Text('Solteiro'),
                value: 'Solteiro',
                groupValue: estadoCivil,
                onChanged: (value) {
                  setState(() {
                    estadoCivil = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('Casado'),
                value: 'Casado',
                groupValue: estadoCivil,
                onChanged: (value) {
                  setState(() {
                    estadoCivil = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('Divorciado'),
                value: 'Divorciado',
                groupValue: estadoCivil,
                onChanged: (value) {
                  setState(() {
                    estadoCivil = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('Viúvo'),
                value: 'Viúvo',
                groupValue: estadoCivil,
                onChanged: (value) {
                  setState(() {
                    estadoCivil = value.toString();
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Concluir'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TelaResultado(
                          nome: nome,
                          idade: idade,
                          profissao: profissao,
                          sexo: sexo,
                          estadoCivil: estadoCivil,
                        ),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
