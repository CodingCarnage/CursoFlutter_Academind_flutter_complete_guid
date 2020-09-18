import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var preguntaIndice = 0;

  void respuestaPregunta() {
    preguntaIndice += 1;
    print(preguntaIndice);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "¿Cuál es tu color favorito?",
      "¿Cuál es tu animal favorito?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primera aplicación"),
        ),
        body: Column(
          children: [
            Text(
              questions[preguntaIndice],
            ),
            RaisedButton(
              onPressed: respuestaPregunta,
              child: Text("Respuesta 1"),
            ),
            RaisedButton(
              onPressed: () => print("Respuesta 2 seleccionada"),
              child: Text("Respuesta 2"),
            ),
            RaisedButton(
              onPressed: () {
                // Algun Codigo...
                print("Respuesta 3 seleccionada");
              },
              child: Text("Respuesta 3"),
            )
          ],
        ),
      ),
    );
  }
}
