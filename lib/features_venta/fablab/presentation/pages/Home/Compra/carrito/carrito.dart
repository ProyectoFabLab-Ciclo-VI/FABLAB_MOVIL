import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/carrito/carrito_info.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/carrito/pago_total.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/appbar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/menu_drawer.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/navbarinferior.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CarroCompra extends StatelessWidget {
  const CarroCompra({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: coloresPersonalizados[7],
      drawer: const Menudrawer(),
      appBar: const AppBarCompra(intColor: 7),
      body: SafeArea(
        child: Column(
          //Contenedor Super Padre
          children: [
            Expanded(
              child: SizedBox(
                  height: screenHeight * 0.69,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.045,
                      right: screenWidth * 0.045,
                    ),
                    child: Column(
                      children: [
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
                                    borderSide: BorderSide(
                                        color: coloresPersonalizados[6]),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: coloresPersonalizados[6]),
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
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.0),
                                    child: Icon(Icons.search,
                                        color: coloresPersonalizados[7]),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(left: 20)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: screenHeight * 0.02,
                            ),
                            child: Text('Carrito de Compras',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 23.sp,
                                  fontFamily: 'JockeyOne',
                                )),
                          ),
                        ),
                        Expanded(
                            child: ListView(
                          children: const [
                            CentroCarrito(),
                            CentroCarrito(),
                            CentroCarrito(),
                            CentroCarrito(),
                          ],
                        )),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              width: double.infinity,
              height: 7.h,
              child: PagoTotal(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NAVBARINFERIOR(),
    );
  }
}
