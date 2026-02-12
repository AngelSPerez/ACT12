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
      // --- AppBar Original Restaurada ---
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
      // --- Lista de Opciones de Usuario ---
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearOpcionMenu(
            'Mi Perfil',
            'Ver y editar mis datos personales',
            Icons.person,
          ),
          const SizedBox(height: 16),
          _crearOpcionMenu(
            'Guardados',
            'Tus recetas favoritas guardadas',
            Icons.bookmark,
          ),
          const SizedBox(height: 16),
          _crearOpcionMenu(
            'Me Gusta',
            'Lista de platos que te han encantado',
            Icons.favorite,
          ),
          const SizedBox(height: 16),
          _crearOpcionMenu(
            'Configuración',
            'Ajustes de cuenta y notificaciones',
            Icons.settings,
          ),
          const SizedBox(height: 16),
          _crearOpcionMenu(
            'Cerrar Sesión',
            'Salir de la aplicación',
            Icons.exit_to_app,
            esPeligroso: true, // Para ponerlo en rojo
          ),
        ],
      ),
    );
  }

  // Widget personalizado para las opciones
  Widget _crearOpcionMenu(
    String nombre,
    String descripcion,
    IconData icono, {
    bool esPeligroso = false,
  }) {
    return Card(
      color: const Color(0xFFF3E5F5), // Fondo lila muy claro
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icono,
            color: esPeligroso ? Colors.red : Colors.purple,
            size: 30,
          ),
        ),
        title: Text(
          nombre,
          style: TextStyle(
            color: esPeligroso ? Colors.red : Colors.purple,
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
          // Acción al tocar la opción
        },
      ),
    );
  }
}
