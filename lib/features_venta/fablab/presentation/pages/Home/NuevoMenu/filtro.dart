import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FiltroMenu extends StatelessWidget {
  final String text1;
  final int colortext;
  final int colorfondo;
  const FiltroMenu({super.key, required this.text1, required this.colortext, required this.colorfondo});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: coloresPersonalizados[colorfondo],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: coloresPersonalizados[9], width: 1)),
      padding:
          EdgeInsets.only(left: screenWidth * 0.02, right: screenWidth * 0.02),
      height: double.infinity,
      child: Center(
        child: Text(text1,
            style: TextStyle(
                color: coloresPersonalizados[colortext],
                fontFamily: 'SpaceGrotesk',
                fontSize: 16.6.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
