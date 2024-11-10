import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LargeButton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  final int indiceColorFondo;
  final int indiceColorTexto;

  const LargeButton({
    super.key,
    required this.texto,
    required this.onPressed,
    required this.indiceColorFondo,
    required this.indiceColorTexto,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            coloresPersonalizados[indiceColorFondo], // Color de fondo del botón
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Radio del botón
        ),
      ),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 17.sp,
          color: coloresPersonalizados[indiceColorTexto],
        ), // Asegura que el texto tenga el color correcto
      ),
    );
  }
}
