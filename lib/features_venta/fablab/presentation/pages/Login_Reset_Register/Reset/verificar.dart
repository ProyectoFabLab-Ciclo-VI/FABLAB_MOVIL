import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/restablecer_password.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/inputs/inputs_verificacion.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Verificar extends StatelessWidget {
  const Verificar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: coloresPersonalizados[1],
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
                      icon:
                          const Icon(Icons.keyboard_double_arrow_left_rounded),
                      iconSize: 0.4.dp,
                      color: coloresPersonalizados[5],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Image.asset(
                    'assets/images/Icon-header.png',
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Revisa tu correo electrónico",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: coloresPersonalizados[5],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "Enviamos enlace de reinicio de contraseña a tu correo electrónico.",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: coloresPersonalizados[5],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EmailVerificacion(
                        controller: TextEditingController(),
                      ),
                      EmailVerificacion(
                        controller: TextEditingController(),
                      ),
                      EmailVerificacion(
                        controller: TextEditingController(),
                      ),
                      EmailVerificacion(
                        controller: TextEditingController(),
                      ),
                      EmailVerificacion(
                        controller: TextEditingController(),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  LargeButton(
                      texto: 'Verificar Codigo',
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Restablecerpassword()))
                          },
                      indiceColorFondo: 3,
                      indiceColorTexto: 4),
                  const SizedBox(height: 20),
                  Text(
                    '¿Aún no has recibido el correo electrónico?',
                    style: TextStyle(
                      color: coloresPersonalizados[5],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Reenviar correo electrónico',
                        style: TextStyle(
                          color: coloresPersonalizados[5],
                          fontSize: 16, // Ajusta el tamaño si es necesario
                        ),
                      ),
                      const SizedBox(
                          height: 0), // Espacio entre el texto y la línea
                      Container(
                        height: 0.5, // Grosor de la línea
                        width: 200, // Ancho de la línea, ajusta según necesites
                        color: Colors.white, // Color de la línea
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
