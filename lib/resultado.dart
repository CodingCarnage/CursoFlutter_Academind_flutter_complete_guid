import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultadoPuntos;
  final Function resetearMenjador;

  Resultado(this.resultadoPuntos, this.resetearMenjador);

  String get resultadoFrase {
    String resultadoTexto;
    if (resultadoPuntos <= 8) {
      resultadoTexto = "Eres inocente";
    } else if (resultadoPuntos <= 12) {
      resultadoTexto = "Muy agradable";
    } else if (resultadoPuntos <= 16) {
      resultadoTexto = "Eres extraño";
    } else {
      resultadoTexto = "Eres muy malo";
    }
    return resultadoTexto;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultadoFrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            onPressed: resetearMenjador,
            child: Text("Reiniciar questionario"),
            color: Colors.white,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
