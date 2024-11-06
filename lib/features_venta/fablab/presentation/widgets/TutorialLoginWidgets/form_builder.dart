import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderCustom extends StatelessWidget {
  const FormBuilderCustom({
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
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.red, fontSize: 11),
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: const TextStyle(color: Colors.deepPurple),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 32, 20, 53), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: icon != null
            ? Icon(icon, color: Colors.deepPurple)
            : null, // Muestra icono solo si no es null
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
