import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Login/login_second.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';

class CreacionExitoso extends StatelessWidget {
  const CreacionExitoso({super.key});

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
                  "Exitososss",
                  style: TextStyle(
                    fontSize: 40,
                    color: coloresPersonalizados[5],
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  "Su cuenta ha sido creada exitosamente",
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
                        builder: (context) => const LoginLast(),
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
