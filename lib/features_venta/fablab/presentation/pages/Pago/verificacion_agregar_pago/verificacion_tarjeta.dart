import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/Tarjeta/metodo_pago.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/verificacion_agregar_pago/codigos_verificacion.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/Utils/media_query.dart';
import 'package:fab_lab_upeu/shared/Utils/textos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sizer/sizer.dart';

class VerificacionTarjeta extends StatefulWidget {
  const VerificacionTarjeta({super.key});

  @override
  State<VerificacionTarjeta> createState() => _VerificacionTarjetaState();
}

class _VerificacionTarjetaState extends State<VerificacionTarjeta> {
  String _codigoIngresado = ""; // Variable para guardar el código

  void actualizarCodigo(String codigo) {
    setState(() {
      _codigoIngresado = codigo; // Actualiza el código
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[3],
      appBar: AppBar(
        backgroundColor: coloresPersonalizados[3],
        title: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(right: screenWidth(context) * 0.15),
            child: Text(
              'VERIFICAR TARJETA',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21.0.sp,
                  fontFamily: 'JockeyOne'),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: screenHeight(context) * 0.01,
              bottom: screenHeight(context) * 0.02,
              left: screenWidth(context) * 0.04,
              right: screenWidth(context) * 0.04,
            ),
            child: SizedBox(
                width: double.infinity,
                height: 80.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
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
                                child: Text(
                                    'Enviamos código de 6 digitos a su correo',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.0.sp,
                                    ))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 20.h,
                      child: CodigoVerificacion(
                        onCodigoIngresado: actualizarCodigo, // Callback
                      ),
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      onPressed: () {
                        if (_codigoIngresado.length == 6) {
                          print("Código completo ingresado: $_codigoIngresado");

                          // Navegar a la siguiente página
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddTarjeta(),
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
                        minimumSize: Size(
                            screenWidth(context), screenWidth(context) * 0.12),
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
        ),
      ),
    );
  }
}
