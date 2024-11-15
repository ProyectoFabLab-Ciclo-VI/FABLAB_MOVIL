import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/verificar.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/inputs/inputs_movil_email.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[1],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.keyboard_double_arrow_left_rounded),
                    iconSize: 0.4.dp,
                    color: coloresPersonalizados[5],
                  ),
                ),
                SizedBox(height: 3.h),
                Image.asset('assets/images/Icon-header.png'),
                SizedBox(height: 10.h),
                Text(
                  "Has Olvidado tu Contraseña",
                  style: TextStyle(
                    fontSize: 21.sp,
                    color: coloresPersonalizados[5],
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  "Please enter your email to reset the password",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: coloresPersonalizados[5],
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(right: 57.w),
                  child: Text(
                    "Ingresa tu Email",
                    style: TextStyle(
                      color: coloresPersonalizados[5],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                EmailInput(
                  controller: TextEditingController(),
                  hintText: 'Enter your email',
                  width: 350,
                  height: 42,
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 60.w,
                  height: 6.h,
                  child: LargeButton(
                    texto: 'Recuperar Contraseña',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Verificar(),
                        ),
                      );
                    },
                    indiceColorFondo: 3,
                    indiceColorTexto: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
