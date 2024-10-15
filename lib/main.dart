import 'package:fab_lab_upeu/di.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/login.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/menu.dart';
import 'package:flutter/material.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: const PrincipalMenu());
  }
}
