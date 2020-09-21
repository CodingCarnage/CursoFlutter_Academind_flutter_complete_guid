import 'package:flutter/material.dart';

import './cuestionario.dart';
import './resultado.dart';

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
  final _preguntas = const [
    {
      "preguntaTexto": "¿Cuál es tu color favorito?",
      "respuestas": [
        {"texto": "Negro", "puntos": 10},
        {"texto": "Rojo", "puntos": 5},
        {"texto": "Verde", "puntos": 3},
        {"texto": "Blanco", "puntos": 1}
      ]
    },
    {
      "preguntaTexto": "¿Cuál es tu animal favorito?",
      "respuestas": [
        {"texto": "Conejo", "puntos": 3},
        {"texto": "Tortuga", "puntos": 11},
        {"texto": "Perro", "puntos": 5},
        {"texto": "Gato", "puntos": 9}
      ]
    },
    {
      "preguntaTexto": "¿Cuál es tu comida favorita?",
      "respuestas": [
        {"texto": "Pizza", "puntos": 1},
        {"texto": "Hamburguesas", "puntos": 1},
        {"texto": "Hotdog", "puntos": 1},
        {"texto": "Tacos", "puntos": 1}
      ]
    },
  ];

  int _preguntaIndice = 0;
  int _totalPuntos = 0;

  void _resetearQuestionario() {
    setState(() {
      _preguntaIndice = 0;
      _totalPuntos = 0;
    });
  }

  void _respuestaPregunta(int puntos) {
    _totalPuntos += puntos;

    setState(() {
      _preguntaIndice += 1;
    });
    print(_preguntaIndice);
    if (_preguntaIndice < _preguntas.length) {
      print("Tenemos mas preguntas");
    } else {
      print("No mas preguntas");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primera aplicación"),
        ),
        body: _preguntaIndice < _preguntas.length
            ? Cuestionario(
                preguntaIndice: _preguntaIndice,
                preguntas: _preguntas,
                respuestaPregunta: _respuestaPregunta)
            : Resultado(_totalPuntos, _resetearQuestionario),
      ),
    );
  }
}
