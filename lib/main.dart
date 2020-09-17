import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void respuestaPregunta() {
    print("Respuesta seleccionada");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "¿Cual es tu colo favorito?",
      "¿Cual es tu animal favorito?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primera aplicación"),
        ),
        body: Column(
          children: [
            Text("Pregunta"),
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
                //...
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
