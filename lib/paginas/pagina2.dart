import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('segunda pagina 6J', style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://tse2.mm.bing.net/th/id/OIP.OKjo7bx2Xj2PmMrxtZFrvAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
              width: 200,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pagina3');
              },
              child: Text('Avanzar a Página 3'),
            ),
          ],
        ),
      ),
    );
  }
}
