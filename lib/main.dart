import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var preguntaIndice = 0;

  void respuestaPregunta() {
    setState(() {
      preguntaIndice += 1;
    });
    print(preguntaIndice);
  }

  @override
  Widget build(BuildContext context) {
    var preguntas = [
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
              preguntas[preguntaIndice],
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
