import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/login_register_controller.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Login_Reset_Register/Login/login.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/Pago_exitoso_expera/pago_exitoso.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/qr/pago_qr.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Pago/verificacion_agregar_pago/verificacion_tarjeta.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LoginRegisterController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PagoQR(),
        );
      },
    );
  }
}
