import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/appbar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/menu_drawer.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/navbarinferior.dart';
import 'package:flutter/material.dart';

class PrincipalMenu extends StatelessWidget {
  const PrincipalMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Menudrawer(),
      appBar: APPBARGENERAL(),
      body: Center(
        child: Text("Hola Mundo :v"),
      ),
      bottomNavigationBar: NAVBARINFERIOR(),
    );
  }
}
