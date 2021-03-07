import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionada;
  Resposta(this.texto, this.quandoSelecionada);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(texto),
        onPressed: quandoSelecionada,
      ),
    );
  }
}
