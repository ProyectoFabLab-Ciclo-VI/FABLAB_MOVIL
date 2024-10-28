import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Register/verificar_register.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/inputs/inputs_movil_email.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        EmailInput(
          controller: TextEditingController(),
          hintText: 'Nombre',
          width: 350,
          height: 50,
        ),
        const SizedBox(height: 10),
        EmailInput(
          controller: TextEditingController(),
          hintText: 'Apellido',
          width: 350,
          height: 50,
        ),
        const SizedBox(height: 10),
        EmailInput(
          controller: TextEditingController(),
          hintText: 'Username',
          width: 350,
          height: 50,
        ),
        const SizedBox(height: 10),
        EmailInput(
          controller: TextEditingController(),
          hintText: 'Email',
          width: 350,
          height: 50,
          obscureText: true, // Ocultar el texto de la contraseña
        ),
        const SizedBox(height: 10),
        EmailInput(
          controller: TextEditingController(),
          hintText: 'Password',
          width: 350,
          height: 50,
          obscureText: true, // Ocultar el texto de la contraseña
        ),
        const SizedBox(height: 10),
        EmailInput(
          controller: TextEditingController(),
          hintText: 'Fecha de nacimiento',
          width: 350,
          height: 50,
          obscureText: true, // Ocultar el texto de la contraseña
        ),
        const SizedBox(height: 20),
        LargeButton(
          texto: 'Registrarse',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VerificarRegister()));
            // Acción de registro
          },
          indiceColorFondo: 1,
          indiceColorTexto: 5,
        ),
      ],
    );
  }
}
