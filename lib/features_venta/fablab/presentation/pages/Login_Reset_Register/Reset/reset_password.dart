import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/verificar.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/inputs/inputs_movil_email.dart';
import 'package:flutter/material.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[0],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.keyboard_double_arrow_left_rounded),
                    iconSize: 50,
                    color: coloresPersonalizados[5],
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset('assets/images/Icon-header.png'),
                const SizedBox(height: 100),
                Text(
                  "Has Olvidado tu Contraseña",
                  style: TextStyle(
                    fontSize: 24,
                    color: coloresPersonalizados[5],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Please enter your email to reset the password",
                  style: TextStyle(
                    fontSize: 14,
                    color: coloresPersonalizados[5],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Ingresa tu Email",
                      style: TextStyle(
                        color: coloresPersonalizados[5],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                EmailInput(
                  controller: TextEditingController(),
                  hintText: 'Enter your email',
                  width: 350,
                  height: 42,
                ),
                const SizedBox(height: 100),
                LargeButton(
                  texto: 'Reset Password',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Verificar(),
                      ),
                    );
                  },
                  indiceColorFondo: 1,
                  indiceColorTexto: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
