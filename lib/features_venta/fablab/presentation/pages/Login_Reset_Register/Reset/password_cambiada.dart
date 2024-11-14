
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Login/login.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';

class PasswordCambiada extends StatelessWidget {
  const PasswordCambiada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[0],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Icon-header.png'),
                const SizedBox(height: 100),
                Icon(Icons.check_circle,
                    size: 100, color: coloresPersonalizados[2]),
                Text(
                  "Exitoso",
                  style: TextStyle(
                    fontSize: 40,
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
                const SizedBox(height: 100),
                LargeButton(
                  texto: 'Continuar',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
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
