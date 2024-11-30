import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/card_nuevo_menu.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/filtro.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/menu_context_grafica.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/appbar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/menu_drawer.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/navbarinferior.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  
  
  // Estado para el filtro seleccionado
  String selectedFilter = 'Todos'; // El filtro inicial es 'Todos'
  
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
            // Búsqueda
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
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
                    contentPadding: const EdgeInsets.only(left: 20),
                  ),
                ),
              ),
            ),
            // Sección de filtro
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.039,
                left: screenWidth * 0.039,
                top: screenHeight * 0.025,
              ),
              child: Container(
                width: double.infinity,
                color: coloresPersonalizados[6],
                height: 6.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Filtro "Todos"
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.028),
                        child: FiltroMenu(
                          text1: 'Todos',
                          colortext: selectedFilter == 'Todos'
                              ? 3 // Texto blanco si seleccionado
                              : 4, // Texto blanco si no seleccionado
                          colorfondo: selectedFilter == 'Todos'
                              ? 1 // fondo blanco si seleccionado
                              : 3, // Fondo no seleccionado
                          onTap: () {
                            setState(() {
                              selectedFilter =
                                  'Todos'; // Cambiar el filtro seleccionado
                            });
                          },
                        ),
                      ),
                      // Filtro "Nuevos"
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.03),
                        child: FiltroMenu(
                          text1: 'Nuevos',
                          colorfondo: selectedFilter == 'Nuevos' ? 1 : 3,
                          colortext: selectedFilter == 'Nuevos' ? 3 : 4,
                          onTap: () {
                            setState(() {
                              selectedFilter =
                                  'Nuevos'; // Cambiar el filtro seleccionado
                            });
                          },
                        ),
                      ),
                      // Filtro "Animales"
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.03),
                        child: FiltroMenu(
                          text1: 'Animales',
                          colorfondo: selectedFilter == 'Animales' ? 1 : 3,
                          colortext: selectedFilter == 'Animales' ? 3 : 4,
                          onTap: () {
                            setState(() {
                              selectedFilter =
                                  'Animales'; // Cambiar el filtro seleccionado
                            });
                          },
                        ),
                      ),
                      // Filtro "Espadas"
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.03),
                        child: FiltroMenu(
                          text1: 'Espadas',
                          colorfondo: selectedFilter == 'Espadas' ? 1 : 3,
                          colortext: selectedFilter == 'Espadas' ? 3 : 4,
                          onTap: () {
                            setState(() {
                              selectedFilter =
                                  'Espadas'; // Cambiar el filtro seleccionado
                            });
                          },
                        ),
                      ),
                      // Filtro "Mascaras"
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.03),
                        child: FiltroMenu(
                          text1: 'Mascaras',
                          colorfondo: selectedFilter == 'Mascaras' ? 1 : 3,
                          colortext: selectedFilter == 'Mascaras' ? 3 : 4,
                          onTap: () {
                            setState(() {
                              selectedFilter =
                                  'Mascaras'; // Cambiar el filtro seleccionado
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Letra de productos destacados
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
            // Productos destacados
            const Expanded(child: CargaHome()),
          ],
        ),
      )),
      bottomNavigationBar: const NAVBARINFERIOR(),
    );
  }
}
