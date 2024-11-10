import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/media_query.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BotonAgregarTarjeta extends StatelessWidget {
  final VoidCallback onPressed;
  const BotonAgregarTarjeta({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.only(
          right: screenWidth(context) * 0.04,
          bottom: screenHeight(context) * 0.01,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: coloresPersonalizados[13],
            borderRadius: BorderRadius.circular(12),
          ),
          width: double.infinity,
          height: 7.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: coloresPersonalizados[0],
                size: 0.32.dp,
              ),
              Text(
                ' AGREGAR',
                style: TextStyle(
                  color: coloresPersonalizados[0],
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
