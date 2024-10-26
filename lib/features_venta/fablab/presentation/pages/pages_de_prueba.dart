import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/WidgetsLogin_Recuperar_Register/inputs_movil_email.dart';
import 'package:flutter/material.dart';

class Pageprueba extends StatelessWidget {
  const Pageprueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: EmailInput(
          controller: TextEditingController(),
          hintText: 'EsauSeLaCome',
        ),
      ),
    );
  }
}
