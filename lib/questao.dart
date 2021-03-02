import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String argumento;
  Questao(this.argumento);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        argumento,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
