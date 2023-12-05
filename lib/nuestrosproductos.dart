import 'package:flutter/material.dart';

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
            Expanded(
              child: ListView.builder(
                itemCount: productos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(productos[index]),
                  );
                },
              ),
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
