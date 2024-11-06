import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';

@immutable
class EmailInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double width;
  final double height;
  final bool obscureText;

  const EmailInput({
    super.key,
    required this.controller,
    this.obscureText = false,
    required this.hintText,
    this.width = 300, // Valor por defecto para el ancho
    this.height = 40, // Valor por defecto para la altura
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: height,
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          hintText: hintText,
          hintStyle: TextStyle(color: coloresPersonalizados[3]),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: coloresPersonalizados[3]),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: coloresPersonalizados[3]),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
        style: TextStyle(
          color: coloresPersonalizados[3],
          decoration: TextDecoration.none, // Asegura que no haya subrayado
        ),
      ),
    );
  }
}
