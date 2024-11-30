import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/detalles/descripcion_precio_agregar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/detalles/tipo_materiales_usar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/principal_menu.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/Utils/media_query.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Descripcioncompra extends StatefulWidget {
  final String imagen_1;
  final double precio;
  final String nombre;
  final String descripcion;
  const Descripcioncompra(
      {super.key,
      required this.imagen_1,
      required this.precio,
      required this.nombre,
      required this.descripcion});

  @override
  State<Descripcioncompra> createState() => _DescripcioncompraState();
}

class _DescripcioncompraState extends State<Descripcioncompra> {
  int _currentIndex = 0;
  final List<String> imagePaths = [];
  @override
  void initState() {
    super.initState();
    // Agregar la misma imagen 4 veces al carrusel
    imagePaths.addAll(
        [widget.imagen_1, widget.imagen_1, widget.imagen_1, widget.imagen_1]);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth2 = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: coloresPersonalizados[7],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MenuPrincipal()),
            );
          },
        ),
        scrolledUnderElevation: 0,
        title: Container(
            padding: EdgeInsets.only(right: screenWidth2 * 0.093),
            child: Center(child: Image.asset('assets/images/logo-azul.png'))),
        backgroundColor: coloresPersonalizados[7],
        toolbarHeight: 10.h,
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
                            return Image.network(
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
            Expanded(
                child: DetallesPrecioAgregar(
              imagen_1: widget.imagen_1,
              precio: widget.precio,
              nombre: widget.nombre,
              descripcion: widget.descripcion,
            ))
          ],
        ),
      ),
    );
  }
}
