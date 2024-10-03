import 'package:flutter/material.dart';
import '../widgets/widget1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escuela de Arquitectura'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: const [
                Icon(Icons.location_on, color: Colors.purple),
                SizedBox(width: 4),
                Text('UPEU, Lima', style: TextStyle(color: Colors.black)),
              ],
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Barra de búsqueda
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            // Sección de "Popular"
            SectionTitle(title: "Popular", onSeeAllPressed: () {}),

            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  PopularCard(
                    imagePath: 'assets/imgs/esauprime.png',
                    title: 'Esau Prime',
                    rating: 4.1,
                  ),
                  PopularCard(
                    imagePath: 'assets/imgs/esauprime.png',
                    title: 'Esau Prime',
                    rating: 4.1,
                  ),
                  PopularCard(
                    imagePath: 'assets/imgs/esauprime.png',
                    title: 'Esau Prime',
                    rating: 4.1,
                  ),
                  PopularCard(
                    imagePath: 'assets/imgs/quispeprime.png',
                    title: 'Quizpe Prime',
                    rating: 4.5,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Sección de "Recomendados"
            SectionTitle(title: "Recomendados", onSeeAllPressed: () {}),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              childAspectRatio: 3 / 2,
              children: const [
                RecommendedCard(
                  imagePath: 'assets/imgs/esauprime.png',
                  title: 'Esau Prime',
                  duration: '4N/5D',
                ),
                RecommendedCard(
                  imagePath: 'assets/imgs/quispeprime.png',
                  title: 'Quizpe Prime',
                  duration: '2N/3D',
                ),
                RecommendedCard(
                  imagePath: 'assets/imgs/quispeprime.png',
                  title: 'Quizpe Prime',
                  duration: '2N/3D',
                ),
                RecommendedCard(
                  imagePath: 'assets/imgs/quispeprime.png',
                  title: 'Quizpe Prime',
                  duration: '2N/3D',
                ),
                RecommendedCard(
                  imagePath: 'assets/imgs/quispeprime.png',
                  title: 'Quizpe Prime',
                  duration: '2N/3D',
                ),
                RecommendedCard(
                  imagePath: 'assets/imgs/quispeprime.png',
                  title: 'Quizpe Prime',
                  duration: '2N/3D',
                ),
                RecommendedCard(
                  imagePath: 'assets/imgs/quispeprime.png',
                  title: 'Quizpe Prime',
                  duration: '2N/3D',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Asegúrate de tener este widget definido
class SectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAllPressed;

  const SectionTitle({
    super.key,
    required this.title,
    required this.onSeeAllPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onSeeAllPressed,
          child: const Text("See all"),
        ),
      ],
    );
  }
}
