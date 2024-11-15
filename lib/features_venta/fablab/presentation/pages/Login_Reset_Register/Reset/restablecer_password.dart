import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Reset/password_cambiada.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/inputs/inputs_movil_email.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Restablecerpassword extends StatelessWidget {
  const Restablecerpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[1],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(6.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 3.h),
                Image.asset('assets/images/Icon-header.png'),
                SizedBox(height: 10.h),
                Text(
                  "Establecer una nueva contraseña",
                  style: TextStyle(
                    fontSize: 19.sp,
                    color: coloresPersonalizados[5],
                  ),
                ),
                SizedBox(height: 1.h),
                SizedBox(height: 10.h),
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
                SizedBox(height: 1.h),
                EmailInput(
                  controller: TextEditingController(),
                  hintText: 'Enter your ne password',
                  width: 90.w,
                  height: 10.h,
                ),
                SizedBox(height: 6.h),
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
                SizedBox(height: 1.h),
                EmailInput(
                  controller: TextEditingController(),
                  hintText: 'Re-enter your passord',
                  width: 90.w,
                  height: 10.h,
                ),
                SizedBox(height: 13.h),
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
                  indiceColorFondo: 3,
                  indiceColorTexto: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
