import 'package:flutter/material.dart';
import 'package:flutter_nice/main.dart';

class Otros extends StatelessWidget {
  Otros({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(), // Mueve "Básicos" al medio de la pantalla
            const Text('Otros'),
            const Spacer(), // Mantiene el espacio entre "Básicos" y el botón
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FirstRoute(),
                  ),
                );
              },
              child: const Text('Inicio'),
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Tu texto existente aquí
            const SizedBox(height: 20),
            const Text(
                'Nuestros aceites esenciales son extractos de plantas naturales de diversas variedades y regiones del mundo, se extraen por destilación y compresión en frio apoyando el equilibrio físico, emocional, espiritual y energético de nuestro cuerpo. Descubre una innumerable cantidad de beneficios y bondades representados de la manera más pura; enciende tus sentidos y reanima tu cuerpo con NICE & Bella Essential Oils.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center),
            // Espacio entre el texto y el carrusel
            const SizedBox(height: 50),
            SizedBox(
              width: 250.0, // Ajusta el ancho según tus preferencias
              height: 250.0, // Ajusta el alto según tus preferencias
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    10.0), // Ajusta el radio según tus preferencias
                child: Image.asset('assets/images/aceite_escencial.jpg'),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            const Text(
              'Contacta a tu presentador para obtener tus muestrarios.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            )
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
