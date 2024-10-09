import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';

class PokemonModel extends Pokemon {
  PokemonModel({required super.name, required super.image, required super.id});

  factory PokemonModel.fromJson(json) {
    return PokemonModel(
        name: json['name'],
        image: json['sprites']['front_default'],
        id: json['id']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'sprites': {'front_default': image},
      'id': id
    };
  }

  factory PokemonModel.fromEntity(Pokemon pokemon) {
    return PokemonModel(
        name: pokemon.name, image: pokemon.image, id: pokemon.id);
  }
}
