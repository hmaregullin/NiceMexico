import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nice/main.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'muestrario.dart';

class Basicos extends StatelessWidget {
  // Lista de imágenes
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  ];

  Basicos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            const Text('Básicos'),
            const Spacer(),
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
            const Text(
                'Un producto físico asegura ventas rápidas. Comienza con tus aretes, son económicos y se venden fácilmente al no requerir medidas.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center),
            // Espacio entre el texto y el carrusel
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

            // Espacio entre el carrusel y el botón
            const SizedBox(height: 20),

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
