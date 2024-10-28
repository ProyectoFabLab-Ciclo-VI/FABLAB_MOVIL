import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:flutter/material.dart';

/// Widget que representa una tarjeta de información de un Pokémon.
class PokemonCard extends StatelessWidget {
  /// Crea una nueva instancia de [PokemonCard].
  const PokemonCard({super.key, required this.pokemon});

  /// El Pokémon cuyo información se mostrará en la tarjeta.
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(pokemon.image), // Muestra la imagen del Pokémon.
          Text(pokemon.name) // Muestra el nombre del Pokémon.
        ],
      ),
    );
  }
}
