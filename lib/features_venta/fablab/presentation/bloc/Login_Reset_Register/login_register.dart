import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/Login_Reset_Register/login_register_controller.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Login_Reset_Register/Login/login_register_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

/// Widget que permite alternar entre las opciones de "Log in" y "Register".
/// Utiliza un `Consumer` para escuchar los cambios en el estado del `LoginRegisterController`.
class LoginRegisterToggle extends StatelessWidget {
  const LoginRegisterToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginRegisterController>(
      builder: (context, controller, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 7.5.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Botón de "Log in"
                Expanded(
                  child: GestureDetector(
                    onTap: () => controller
                        .onItemTapped(0), // Cambia el estado a "Log in"
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: loginDecoration(
                          controller.selectedIndex == 0), // Estilo del botón
                      child: Center(
                        child: Text(
                          'Log in',

                          style: textStyle(
                            controller.selectedIndex == 0,
                          ),
                          // Estilo del texto
                        ),
                      ),
                    ),
                  ),
                ),
                // Botón de "Register"
                Expanded(
                  child: GestureDetector(
                    onTap: () => controller
                        .onItemTapped(1), // Cambia el estado a "Register"
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: registerDecoration(
                          controller.selectedIndex == 1), // Estilo del botón
                      child: Center(
                        child: Text(
                          'Register',
                          style: textStyle(controller.selectedIndex ==
                              1), // Estilo del texto
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
