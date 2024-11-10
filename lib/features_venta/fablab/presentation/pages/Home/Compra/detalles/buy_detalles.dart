import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/detalles/descripcion_precio_agregar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/detalles/tipo_materiales_usar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/appbar.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/media_query.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Descripcioncompra extends StatefulWidget {
  const Descripcioncompra({super.key});

  @override
  State<Descripcioncompra> createState() => _DescripcioncompraState();
}

class _DescripcioncompraState extends State<Descripcioncompra> {
  int _currentIndex = 0;

  final List<String> imagePaths = [
    'assets/images/menu/gato.png',
    'assets/images/menu/carousel/gato2.png',
    'assets/images/menu/carousel/gato3.png',
    'assets/images/menu/carousel/gato4.png',
    'assets/images/menu/carousel/gato5.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[7],
      appBar: const AppBarCompra(
        intColor: 7
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth(context) * 0.09,
                right: screenWidth(context) * 0.09,
                bottom: screenHeight(context) * 0.03,
              ),
              child: SizedBox(
                width: Adaptive.w(55),
                height: 28.h,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: coloresPersonalizados[3],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: PageView.builder(
                          itemCount: imagePaths.length,
                          onPageChanged: ((index) {
                            setState(() {
                              _currentIndex = index;
                            });
                          }),
                          itemBuilder: (context, index) {
                            return Image.asset(
                              imagePaths[index],
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.high,
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth(context) * 0.09,
                right: screenWidth(context) * 0.09,
                bottom: screenHeight(context) * 0.03,
              ),
              child: const TipoMaterialUsar(),
            ),
            const Expanded(child: DetallesPrecioAgregar())
          ],
        ),
      ),
    );
  }
}
