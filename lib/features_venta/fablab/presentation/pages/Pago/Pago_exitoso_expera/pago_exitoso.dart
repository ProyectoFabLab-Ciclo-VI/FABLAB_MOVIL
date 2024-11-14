import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/principal_menu.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PagoExitoso extends StatelessWidget {
  const PagoExitoso({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/logo-azul.png'),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 50.h,
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 0.7.dp,
                    color: coloresPersonalizados[1],
                  ),
                  Text(
                    'Pago exitoso',
                    style: TextStyle(
                        fontSize: 23.sp, color: coloresPersonalizados[4]),
                  ),
                  Text(
                    'Gracias por su preferencia',
                    style: TextStyle(fontSize: 18.sp, color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 5.5.h,
              child: LargeButton(
                  texto: 'Finalizar',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MenuPrincipal()));
                  },
                  indiceColorFondo: 1,
                  indiceColorTexto: 3),
            )
          ],
        ),
      )),
    );
  }
}
