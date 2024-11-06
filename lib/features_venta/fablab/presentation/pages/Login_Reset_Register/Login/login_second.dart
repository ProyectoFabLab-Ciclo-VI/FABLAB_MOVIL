import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Login_Reset_Register/Login/log_in.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/Login_Reset_Register/login_register.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Register/register.dart';
import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/Login_Reset_Register/login_register_controller.dart';

class LoginLast extends StatelessWidget {
  const LoginLast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coloresPersonalizados[0],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Image.asset('assets/images/logoblanco.png'),
                const SizedBox(height: 70),
                const LoginRegisterToggle(),
                const SizedBox(height: 40),
                Consumer<LoginRegisterController>(
                  builder: (context, controller, child) {
                    return controller.selectedIndex == 0 ? const Login() : const Register();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
