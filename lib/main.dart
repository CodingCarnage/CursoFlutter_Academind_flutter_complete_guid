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
  var _preguntaIndice = 0;

  void _respuestaPregunta() {
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
            : Resultado(),
      ),
    );
  }
}
