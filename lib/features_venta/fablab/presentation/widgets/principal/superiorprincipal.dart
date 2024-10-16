// import 'package:flutter/material.dart';

// class MenuSuperior extends StatefulWidget {
//   const MenuSuperior({super.key});

//   @override
//   MenuSuperiorState createState() => MenuSuperiorState();
// }

// class MenuSuperiorState extends State<MenuSuperior> {
//   final PageController _pageController = PageController(viewportFraction: 0.5);
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         height: 230, // Ajusta la altura si es necesario
//         child: PageView.builder(
//           controller: _pageController,
//           onPageChanged: (index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           itemCount: 10,
//           itemBuilder: (context, index) {
//             double scale = _currentIndex == index ? 1.2 : 0.9;
//             double cardWidth = 152;
//             double cardHeight = 150;

//             return Center(
//               child: Card(
//                 margin: const EdgeInsets.symmetric(horizontal: 24),
//                 elevation: 12,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Container(
//                   width: cardWidth,
//                   height: cardHeight * scale,
//                   decoration: BoxDecoration(
//                     color: Colors.primaries[index % Colors.primaries.length],
//                     borderRadius: BorderRadius.circular(8),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.3),
//                         spreadRadius: 2,
//                         blurRadius: 8,
//                         offset: const Offset(0, 1),
//                       ),
//                     ],
//                   ),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(8),
//                     child: Image.asset(
//                       'assets/images/cards_esau/esau${index + 1}.png', // Usa el índice para seleccionar la imagen
//                       fit: BoxFit
//                           .cover, // Ajusta la imagen para cubrir el contenedor
//                       width: cardWidth,
//                       height: cardHeight * scale,
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pokemon_local_data_source.dart';
import 'package:flutter/material.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/repositories/pokemon_repository_impl.dart'; // Asegúrate de tener el import correcto
import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pokemon_remote_data_sources.dart';

class MenuSuperior extends StatefulWidget {
  const MenuSuperior({super.key});

  @override
  MenuSuperiorState createState() => MenuSuperiorState();
}

class MenuSuperiorState extends State<MenuSuperior> {
  final PageController _pageController = PageController(viewportFraction: 0.5);
  int _currentIndex = 0;
  List<Pokemon> _pokemons = [];

  @override
  void initState() {
    super.initState();
    _fetchPokemons();
  }

  // Método para obtener los Pokémon desde el repositorio
  Future<void> _fetchPokemons() async {
    final pokemonRepository = PokemonRepositoryImpl(
      pokemonLocalDataSource:
          HivePokemonLocalDataSourceImpl(), // Proporciona la fuente de datos local.
      pokemonRemoteDataSource: PokemonRemoteDataSourceImpl(),
    );

    List<Pokemon> pokemons = [];
    for (int i = 1; i <= 10; i++) {
      final result = await pokemonRepository.getPokemon(i);
      result.fold(
        (failure) => print("Error al obtener Pokémon: $failure"),
        (pokemon) => pokemons.add(pokemon),
      );
    }

    // Actualizar la lista de Pokémon
    setState(() {
      _pokemons = pokemons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 230, // Ajusta la altura si es necesario
        child: _pokemons.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemCount: _pokemons.length,
                itemBuilder: (context, index) {
                  double scale = _currentIndex == index ? 1.2 : 0.9;
                  double cardWidth = 152;
                  double cardHeight = 150;

                  // Obtener el Pokémon actual
                  final pokemon = _pokemons[index];

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
                          color:
                              Colors.primaries[index % Colors.primaries.length],
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
                          child: Image.network(
                            pokemon
                                .image, // Utiliza la URL de la imagen del Pokémon
                            fit: BoxFit.cover,
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
