import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Inicial(),
      title: "Bem vindo!",
    )
  );

}

class Inicial extends StatefulWidget {
  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


