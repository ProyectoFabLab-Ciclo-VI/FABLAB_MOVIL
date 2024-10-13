
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Image.network(pokemon.image), Text(pokemon.name)],
      ),
    );
  }
}