import 'package:flutter/material.dart';

class Respuesta extends StatelessWidget {
  final Function seleccionarManipulador;
  final String respuestaTexto;

  Respuesta(this.seleccionarManipulador, this.respuestaTexto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: seleccionarManipulador,
        child: Text(respuestaTexto),
        textColor: Colors.white,
      ),
    );
  }
}
