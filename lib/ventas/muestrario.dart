import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Muestrario extends StatelessWidget {
  const Muestrario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muestrario'),
        centerTitle: true,
      ),
      body: SfPdfViewer.asset("assets/images/pdf/herramientas_millenium.pdf"),
    );
  }
}
