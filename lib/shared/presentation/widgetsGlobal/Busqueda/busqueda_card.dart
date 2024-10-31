import 'package:flutter/material.dart';

class Busqueda extends StatelessWidget {
  const Busqueda({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200], // Color de fondo
          borderRadius: BorderRadius.circular(20), // Borde redondeado
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar', // Texto de pista
            prefixIcon: Icon(Icons.search), // Icono de búsqueda
            border: InputBorder.none, // Sin borde
            contentPadding:
                EdgeInsets.symmetric(vertical: 12), // Espaciado vertical
          ),
        ),
      ),
    );
  }
}
