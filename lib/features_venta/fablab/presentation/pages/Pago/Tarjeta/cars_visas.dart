import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/media_query.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardsVisas extends StatelessWidget {
  final String imgURL;
  final String nombreText;
  const CardsVisas({super.key, required this.imgURL, required this.nombreText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: screenWidth(context) * 0.04,
      ),
      child: SizedBox(
        height: double.infinity,
        width: 22.w,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 10.1.h,
              child: Card(
                color: coloresPersonalizados[13],
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(imgURL),
              ),
            ),
            Text(nombreText,
                style: TextStyle(
                  fontSize: 15.5.sp,
                  color: coloresPersonalizados[12],
                  // fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
