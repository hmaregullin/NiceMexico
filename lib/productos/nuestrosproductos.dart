import 'package:flutter/material.dart';
import 'oro.dart';
import 'plata.dart';
import 'perlas.dart';
import 'diamante.dart';
import 'relojes.dart';
import 'lentes.dart';
import 'aretes.dart';
import 'cremas.dart';
import 'tes.dart';
import 'otros.dart';

class NuestrosProductos extends StatelessWidget {
  // Lista de productos
  final List<String> productos = [
    'Oro',
    'Plata',
    'Perlas',
    'Diamante',
    'Relojes',
    'Lentes',
    'Aretes',
    'Cremas',
    'Tes',
    'Otros',
  ];

  NuestrosProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuestros Productos'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Oro()),
                    );
                  },
                  child: const Text('Oro'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Plata()),
                    );
                  },
                  child: const Text('Plata'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Perlas()),
                    );
                  },
                  child: const Text('Perlas'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Diamante()),
                    );
                  },
                  child: const Text('Diamante'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Relojes()),
                    );
                  },
                  child: const Text('Relojes'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Lentes()),
                    );
                  },
                  child: const Text('Lentes'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Aretes()),
                    );
                  },
                  child: const Text('Aretes'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cremas()),
                    );
                  },
                  child: const Text('Cremas'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tes()),
                    );
                  },
                  child: const Text('Tes'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Otros()),
                    );
                  },
                  child: const Text('Otros'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
