import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(),
          ],
        ),
      ),
    );
  }
}

class Cadastro extends StatelessWidget {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorNome,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                    labelText: 'Nome',
                    labelStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.lightGreen,
                          width: 2,
                        )
                    ),
                    //hintText: 'Digite aqui seu e-mail'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorEmail,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.lightGreen,
                          width: 2,
                        )
                    ),
                    //hintText: 'Digite aqui seu e-mail'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorSenha,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Colors.black26,
                    ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightGreen,
                        width: 2,
                      )),
                    //hintText: 'Digite aqui seu e-mail'
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child : TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      primary:Colors.white,
                      backgroundColor:Colors.lightGreen
                  ),
                  child: const Text('Cadastrar'),
                  
                )
            ),

          ],
        ),
      ),
    );
  }
}



class SegundaRota extends StatelessWidget {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorNome,
                  cursorColor: Colors.black26,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                      labelStyle: TextStyle(
                      color: Colors.black26,
                    ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.lightGreen,
                            width: 2,
                          )),
                    hintText: 'Digite aqui seu e-mail'
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorSenha,
                  cursorColor: Colors.black26,
                  decoration: InputDecoration(
                      labelText: 'Senha',
                      hintText: 'Seus dados estão seguros conosco',
                    labelStyle: TextStyle(
                    color: Colors.black26,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightGreen,
                        width: 2,
                      )),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child : TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Perfil()),
                      );
                    },
                    style: TextButton.styleFrom(
                        primary:Colors.white,
                        backgroundColor:Colors.lightGreen
                    ),
                    child: const Text('Login'),

                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child : TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cadastro()),
                      );
                    },
                    style: TextButton.styleFrom(
                        primary:Colors.white,
                        backgroundColor:Colors.lightGreen
                    ),
                    child: const Text('Cadastrar'),

                  )
              ),
            ],
          ),
        ),
    );
  }
}


class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Container(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Red',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xFF0F3F23),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'IF',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        color: Color(0xFFDC1E1E),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/redif-home.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Text(
                  'Compartilhando \nconhecimento',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.none,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child : TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SegundaRota()),
                      );
                    },
                    style: TextButton.styleFrom(
                        primary:Colors.white,
                        backgroundColor:Colors.lightGreen
                    ),
                    child: const Text('Cadastrar'),

                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main(){
  runApp(MaterialApp(
    title: 'Navegação básica',
    theme: ThemeData(primarySwatch: Colors.lightGreen),
    home: PrimeiraRota(),
  ));
}

