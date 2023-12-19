import 'package:flutter/material.dart';
import 'basicos.dart';
import 'ventasamigos.dart';
import 'ventasfrio.dart';
import 'tanda.dart';
import 'raspadito.dart';
import 'loteria.dart';

class Ventas extends StatelessWidget {
  const Ventas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ventas'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Basicos
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Basicos()),
                );
              },
              child: const Text('Básicos'),
            ),
            // Ventas con amigos
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VentasAmigos()),
                );
              },
              child: const Text('Ventas con Amigos y Conocidos'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VentasEnFrio()),
                );
              },
              child: const Text('Ventas en frío'),
            ),
            // Tanda
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tanda()),
                );
              },
              child: const Text('Tanda'),
            ),
            // Raspaditos

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Raspadito()),
                );
              },
              child: const Text('Raspaditos'),
            ),

            // Demo-Loteria
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loteria()),
                );
              },
              child: const Text('Demo-Loteria'),
            ),
          ],
        ),
      ),
    );
  }
}
