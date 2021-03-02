import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String argumento;
  final void Function() quandoSelecionada;
  Resposta(this.argumento, this.quandoSelecionada);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          argumento,
        ),
        onPressed: quandoSelecionada,
      ),
    );
  }
}
