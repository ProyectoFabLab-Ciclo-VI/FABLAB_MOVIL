import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/password_cambiada.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/inputs/inputs_movil_email.dart';
import 'package:flutter/material.dart';

class Restablecerpassword extends StatelessWidget {
  const Restablecerpassword({super.key});

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
                const SizedBox(height: 20),
                Image.asset('assets/images/Icon-header.png'),
                const SizedBox(height: 100),
                Text(
                  "Establecer una nueva contraseña",
                  style: TextStyle(
                    fontSize: 24,
                    color: coloresPersonalizados[5],
                  ),
                ),
                const SizedBox(height: 8),
                // Text(
                //   "Crea una nueva contraseña. Asegúrese de que sea diferente del anterior por seguridad",
                //   style: TextStyle(
                //     fontSize: 14,
                //     color: coloresPersonalizados[5],
                //   ),
                // ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        color: coloresPersonalizados[5],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                EmailInput(
                  controller: TextEditingController(),
                  hintText: 'Enter your ne password',
                  width: 350,
                  height: 42,
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        color: coloresPersonalizados[5],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                EmailInput(
                  controller: TextEditingController(),
                  hintText: 'Re-enter your passord',
                  width: 350,
                  height: 42,
                ),
                const SizedBox(height: 70),
                LargeButton(
                  texto: 'Actualizar contraseña',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordCambiada(),
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
