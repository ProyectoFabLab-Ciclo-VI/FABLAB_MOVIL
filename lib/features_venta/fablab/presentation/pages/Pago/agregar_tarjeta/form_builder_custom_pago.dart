import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/Utils/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderCustomPago extends StatelessWidget {
  const FormBuilderCustomPago({
    super.key,
    required this.name,
    required this.obscureText,
    required this.hintText,
    this.validator,
    this.icon, // Icono opcional
    required this.keyType,
  });

  final String name;
  final bool obscureText;
  final String hintText;
  final String? Function(String?)? validator;
  final IconData? icon; // Puede ser null
  final TextInputType keyType;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: name,
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyType,
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.red, fontSize: 11),
        contentPadding: EdgeInsets.only(
            top: screenHeight(context) * 0.02,
            left: screenWidth(context) * 0.04),
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: coloresPersonalizados[10], width: 1),
        ),
        hintStyle: TextStyle(color: coloresPersonalizados[10]),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: coloresPersonalizados[10], width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: icon != null
            ? Icon(icon, color: coloresPersonalizados[10])
            : null, // Muestra icono solo si no es null
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
