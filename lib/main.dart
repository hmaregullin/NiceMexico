// main.dart
import 'package:flutter/material.dart';
import 'ventas.dart';
import 'afiliacion.dart';
import 'nuestrosproductos.dart';
import 'faq.dart';
import 'descargas.dart';
import 'herramientas.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nice Team Plus'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Ventas
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NuestrosProductos()),
                );
              },
              child: const Text('Nuestros Productotes'),
            ),

            //Afiliacion
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Afiliacion()),
                );
              },
              child: const Text('Afiliacion'),
            ),

            //NuestrosProductos
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ventas()),
                );
              },
              child: const Text('Ventas'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HerramientasDigitales()),
                );
              },
              child: const Text('Herramientas Digitales'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Descargas()),
                );
              },
              child: const Text('Descargas'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FAQ()),
                );
              },
              child: const Text('FAQ'),
            ),
          ],
        ),
      ),
    );
  }
}
