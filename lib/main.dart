import 'package:flutter/material.dart';

void main() => runApp(AppLibreria());

class AppLibreria extends StatelessWidget {
  const AppLibreria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosLibros(),
    );
  }
}//fin clase AppLibreria

class LosLibros extends StatelessWidget {
  const LosLibros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  // Título con color rosa claro
  title: const Text(
    "Librería Lecturas Roldan",
    style: TextStyle(
      color: Color(0xFFFFB6C1), // Rosa claro (LightPink)
      
    ),
  ),
  centerTitle: true,
  // Color de fondo negro
  backgroundColor: Colors.black,
  // Icono de libro en la parte izquierda
  leading: const Icon(
    Icons.book,
    color: Color(0xFFFFB6C1), // Manteniendo la armonía con el título
  ),
  // Lista de acciones en la parte derecha
  actions: [
    IconButton(
      icon: const Icon(Icons.theater_comedy), // Icono de máscaras
      color: Colors.pink, // Rosa fuerte
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.local_florist), // Icono de flor
      color: Colors.pink, // Rosa fuerte
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.movie), // Icono de claqueta
      color: Colors.pink, // Rosa fuerte
      onPressed: () {},
    ),
  ],
),
body: Container(
  // Esto asegura que el negro cubra toda la pantalla de arriba a abajo
  width: double.infinity,
  height: double.infinity,
  color: const Color.fromARGB(255, 243, 171, 211), 
  child: SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(height: 10), // Un pequeño respiro arriba

        // TARJETA 1
        Card(
          margin: const EdgeInsets.all(12),
          color: const Color(0xFFFFB6C1), // Rosa claro
          elevation: 10, // Sombreado
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Color(0xFFC71585), width: 3), // LED Rosa Oscuro
          ),
          child: const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://raw.githubusercontent.com/RoldanOrtega/Imagenes-para-flutter-6to-I-fecha-11-feb-2026-/refs/heads/main/Quijote.jpg"),
            ),
            title: Text("El Quijote", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            subtitle: Text("Miguel de Cervantes", style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.favorite, color: Color.fromARGB(255, 248, 0, 0)),
          ),
        ),

        // TARJETA 2
        Card(
          margin: const EdgeInsets.all(12),
          color: const Color(0xFFFFB6C1), // Rosa claro
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Color(0xFFC71585), width: 3), // LED Rosa Oscuro
          ),
          child: const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/RoldanOrtega/Imagenes-para-flutter-6to-I-fecha-11-feb-2026-/refs/heads/main/cien%20a%C3%B1os%20de%20soledad.jpg'),
            ),
            title: Text("Cien Años de Soledad", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            subtitle: Text("Gabriel García Márquez", style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.favorite, color: Color.fromARGB(255, 255, 0, 0)),
          ),
        ),

        // TARJETA 3
        Card(
          margin: const EdgeInsets.all(12),
          color: const Color(0xFFFFB6C1), // Rosa claro
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Color(0xFFC71585), width: 3), // LED Rosa Oscuro
          ),
          child: const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/RoldanOrtega/Imagenes-para-flutter-6to-I-fecha-11-feb-2026-/refs/heads/main/rayuela.jpg'),
            ),
            title: Text("Rayuela", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            subtitle: Text("Julio Cortázar", style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.favorite, color: Color.fromARGB(255, 255, 0, 0)),
          ),
        ),

        // TARJETA 4
        Card(
          margin: const EdgeInsets.all(12),
          color: const Color(0xFFFFB6C1), // Rosa claro
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Color(0xFFC71585), width: 3), // LED Rosa Oscuro
          ),
          child: const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/RoldanOrtega/Imagenes-para-flutter-6to-I-fecha-11-feb-2026-/refs/heads/main/ficciones.jpg'),
            ),
            title: Text("Ficciones", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            subtitle: Text("Jorge Luis Borges", style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.favorite, color: Color.fromARGB(255, 255, 0, 0)),
          ),
        ),
      ],
    ),
  ),
),
    );// fin scaffold
  }
}// fin clase LosLibros