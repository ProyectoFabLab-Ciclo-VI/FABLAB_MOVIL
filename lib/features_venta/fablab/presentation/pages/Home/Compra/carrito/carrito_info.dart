import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CentroCarrito extends StatelessWidget {
  const CentroCarrito({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.01,
      ),
      child: SizedBox(
        // Contenedor Padre
        width: double.infinity,
        height: 18.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 14.h,
              width: Adaptive.w(28),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/images/menu/gato.png',
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                width: screenWidth * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 3.5.h,
                      child: Text(
                        'Escultura de un Gato',
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 0.26.dp,
                          fontFamily: 'JockeyOne',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 3.h,
                      child: Text(
                        'Modelo 3D detallado para impresión 3D',
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 0.22.dp,
                          color: coloresPersonalizados[10],
                          overflow: TextOverflow.ellipsis,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 4.h,
                      child: Text(
                        "s/.20",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: coloresPersonalizados[4],
                          fontSize: 0.32.dp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 5.h,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.delete,
                          size: 7.w,
                          color: coloresPersonalizados[0],
                        ),
                      )),
                  SizedBox(
                    width: double.infinity,
                    height: 5.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            radius: 15.sp,
                            backgroundColor: coloresPersonalizados[0],
                            child: Icon(
                              Icons.remove,
                              color: coloresPersonalizados[5],
                            )),
                        Text(
                          ' 0 ',
                          style: TextStyle(
                            fontSize: 17.sp,
                          ),
                        ),
                        CircleAvatar(
                            radius: 15.sp,
                            backgroundColor: coloresPersonalizados[0],
                            child: Icon(
                              Icons.add,
                              color: coloresPersonalizados[5],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
