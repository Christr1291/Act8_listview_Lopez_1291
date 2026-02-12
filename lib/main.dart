import 'package:flutter/material.dart';

void main() => runApp(const Appcomputrabajo());

class Appcomputrabajo extends StatelessWidget {
  const Appcomputrabajo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'computrabajo',
      home: PartesComputadora(),
    );
  }
}

class PartesComputadora extends StatelessWidget {
  const PartesComputadora({super.key});

  // Función para crear las tarjetas
  Widget _crearTarjeta(BuildContext context, {required String titulo, required String subtitulo, required IconData icono, required Color colorFondo}) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [colorFondo.withOpacity(0.7), colorFondo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(20),
          leading: Icon(icono, size: 40, color: Colors.white),
          title: Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            subtitulo,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'computrabajo',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 8, 163, 235),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 26, 2, 238)),
          onPressed: () {
            // Acción para la cámara
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.computer, color: Color.fromARGB(255, 15, 255, 47)),
            onPressed: () {
              // Acción para computadoras
            },
          ),
          IconButton(
            icon: const Icon(Icons.shop, color: Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {
              // Acción para clientes
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Elemento 1
          _crearTarjeta(
            context,
            titulo: 'Ventas del Mes',
            subtitulo: 'Incremento del 15%',
            icono: Icons.trending_up,
            colorFondo: Colors.blueAccent,
          ),
          // Elemento 2
          _crearTarjeta(
            context,
            titulo: 'Inventario',
            subtitulo: '24 artículos bajos',
            icono: Icons.inventory_2,
            colorFondo: Colors.orangeAccent,
          ),
          // Elemento 3
          _crearTarjeta(
            context,
            titulo: 'Usuarios',
            subtitulo: '12 nuevos hoy',
            icono: Icons.group,
            colorFondo: Colors.purpleAccent,
          ),
          // Elemento 4
          _crearTarjeta(
            context,
            titulo: 'Soporte',
            subtitulo: '2 tickets pendientes',
            icono: Icons.support_agent,
            colorFondo: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
