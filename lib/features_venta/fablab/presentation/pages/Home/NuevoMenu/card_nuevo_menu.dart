import 'dart:convert';  // Para convertir la cadena base64
import 'dart:typed_data'; // Para manejar el Uint8List

import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/Compra/detalles/buy_detalles.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardMenuNuevo extends StatelessWidget {
  final Map<String, String> data;
  const CardMenuNuevo({super.key, required this.data, required this.modelosPredefinido});

  final ModelosPredefinido modelosPredefinido;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Convertir la imagen base64 a Uint8List
    Uint8List imageBytes = base64Decode(modelosPredefinido.imagen_1);

    return GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Descripcioncompra()))
      },
      child: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.005),
        child: Card(
          color: coloresPersonalizados[3],
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Contenedor de la imagen
              Container(
                width: double.infinity,
                height: 14.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.memory(
                  imageBytes,  // Usamos los bytes de la imagen en base64
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(left: screenWidth * 0.02),
                            height: 4.h,
                            color: coloresPersonalizados[3],
                            child: Text(
                              modelosPredefinido.nombre,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontFamily: 'JockeyOne',
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 2.h,
                            color: coloresPersonalizados[3],
                            padding: EdgeInsets.only(left: screenWidth * 0.02),
                            child: Text(
                              modelosPredefinido.comentario,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: coloresPersonalizados[10],
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 2.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.only(left: screenWidth * 0.02),
                            child: Text(
                              'S/. ${modelosPredefinido.precio}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: coloresPersonalizados[4],
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10.sp),
                      width: Adaptive.w(8),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius: 15.sp,
                          backgroundColor: coloresPersonalizados[11],
                          child: Icon(
                            Icons.favorite,
                            color: coloresPersonalizados[3],
                            size: 17.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
