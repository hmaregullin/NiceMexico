import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Aceites extends StatelessWidget {
  const Aceites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aceites Esenciales'),
        centerTitle: true,
      ),
      body: SfPdfViewer.asset("assets/images/pdf/aceites_esenciales.pdf"),
    );
  }
}
