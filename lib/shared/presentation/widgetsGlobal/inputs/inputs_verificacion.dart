import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';

@immutable
class EmailVerificacion extends StatelessWidget {
  final TextEditingController controller;

  const EmailVerificacion({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 52, // Ancho fijo del cuadro
        maxHeight: 52, // Altura fija del cuadro
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: coloresPersonalizados[5]),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: coloresPersonalizados[5]),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    );
  }
}
