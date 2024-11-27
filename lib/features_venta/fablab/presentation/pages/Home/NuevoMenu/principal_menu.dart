import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/card_nuevo_menu.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/filtro.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/menu_context_grafica.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/appbar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/menu_drawer.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/navbarinferior.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


   

    return Scaffold(
      drawer: const Menudrawer(),
      appBar: const AppBarCompra(intColor: 7),
      body: SafeArea(
          child: Container(
        color: coloresPersonalizados[7],
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Busqueda
            Padding(
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
                        child:
                            Icon(Icons.search, color: coloresPersonalizados[7]),
                      ),
                      contentPadding: const EdgeInsets.only(left: 20)),
                ),
              ),
            ),
            //Seccion de filtro
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.039,
                  left: screenWidth * 0.039,
                  top: screenHeight * 0.025),
              child: Container(
                width: double.infinity,
                color: coloresPersonalizados[6],
                height: 6.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.028),
                          child: const FiltroMenu(
                              text1: 'Todos', colortext: 3, colorfondo: 1)),
                      Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.03),
                          child: const FiltroMenu(
                            text1: 'Animales',
                            colorfondo: 3,
                            colortext: 4,
                          )),
                      Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.03),
                          child: const FiltroMenu(
                            text1: 'Espadas',
                            colorfondo: 3,
                            colortext: 4,
                          )),
                      Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.03),
                          child: const FiltroMenu(
                            text1: 'Mascaras',
                            colorfondo: 3,
                            colortext: 4,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            //Letra de productos destacadoss
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.039,
                  left: screenWidth * 0.039,
                  top: screenHeight * 0.025,
                  bottom: screenHeight * 0.025),
              child: SizedBox(
                width: double.infinity,
                height: 5.h,
                child: Text(
                  'Productos destacados',
                  style: TextStyle(
                    color: coloresPersonalizados[4],
                    fontFamily: 'JockeyOne',
                    fontSize: 21.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            //Productos destacados
            const Expanded(
                child: CargaHome ()),
          ],
        ),
      )),
      bottomNavigationBar: const NAVBARINFERIOR(),
    );
  }
}
