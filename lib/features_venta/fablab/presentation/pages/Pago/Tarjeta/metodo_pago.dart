import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/Pago_exitoso_expera/pago_exitoso.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/Tarjeta/boton_agregar_tarjeta.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/Tarjeta/cars_visas.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/agregar_tarjeta/agregar_tarjeta.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/appbar.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:fab_lab_upeu/shared/Utils/media_query.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/BotonesGeneral/boton_grande.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddTarjeta extends StatelessWidget {
  const AddTarjeta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: coloresPersonalizados[3],
        appBar: const AppBarCompra(intColor: 3),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(
                  bottom: screenHeight(context) * 0.04,
                  left: screenWidth(context) * 0.04,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 6.h,
                      child: Text('Metodos de Pago',
                          style: TextStyle(
                              fontSize: 20.sp,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'JockeyOne')),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 13.5.h,
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CardsVisas(
                              imgURL: 'assets/icons/cash.png',
                              nombreText: 'Cash',
                            ),
                            CardsVisas(
                              imgURL: 'assets/icons/mastercad.png',
                              nombreText: 'Mastercad',
                            ),
                            CardsVisas(
                              imgURL: 'assets/icons/visa.png',
                              nombreText: 'Visa',
                            ),
                            CardsVisas(
                              imgURL: 'assets/icons/paypal2.png',
                              nombreText: 'Paypal',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: screenWidth(context) * 0.04,
                          bottom: screenHeight(context) * 0.02,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: coloresPersonalizados[16],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: double.infinity,
                          height: 10.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Image.asset('assets/icons/card.png')),
                              Text(
                                'Puedes añadir una Visa',
                                style: TextStyle(
                                  color: coloresPersonalizados[4],
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'guardala para más tarde',
                                style: TextStyle(
                                  color: coloresPersonalizados[17],
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    BotonAgregarTarjeta(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AgregarTarjeta(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 4.h,
                      child: Text('Pagar con QR',
                          style: TextStyle(
                              fontSize: 20.sp,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'JockeyOne')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: screenHeight(context) * 0.02,
                        bottom: screenHeight(context) * 0.02,
                        right: screenWidth(context) * 0.04,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: coloresPersonalizados[14],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        height: 8.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth(context) * 0.06,
                                right: screenWidth(context) * 0.01,
                              ),
                              child: Image.asset('assets/icons/qrcode.png'),
                            ),
                            Text(
                              ' QR ',
                              style: TextStyle(
                                color: coloresPersonalizados[15],
                                fontSize: 16.sp,
                              ),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth(context) * 0.01,
                                right: screenWidth(context) * 0.05,
                              ),
                              child: const Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: screenWidth(context) * 0.04,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: LargeButton(
                          texto: 'Pagar',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PagoExitoso(),
                              ),
                            );
                          },
                          indiceColorFondo: 0,
                          indiceColorTexto: 3,
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
