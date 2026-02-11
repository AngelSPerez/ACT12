import 'package:flutter/material.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RecipeRecive El Angel',
      home: Receta(),
    );
  }
}

class Receta extends StatelessWidget {
  const Receta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RecipeRecive El Angel',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        leading: const Icon(Icons.restaurant, color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      // Lista de Platillos
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearTarjetaPlatillo(
            'Lasaña de Carne',
            'Pasta italiana con salsa boloñesa y queso',
            'https://images.unsplash.com/photo-1551183053-bf91a1d81141?q=80&w=200&auto=format&fit=crop',
          ),
          const SizedBox(height: 16),
          // --- IMAGEN ACTUALIZADA AQUÍ ---
          _crearTarjetaPlatillo(
            'Enchiladas Verdes',
            'Tortillas rellenas de pollo con salsa de tomatillo y queso gratinado',
            'mexican-enchiladas-verdes.jpg',
          ),
          const SizedBox(height: 16),
          _crearTarjetaPlatillo(
            'Pastel de Chocolate',
            'Postre esponjoso con cobertura de ganache',
            'https://images.unsplash.com/photo-1578985545062-69928b1d9587?q=80&w=200&auto=format&fit=crop',
          ),
        ],
      ),
    );
  }

  // Widget personalizado para los platillos
  Widget _crearTarjetaPlatillo(
    String nombre,
    String descripcion,
    String urlImagen,
  ) {
    return Card(
      color: const Color(0xFFF3E5F5), // Fondo lila muy claro
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            urlImagen,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            // Agregamos un manejador de errores por si acaso
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 60,
                height: 60,
                color: Colors.grey[300],
                child: const Icon(Icons.broken_image, color: Colors.grey),
              );
            },
          ),
        ),
        title: Text(
          nombre,
          style: const TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          descripcion,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.black87),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.purple,
          size: 18,
        ),
        onTap: () {
          // Acción al tocar la tarjeta
        },
      ),
    );
  }
}
