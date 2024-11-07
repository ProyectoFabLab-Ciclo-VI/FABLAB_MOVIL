import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppBarCompra extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCompra({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      title: Container(
          padding: EdgeInsets.only(right: screenWidth * 0.093),
          child: Center(child: Image.asset('assets/images/logo-azul.png'))),
      backgroundColor: coloresPersonalizados[7],
      toolbarHeight: 10.h,
    );
  }
}
