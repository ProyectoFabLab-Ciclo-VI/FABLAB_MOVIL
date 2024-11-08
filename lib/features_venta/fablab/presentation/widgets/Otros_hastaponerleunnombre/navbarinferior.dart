import 'package:fab_lab_upeu/shared/colores.dart';
import 'package:flutter/material.dart';

class NAVBARINFERIOR extends StatelessWidget {
  const NAVBARINFERIOR({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      
      backgroundColor: coloresPersonalizados[1],
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '', // Oculta el label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.description),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '',
        ),
      ],
      selectedItemColor: Colors.green,
      unselectedItemColor: coloresPersonalizados[3],
      showSelectedLabels: false, // Oculta los labels seleccionados
      showUnselectedLabels: false,
    );
  }
}
