import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recetario',
      home: Receta(),
    );
  }
} //fin de la clase AppRecetario

class Receta extends StatelessWidget {
  const Receta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recetario'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 155, 24),
        leading: Icon(Icons.account_balance_sharp),
        actions: [Icon(Icons.more_vert), Icon(Icons.favorite)],
      ),
    );
  }
}
