import 'package:flutter/material.dart';

class CuadroLargo extends StatelessWidget {
  final String texto;
  const CuadroLargo({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: const Color(0xFF0D1B31),
          elevation: 5,
          child: SizedBox(
            width: 250,
            height: 50,
            child: Center(
              child: Text(
                texto,
                style: const TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
