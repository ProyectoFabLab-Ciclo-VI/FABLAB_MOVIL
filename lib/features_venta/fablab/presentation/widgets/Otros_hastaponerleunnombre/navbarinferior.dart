import 'package:flutter/material.dart';

class NAVBARINFERIOR extends StatelessWidget {
  const NAVBARINFERIOR({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF122545),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Comprar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'settings',
        ),
      ],
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
    );
  }
}
