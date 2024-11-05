import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderCustom extends StatelessWidget {
  const FormBuilderCustom(
      {super.key,
      required this.name,
      required this.obscureText,
      required this.hintText,
      this.validator,
      required this.icon,
      required this.keyType});

  final String name;
  final bool obscureText;
  final String hintText;
  final String? Function(String?)? validator;
  final IconData icon;
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
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: const TextStyle(color: Colors.deepPurple),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color.fromARGB(255, 32, 20, 53), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: Icon(icon, color: Colors.deepPurple),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
