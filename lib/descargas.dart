import 'package:flutter/material.dart';

class Descargas extends StatelessWidget {
  const Descargas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Descargas'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Add your action for button 1
                print('Button 1 pressed');
              },
              child: const Text('Catálogo 1'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Add your action for button 2
                print('Button 2 pressed');
              },
              child: const Text('Catálogo 2'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Add your action for button 3
                print('Button 3 pressed');
              },
              child: const Text('Catálogo 3'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Add your action for button 4
                print('Button 4 pressed');
              },
              child: const Text('Catálogo 4'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Add your action for button 5
                print('Button 5 pressed');
              },
              child: const Text('Catálogo 5'),
            ),
          ],
        ),
      ),
      // Añade el IconButton al final de la pantalla
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 50.0,
            ),
            const Text(
              'Descargar el muestrario',
              textAlign: TextAlign.center,
            ),
            IconButton(
              icon: const Icon(Icons.file_download),
              onPressed: () {
                // Agrega aquí la lógica para descargar el PDF
                // Puedes mostrar un diálogo de descarga o realizar alguna otra acción.
                // Ejemplo:
                // showDownloadDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
