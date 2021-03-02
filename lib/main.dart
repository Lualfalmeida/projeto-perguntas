import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questao.dart';


main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    void _responder() {
      setState(() {
        _perguntaSelecionada++;
      });
    }

    var _pergunta = [
      'Cor predileta',
      'Animal predileto',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(_pergunta[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Pergunta 1'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Pergunta 2'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Pergunta 3'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}
