import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/card_nuevo_menu.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/menu_drawer.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/navbarinferior.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Calcula el childAspectRatio basado en el ancho y altura de la pantalla
    double aspectRatio = screenWidth / (screenHeight / 2);

    return Scaffold(
      drawer: const Menudrawer(),
      appBar: AppBar(
        title: Container(
            padding: EdgeInsets.only(right: screenWidth * 0.093),
            child: Center(child: Image.asset('assets/images/logo-azul.png'))),
        backgroundColor: coloresPersonalizados[7],
        toolbarHeight: 10.h,
      ),
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
                        child: Container(
                          decoration: BoxDecoration(
                              color: coloresPersonalizados[8],
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: coloresPersonalizados[9], width: 1)),
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.02,
                              right: screenWidth * 0.02),
                          height: double.infinity,
                          child: Center(
                            child: Text('Todos',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SpaceGrotesk',
                                    fontSize: 16.6.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.03),
                        child: Container(
                          decoration: BoxDecoration(
                              color: coloresPersonalizados[3],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.02,
                              right: screenWidth * 0.02),
                          height: double.infinity,
                          child: Center(
                            child: Text('Animales',
                                style: TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    color: coloresPersonalizados[4],
                                    fontSize: 16.6.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.03),
                        child: Container(
                          decoration: BoxDecoration(
                              color: coloresPersonalizados[3],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.02,
                              right: screenWidth * 0.02),
                          height: double.infinity,
                          child: Center(
                            child: Text('Espadas',
                                style: TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    color: coloresPersonalizados[4],
                                    fontSize: 16.6.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.03),
                        child: Container(
                          decoration: BoxDecoration(
                              color: coloresPersonalizados[3],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.02,
                              right: screenWidth * 0.02),
                          height: double.infinity,
                          child: Center(
                            child: Text('Mascaras',
                                style: TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    color: coloresPersonalizados[4],
                                    fontSize: 16.6.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
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
            Expanded(
                child: GridView.builder(
                    padding: const EdgeInsets.all(8),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      childAspectRatio: aspectRatio,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CardMenuNuevo();
                    })),
          ],
        ),
      )),
      bottomNavigationBar: const NAVBARINFERIOR(),
    );
  }
}
