import 'package:flutter/material.dart';

import 'pregunta.dart';
import 'respuesta.dart';

class Cuestionario extends StatelessWidget {
  final List<Map<String, Object>> preguntas;
  final int preguntaIndice;
  final Function respuestaPregunta;

  Cuestionario(
      {@required this.preguntas,
      @required this.respuestaPregunta,
      @required this.preguntaIndice});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pregunta(
          preguntas[preguntaIndice]["preguntaTexto"],
        ),
        ...(preguntas[preguntaIndice]["respuestas"] as List<String>)
            .map((respuesta) {
          return Respuesta(respuestaPregunta, respuesta);
        }).toList(),
      ],
    );
  }
}
