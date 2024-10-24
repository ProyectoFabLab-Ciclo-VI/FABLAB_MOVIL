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
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text("Multiverso Esaus"), // Sección de búsqueda
            const SizedBox(height: 16),
            Expanded( // Se asegura de que ocupe todo el espacio disponible
              child: InferiorPrincipal(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NAVBARINFERIOR(),
    );
  }
}
