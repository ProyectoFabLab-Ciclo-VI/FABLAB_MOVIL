import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/reset_password.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/home.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/inputs/inputs_movil_email.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        EmailInput(
          controller: TextEditingController(),
          hintText: 'Username',
          width: 350,
          height: 50,
        ),
        const SizedBox(height: 60),
        EmailInput(
          controller: TextEditingController(),
          hintText: 'Contraseña',
          width: 350,
          height: 50,
          obscureText: true, // Ocultar el texto de la contraseña
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Resetpassword(),
              ), // Navegar a la página de recuperación de contraseña
            );
          },
          child: Align(
            alignment: Alignment.centerRight, // Alinea el texto a la derecha
            child: Text(
              '¿Olvidaste tu contraseña?',
              style: TextStyle(
                color: coloresPersonalizados[3],
              ), // Ajusta el estilo según sea necesario
            ),
          ),
        ),
        const SizedBox(height: 50),
        LargeButton(
          texto: 'Ingresar',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PrincipalMenu(),
              ),
            );
          },
          indiceColorFondo: 1,
          indiceColorTexto: 3,
        ),
      ],
    );
  }
}
