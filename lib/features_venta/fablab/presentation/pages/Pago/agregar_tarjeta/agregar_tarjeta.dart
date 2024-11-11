import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/principal_menu.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/agregar_tarjeta/calendar_form.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/agregar_tarjeta/form_builder_custom_pago.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/TutorialLoginWidgets/form_builder_login.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:fab_lab_upeu/shared/media_query.dart';
import 'package:fab_lab_upeu/shared/textos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sizer/sizer.dart';

class AgregarTarjeta extends StatefulWidget {
  const AgregarTarjeta({super.key});

  @override
  State<AgregarTarjeta> createState() => _AgregarTarjetaState();
}

class _AgregarTarjetaState extends State<AgregarTarjeta> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> _formKey3 = GlobalKey<FormBuilderState>();

    return Scaffold(
      backgroundColor: coloresPersonalizados[3],
      appBar: AppBar(
        backgroundColor: coloresPersonalizados[3],
        title: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(right: screenWidth(context) * 0.15),
            child: Text(
              'AGREGAR TARJETA',
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
        child: FormBuilder(
            key: _formKey3,
            child: Padding(
                padding: EdgeInsets.only(
                    right: screenWidth(context) * 0.04,
                    left: screenWidth(context) * 0.04),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: screenHeight(context) * 0.02,
                          top: screenHeight(context) * 0.02),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          ' Introduzca los datos de su tarjeta de \n crédito en la casilla siguiente',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0.sp,
                            fontFamily: 'SpaceGrotesk',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.01),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Nombre del Titular de la tarjeta',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.02),
                      child: SizedBox(
                        width: double.infinity,
                        height: 5.h,
                        child: const FormBuilderCustomPago(
                          name: 'nombre',
                          obscureText: false,
                          hintText: 'Nombre Completo',
                          keyType: TextInputType.text,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.01),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Email',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.02),
                      child: SizedBox(
                        width: double.infinity,
                        height: 5.h,
                        child: const FormBuilderCustomPago(
                          name: 'correo',
                          obscureText: false,
                          hintText: 'Correo',
                          icon: Icons.email,
                          keyType: TextInputType.text,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.01),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Número de Tarjeta',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.02),
                      child: SizedBox(
                        width: double.infinity,
                        height: 5.h,
                        child: const FormBuilderCustomPago(
                          name: 'numero_tarjeta',
                          obscureText: false,
                          hintText: 'Visa',
                          keyType: TextInputType.number,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.01),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'CVV',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.02),
                      child: SizedBox(
                        width: double.infinity,
                        height: 5.h,
                        child: const FormBuilderCustomPago(
                          name: 'CVV',
                          obscureText: false,
                          hintText: 'CVV',
                          keyType: TextInputType.number,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.01),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Fecha de Caducidad',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: screenHeight(context) * 0.02),
                      child: SizedBox(
                          width: double.infinity,
                          height: 5.h,
                          child: const CalendarForm()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          print("Botón presionado");
                          _formKey3.currentState?.save();
                          if (_formKey3.currentState?.validate() == true) {
                            final y = _formKey3.currentState?.value;
                            print("Nombres : ${y?['nombre']}");
                            print("Email : ${y?['correo']}");
                            print("Número de Tarjeta: ${y?['numero_tarjeta']}");
                            print("CVV : ${y?['CVV']}");
                            print(
                                "Fecha de Caducidad: ${y?['fecha_caducidad']}");

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MenuPrincipal(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(screenWidth(context),
                              screenWidth(context) * 0.12),
                          backgroundColor: coloresPersonalizados[0],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: textoRegularBlanco('Verificar'),
                      ),
                    ),
                  ],
                ))),
      )),
    );
  }
}
