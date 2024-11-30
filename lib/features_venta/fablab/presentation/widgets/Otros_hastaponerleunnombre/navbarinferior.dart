import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/principal_menu.dart';
import 'package:fab_lab_upeu/shared/Utils/colores.dart';
import 'package:flutter/material.dart';

class NAVBARINFERIOR extends StatelessWidget {
  const NAVBARINFERIOR({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: coloresPersonalizados[1],
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPrincipal()),
                );
              },
              child: const Icon(Icons.home)),
          label: '',
          // Oculta el label
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.description),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '',
        ),
      ],
      selectedItemColor: coloresPersonalizados[3],
      unselectedItemColor: coloresPersonalizados[3],
      showSelectedLabels: false, // Oculta los labels seleccionados
      showUnselectedLabels: false,
    );
  }
}
