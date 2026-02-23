import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina 3 Angel', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.lightGreen,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Text(
          '¡Llegaste a la página final!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
