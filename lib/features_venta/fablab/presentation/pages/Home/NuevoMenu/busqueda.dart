import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Busqueda extends StatelessWidget {
  const Busqueda({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      //Busqueda
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth *
              0.08), // Usando screenWidth // 5% del ancho de la pantalla
      child: SizedBox(
        width: double.infinity,
        height: 5.5.h,
        child: TextField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: coloresPersonalizados[6]),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: coloresPersonalizados[6]),
                borderRadius: BorderRadius.circular(30),
              ),
              fillColor: coloresPersonalizados[3],
              filled: true,
              hintText: 'Buscar...',
              hintStyle: TextStyle(
                color: coloresPersonalizados[7],
                fontFamily: 'SpaceGrotesk',
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.0),
                child: Icon(Icons.search, color: coloresPersonalizados[7]),
              ),
              contentPadding: const EdgeInsets.only(left: 20)),
        ),
      ),
    );
  }
}
