import 'package:flutter/material.dart';
// Aquí conectamos o "importamos" nuestros otros archivos
import 'paginas/pagina1.dart';
import 'paginas/pagina2.dart';
import 'paginas/pagina3.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Pagina1(),
        '/pagina2': (context) => Pagina2(),
        '/pagina3': (context) => Pagina3(),
      },
    );
  }
}
