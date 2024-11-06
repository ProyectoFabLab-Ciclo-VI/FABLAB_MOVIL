import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/Login_Reset_Register/login_register.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/Login_Reset_Register/login_register_controller.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Register/register.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/TutorialLogin/ingreso.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routname = 'login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: coloresPersonalizados[1],
      body: SafeArea(
        child: SingleChildScrollView(
          child: FormBuilder(
            key: _formkey,
            child: Consumer<LoginRegisterController>(
              builder: (context, controller, child) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Condicional para mostrar/ocultar la imagen
                      if (controller.selectedIndex == 0)
                        SizedBox(
                          height: 30.h,
                          child: Image.asset('assets/images/logoblanco.png'),
                        ),
                      SizedBox(height: 25.sp),
                      const LoginRegisterToggle(),
                      // Muestra el widget de Ingreso o Register según el estado
                      controller.selectedIndex == 0
                          ? const Ingreso()
                          : const Register(),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
