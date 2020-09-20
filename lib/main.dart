import 'package:flutter/material.dart';

import './pregunta.dart';
import './respuesta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _preguntaIndice = 0;

  void _respuestaPregunta() {
    setState(() {
      _preguntaIndice += 1;
    });
    print(_preguntaIndice);
  }

  @override
  Widget build(BuildContext context) {
    var preguntas = [
      {
        "preguntaTexto": "¿Cuál es tu color favorito?",
        "respuestas": ["Negro", "Rojo", "Verde", "Blanco"]
      },
      {
        "preguntaTexto": "¿Cuál es tu animal favorito?",
        "respuestas": ["Conejo", "Tortuga", "Perro", "Gato"]
      },
      {
        "preguntaTexto": "¿Cuál es tu comida favorita?",
        "respuestas": ["Pizza", "Hamburguesas", "Hotdog", "Tacos"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primera aplicación"),
        ),
        body: Column(
          children: [
            Pregunta(
              preguntas[_preguntaIndice]["preguntaTexto"],
            ),
            ...(preguntas[_preguntaIndice]["respuestas"] as List<String>)
                .map((respuesta) {
              return Respuesta(_respuestaPregunta, respuesta);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
