import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/media_query.dart';
import 'package:fab_lab_upeu/shared/textos.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetallesPrecioAgregar extends StatelessWidget {
  const DetallesPrecioAgregar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: coloresPersonalizados[3],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: screenWidth(context) * 0.09,
          right: screenWidth(context) * 0.09,
          bottom: screenHeight(context) * 0.03,
          top: screenHeight(context) * 0.03,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Escultura de un Gato',
                style: TextStyle(
                  color: coloresPersonalizados[4],
                  fontSize: 22.5.sp,
                  fontFamily: 'JockeyOne',
                ),
                textAlign: TextAlign.left),
            const Row(),
            Text(
              'Escultura de un gato para impresión 3D.\n Altura del Modelo 100 mm.\n Representa un gato místico con un aspecto adorable y un toque de misterio',
              style:
                  TextStyle(fontSize: 17.sp, color: coloresPersonalizados[10]),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 5.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                    screenWidth(context) * 0.4, screenHeight(context) * 0.068),
                backgroundColor: coloresPersonalizados[0],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textoRegularBlanco(
                    'Agregar al carrito',
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: coloresPersonalizados[3],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
