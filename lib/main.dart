import 'package:flutter/material.dart';
import 'package:nacguilherme/screens/vinhos_detalhes_screen.dart';
import 'package:nacguilherme/screens/vinhos_screen.dart';
import 'package:nacguilherme/screens/vinhos_first.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Vinhos App',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(94, 33, 41, 1.0),
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => VinhosTela(),
        '/vinhos_detalhes': (context) => VinhosDetalhesScreen(),
      },
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
