import 'package:flutter/material.dart';

class MenuSuperior extends StatefulWidget {
  const MenuSuperior({super.key});

  @override
  MenuSuperiorState createState() => MenuSuperiorState();
}

class MenuSuperiorState extends State<MenuSuperior> {
  final PageController _pageController = PageController(viewportFraction: 0.5);
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
              _currentIndex = index;
            });
          },
          itemCount: 10,
          itemBuilder: (context, index) {
            double scale = _currentIndex == index ? 1.2 : 0.9;
            double cardWidth = 152;
            double cardHeight = 150;

            return Center(
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  width: cardWidth,
                  height: cardHeight * scale,
                  decoration: BoxDecoration(
                    color: Colors.primaries[index % Colors.primaries.length],
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/cards_esau/esau${index + 1}.png', // Usa el índice para seleccionar la imagen
                      fit: BoxFit
                          .cover, // Ajusta la imagen para cubrir el contenedor
                      width: cardWidth,
                      height: cardHeight * scale,
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
