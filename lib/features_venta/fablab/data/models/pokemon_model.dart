import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';

/// Clase que representa un modelo de datos de un Pokémon, extendiendo la entidad [Pokemon].
/// Incluye métodos para la conversión desde y hacia JSON, y para convertir desde la entidad.
class PokemonModel extends Pokemon {
  PokemonModel({required super.name, required super.image, required super.id});

  /// Crea un [PokemonModel] a partir de un mapa JSON.
  /// 
  /// Espera que el JSON tenga las claves 'name', 'sprites' y 'id'.
  factory PokemonModel.fromJson(json) {
    return PokemonModel(
      name: json['name'],
      image: json['sprites']['front_default'],
      id: json['id'],
    );
  }

  /// Convierte el [PokemonModel] a un mapa JSON.
  /// 
  /// Retorna un mapa que incluye las claves 'name', 'sprites' (que contiene 'front_default')
  /// y 'id'.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'sprites': {'front_default': image},
      'id': id,
    };
  }

  /// Crea un [PokemonModel] a partir de una entidad [Pokemon].
  /// 
  /// Esto es útil para convertir la entidad en un modelo que pueda ser almacenado localmente.
  factory PokemonModel.fromEntity(Pokemon pokemon) {
    return PokemonModel(
      name: pokemon.name,
      image: pokemon.image,
      id: pokemon.id,
    );
  }
}
