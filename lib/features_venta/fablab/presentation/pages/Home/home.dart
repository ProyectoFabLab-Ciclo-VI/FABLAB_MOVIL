import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/appbar.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/menu_drawer.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/Otros_hastaponerleunnombre/navbarinferior.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/widgets/principal/inferiorprincipal.dart';
import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/Busqueda/busqueda_card.dart';
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
            Busqueda(), // Sección de búsqueda
            const SizedBox(height: 16),
            Expanded(
                // Se asegura de que ocupe todo el espacio disponible

                child: InferiorPrincipal()),
          ],
        ),
      ),
      bottomNavigationBar: NAVBARINFERIOR(),
    );
  }
}
