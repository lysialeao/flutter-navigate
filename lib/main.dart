import 'dart:html';

import 'package:flutter/material.dart';

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota tela'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(),
            TextField(),
            TextField(),
            RaisedButton(
              child: Text('Cadastrar'),
              onPressed: () {},
            )
          ],
        ),
      ),
      



      //body: Center(
        //child: ElevatedButton(
          //onPressed: (){
            //Navigator.pop(context);
          //},
          //child: Text('Retornar!'),
        //),

      //),



    );
  }
}

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira rota'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Abrir rota (tela)'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaRota()),
            );
          },
        ),
      ),
    );
  }
}

void main(){
  runApp(MaterialApp(
    title: 'Navegação básica',
    theme: ThemeData(primarySwatch: Colors.cyan),
    home: PrimeiraRota(),
  ));
}

