import 'package:fab_lab_upeu/di.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/Login_Reset_Register/login_register_controller.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/principal_menu.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/TutorialLogin/login_tutorial.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() async {
  await init();
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
          home: LoginPage(),
        );
      },
    );
  }
}
