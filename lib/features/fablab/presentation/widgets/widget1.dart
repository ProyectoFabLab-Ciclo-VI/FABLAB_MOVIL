import 'package:flutter/material.dart';
import '../pages/page1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(), // Define tu pantalla principal
    );
  }
}
