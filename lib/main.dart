import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual sua cor predileta?',
      'resposta': [
        {'texto': 'Verde', 'pontuacao': 10},
        {'texto': 'Vermelha', 'pontuacao': 5},
        {'texto': 'Azul', 'pontuacao': 3},
        {'texto': 'Amarela', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual seu animal predileto?',
      'resposta': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato    ', 'pontuacao': 5},
        {'texto': 'Arara   ', 'pontuacao': 3},
        {'texto': 'Macaco  ', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual seu professor predileto?',
      'resposta': [
        {'texto': 'João  ', 'pontuacao': 10},
        {'texto': 'Maria ', 'pontuacao': 5},
        {'texto': 'Pedro ', 'pontuacao': 3},
        {'texto': 'Amélia', 'pontuacao':1}
      ]
    },
  ];
  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Perguntas')),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal),
      ),
    );
  }
}
