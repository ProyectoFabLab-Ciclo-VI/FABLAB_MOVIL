import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/media_query.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TipoMaterialUsar extends StatelessWidget {
  const TipoMaterialUsar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 14.h,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth(context) * 0.01,
            right: screenWidth(context) * 0.01,
            bottom: screenHeight(context) * 0.01,
            top: screenHeight(context) * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                color: coloresPersonalizados[3],
                borderRadius: BorderRadius.circular(20),
              ),
              height: 10.h,
              width: Adaptive.w(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.description,
                    size: 25.sp,
                  ),
                  const Text('Papel')
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: coloresPersonalizados[3],
                borderRadius: BorderRadius.circular(20),
              ),
              height: 10.h,
              width: Adaptive.w(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.texture,
                    size: 25.sp,
                  ),
                  const Text('Nylon')
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: coloresPersonalizados[3],
                borderRadius: BorderRadius.circular(20),
              ),
              height: 10.h,
              width: Adaptive.w(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.layers,
                    size: 25.sp,
                  ),
                  const Text('Ceramica')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
