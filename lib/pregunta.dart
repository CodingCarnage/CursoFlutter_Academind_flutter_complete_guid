import 'package:flutter/material.dart';

class Pregunta extends StatelessWidget {
  final String preguntaText;

  Pregunta(this.preguntaText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        preguntaText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
