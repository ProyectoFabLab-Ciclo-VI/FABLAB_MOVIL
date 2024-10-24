import 'package:flutter/material.dart';

class InferiorPrincipal extends StatelessWidget {
  const InferiorPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 10, // Número de Cards que deseas mostrar
      itemBuilder: (context, index) {
        String cardText;
        if (index == 0) {
          cardText = "Esau de Mewing";
        } else if (index == 1) {
          cardText = "Esau Europeo";
        } else if (index == 2) {
          cardText = "Esau sin peinarse";
        } else if (index == 3) {
          cardText = "Esau challenger";
        } else if (index == 4) {
          cardText = "Esau Terrorista";
        } else if (index == 5) {
          cardText = "Esau Bad Boy";
        } else if (index == 6) {
          cardText = "Esau Exponente";
        } else if (index == 7) {
          cardText = "Esau Boxeador";
        } else if (index == 8) {
          cardText = "Esau Bugeado";
        } else {
          cardText = "Esau Practicante de wilsom";
        }

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/cards_esau/esau${index + 1}.png',
                    fit: BoxFit.cover,
                    height: 150, // Ajusta la altura de la imagen
                    width: double
                        .infinity, // Asegura que la imagen ocupe todo el ancho del Card
                  ),
                  const SizedBox(height: 8),
                  Text(
                    cardText,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
