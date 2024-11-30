import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/Tarjeta/metodo_pago.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ModalPago extends StatelessWidget {
  final double precioTotal; // Aceptamos precioTotal como parámetro

  const ModalPago({super.key, required this.precioTotal}); // Constructor para recibir el precio total

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: 18.h,
        child: Padding(
          padding: EdgeInsets.only(
            top: 2.h,
            left: 4.w,
            right: 4.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 3.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal',
                        style: TextStyle(
                          color: coloresPersonalizados[4],
                          fontSize: 16.sp,
                        )),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text('PEN ${precioTotal.toStringAsFixed(2)}', // Muestra el precio total
                        style: TextStyle(
                          color: coloresPersonalizados[4],
                          fontSize: 16.sp,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Envio',
                        style: TextStyle(
                          color: coloresPersonalizados[4],
                          fontSize: 16.sp,
                        )),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text('PEN 5.00',
                        style: TextStyle(
                          color: coloresPersonalizados[4],
                          fontSize: 16.sp,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                        style: TextStyle(
                          color: coloresPersonalizados[4],
                          fontSize: 20.sp,
                          fontFamily: 'SpaceGrotesk',
                          fontWeight: FontWeight.bold,
                        )),
                    Text('PEN ${(precioTotal + 5.00).toStringAsFixed(2)}', // Total final (con envío)
                        style: TextStyle(
                          color: coloresPersonalizados[4],
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      width: 30.w,
                      height: 3.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'Pagar',
                            style: TextStyle(color: coloresPersonalizados[3]),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  AddTarjeta(precioTotal : precioTotal)));
                          }),
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
