import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nice/main.dart';
import 'muestrario.dart';

class Loteria extends StatelessWidget {
  // Lista de imágenes
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  ];

  Loteria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(), // Mueve "Básicos" al medio de la pantalla
            const Text('Loteria'),
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
            const SizedBox(height: 20),
            const Text('Demostración de Loteria',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center),
            const SizedBox(height: 50),

            // CarouselSlider con las imágenes
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0, // Altura del carrusel
                enlargeCenterPage: true,
                autoPlay: true, // Auto reproducción
                aspectRatio: 16 / 9, // Relación de aspecto de las imágenes
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8, // Proporción del ancho de la vista
              ),
              items: imgList.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Return'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 50.0,
            ),
            const Text(
              'Ver el muestrario',
              textAlign: TextAlign.center,
            ),
            IconButton(
              icon: const Icon(Icons.file_download),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Muestrario()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
