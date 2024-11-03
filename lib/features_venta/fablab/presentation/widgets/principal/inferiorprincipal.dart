import 'package:fab_lab_upeu/shared/presentation/widgetsGlobal/cards/card_menu_principal.dart';
import 'package:flutter/material.dart';

class InferiorPrincipal extends StatelessWidget {
  const InferiorPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Número de columnas
        crossAxisSpacing: 16.0, // Espacio horizontal entre las columnas
        mainAxisSpacing: 16.0, // Espacio vertical entre las filas
        childAspectRatio: 0.75, // Relación de aspecto de los hijos (ancho/alto)
      ),
      itemCount: 6, // Número de Cards que deseas mostrar
      itemBuilder: (context, index) {
        String cardiferent;
        if (index == 0) {
          cardiferent = "Esau de Mewing";
        } else if (index == 1) {
          cardiferent = "Esau Europeo";
        } else if (index == 2) {
          cardiferent = "Esau sin peinarse";
        } else if (index == 3) {
          cardiferent = "Esau challenger";
        } else if (index == 4) {
          cardiferent = "Esau Terrorista";
        } else if (index == 5) {
          cardiferent = "Esau Bad Boy";
        } else {
          cardiferent = "Esau Exponente";
        }

        return CardsGlobal(
          cardUrl: 'assets/images/menu/foto${index + 1}.png',
          cardText: cardiferent,
          
        );
      },
    );
  }
}
