import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/Tarjeta/metodo_pago.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/verificacion_agregar_pago/codigos_verificacion.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/media_query.dart';
import 'package:fab_lab_upeu/shared/textos.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VerificacionTarjeta extends StatelessWidget {
  const VerificacionTarjeta({super.key});

  @override
  Widget build(BuildContext context) {
    final codigoVerificacionKey = GlobalKey<CodigoVerificacionState>();
    return Scaffold(
      backgroundColor: coloresPersonalizados[3],
      appBar: AppBar(
        backgroundColor: coloresPersonalizados[3],
        title: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(right: screenWidth(context) * 0.15),
            child: Text(
              'VEREFICAR TARJETA',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0.sp,
                  fontFamily: 'JockeyOne'),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight(context) * 0.01,
          bottom: screenHeight(context) * 0.02,
          left: screenWidth(context) * 0.04,
          right: screenWidth(context) * 0.04,
        ),
        child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 4.h,
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Entrar a su correo',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0.sp,
                          ))),
                ),
                SizedBox(
                  height: 5.h,
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Enviamos código de 6 digitos a su correo',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0.sp,
                          ))),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 20.h,
                  child: CodigoVerificacion(
                      key: codigoVerificacionKey), // Asocia el GlobalKey aquí
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                ElevatedButton(
                  onPressed: () {
                    final codigo = codigoVerificacionKey.currentState
                            ?.getCodigoIngresado() ??
                        "";

                    // Verificar si todos los campos están llenos (asumimos 6 dígitos)
                    if (codigo.length == 6) {
                      print("Código completo ingresado: $codigo");

                      // Navegar a la siguiente página
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AddTarjeta(), // Reemplaza con tu nueva página
                        ),
                      );
                    } else {
                      // Mostrar un mensaje si el código está incompleto
                      print("Por favor, ingrese el código completo.");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text(
                                "Por favor, complete todos los campos del código")),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(screenWidth(context), screenWidth(context) * 0.12),
                    backgroundColor: coloresPersonalizados[0],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: textoRegularBlanco('Verificar'),
                )
              ],
            )),
      ),
    );
  }
}
