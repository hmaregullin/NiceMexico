import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Skincare extends StatelessWidget {
  const Skincare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skincare'),
        centerTitle: true,
      ),
      body: SfPdfViewer.asset("assets/images/pdf/skincare.pdf"),
    );
  }
}
