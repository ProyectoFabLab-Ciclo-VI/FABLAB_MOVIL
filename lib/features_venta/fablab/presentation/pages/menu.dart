import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/appbar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/menu_drawer.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/navbarinferior.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/principal/inferiorprincipal.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/principal/superiorprincipal.dart';
import 'package:flutter/material.dart';

class PrincipalMenu extends StatelessWidget {
  const PrincipalMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menudrawer(),
      appBar: APPBARGENERAL(),
      // body: SafeArea(
      //   child: Column(
      //     children: [
      //       const MenuSuperior(), // Widget que ocupa solo su altura
      //       const SizedBox(height: 16), // Separador entre widgets
      //       const Text("Multiverso Esaus"),
      //       const SizedBox(height: 16), // Separador entre widgets
      //       // Expande InferiorPrincipal para ocupar el resto del espacio disponible
      //       Expanded(
      //         child: InferiorPrincipal(),
      //       ),
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MenuSuperior(),
              const SizedBox(height: 16),
              const Text("Multiverso Esaus"),
              const SizedBox(height: 16),
              Container(
                height: 400, // Ajusta la altura según tus necesidades
                child: InferiorPrincipal(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NAVBARINFERIOR(),
    );
  }
}
