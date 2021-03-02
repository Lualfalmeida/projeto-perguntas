import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

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

    final List<Map<String, Object>> _pergunta = [
      {
        'texto': 'Cor predileta',
        'respostas': ['Verde', 'Vermelha', 'Azul', 'Branca'],
      },
      {
        'texto': 'Animal predileto',
        'respostas': ['Cachorro', 'Gato', 'Papagaio', 'Hamster'],
      },
      {
        'texto': 'Professor predileto',
        'respostas': ['João', 'Marcelo', 'Alvaro', 'Bianca'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(_pergunta[_perguntaSelecionada]['texto']),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}
