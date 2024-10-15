import 'package:flutter/material.dart';

class MenuSuperior extends StatefulWidget {
  const MenuSuperior({super.key});

  @override
  MenuSuperiorState createState() => MenuSuperiorState();
}

class MenuSuperiorState extends State<MenuSuperior> {
  final PageController _pageController =
      PageController(viewportFraction: 0.5); // Ajusta el viewportFraction
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 230, // Ajusta la altura si es necesario
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index; // Actualiza el índice actual
            });
          },
          itemCount: 10, // Número de cards
          itemBuilder: (context, index) {
            double scale = _currentIndex == index ? 1.2 : 0.9;
            double cardWidth = 152; // Ancho fijo del card
            double cardHeight = 150; // Altura fija del card

            return Center(
              child: Card(
                margin: const EdgeInsets.symmetric(
                    horizontal: 24), // Margen horizontal simétrico
                elevation: 12, // Sombra del Card
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Bordes curvados en el Card
                ),
                child: Container(
                  width: cardWidth,
                  height:
                      cardHeight * scale, // Ajusta la altura según la escala
                  decoration: BoxDecoration(
                    color: Colors.primaries[
                        index % Colors.primaries.length], // Colores variados
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.3), // Color de la sombra
                        spreadRadius: 2, // Radio de difusión de la sombra
                        blurRadius: 8, // Radio de desenfoque de la sombra
                        offset:
                            const Offset(0, 1), // Desplazamiento de la sombra
                      ),
                    ],
                    // Bordes curvados en el Container
                  ),
                  alignment: Alignment.center,
                  child: Transform.scale(
                    scale: scale, // Aplica la escala solo al contenido
                    child: Text(
                      'Card ${index + 1}',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
