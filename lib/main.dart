import 'package:flutter/material.dart';
import 'features_venta/fablab/presentation/pages/page1.dart'; // Asegúrate de tener el path correcto.

void main() {
  runApp(const MyApp()); // Invoca el widget principal
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(), // Define tu pantalla principal
    );
  }
}
