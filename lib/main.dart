import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp( MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _frases = [
    "Frase1", "Frase2","Frase3",
    "Frase4","Frase5"
  ];

  var _frase = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt( _frases.length);

    setState(() {

      _frase = _frases[ numeroSorteado ];
          
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("Frases do Dia"),
            backgroundColor: Colors.green,
          ),
          body: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              /*decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.red)
              ),*/
              child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/logo.png"),
                  Text(_frase,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                     fontSize:17,
                     fontStyle: FontStyle.italic,
                     color: Colors.black
                    ),
                  ),
                  FilledButton(
                    style: const ButtonStyle( 
                      backgroundColor: MaterialStatePropertyAll(Colors.green)
                    ),
                    onPressed: _gerarFrase,
                    child: const Text("Nova Frase",
                      style: TextStyle(
                        fontSize:25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ))
                ],
              ),
            ),
          ),
        );
    }
}
