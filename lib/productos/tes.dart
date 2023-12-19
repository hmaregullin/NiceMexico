import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nice/main.dart';

class Tes extends StatelessWidget {
  // Lista de imágenes
  final List<Map<String, String>> imgList = [
    {
      'image': 'assets/images/te_matcha.jpg',
      'text':
          'Es un antioxidante potente que desintoxica el organismo, cuida la piel, quema calorías y relaja. También previene la obesidad al detener el movimiento de la glucosa en las células grasas'
    },
    {
      'image': 'assets/images/te_rojo.jpg',
      'text':
          'Al no contener cafeína, favorece a la relajación muscular y al descanso profundo, es rico en antioxidantes y tiene un efecto preventivo contra el envejecimiento prematuro.'
    },
  ];

  Tes({
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
            const Text('Tes'),
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
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
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
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              item['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item['text']!,
                            style: const TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 50),
            const Text(
              'Contacta a tu presentador para obtener tus muestrarios.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
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
