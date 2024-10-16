import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/models/pokemon_model.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Definición de la fuente de datos local para manejar operaciones de almacenamiento de Pokémon.
abstract class PokemonLocalDataSource {
  /// Guarda un Pokémon en el almacenamiento local.
  /// 
  /// Retorna `true` si el Pokémon fue guardado exitosamente.
  /// Lanza una excepción [LocalFailure] si ocurre un error.
  Future<bool> capturePokemon(Pokemon pokemon);

  /// Recupera todos los Pokémon guardados en el almacenamiento local.
  /// 
  /// Retorna una lista de [PokemonModel] que representa todos los Pokémon capturados.
  /// Lanza una excepción [LocalFailure] si ocurre un error.
  Future<List<PokemonModel>> getAllPokemon();
}

/// Implementación de la fuente de datos local para almacenar y recuperar datos de Pokémon
/// utilizando la base de datos local Hive.
class HivePokemonLocalDataSourceImpl implements PokemonLocalDataSource {
  
  /// Constructor que inicializa la base de datos Hive para Flutter.
  HivePokemonLocalDataSourceImpl() {
    Hive.initFlutter();
  }

  /// Guarda un Pokémon en la base de datos local utilizando Hive.
  /// 
  /// Abre o crea una caja (box) llamada 'pokemons' y guarda el Pokémon con su ID como clave.
  /// El Pokémon es convertido a un formato JSON utilizando [PokemonModel] antes de ser guardado.
  /// Retorna `true` si la operación es exitosa.
  /// 
  /// Si ocurre un error durante el almacenamiento, se captura la excepción, se imprime en la consola
  /// para depuración y se lanza un [LocalFailure].
  @override
  Future<bool> capturePokemon(Pokemon pokemon) async {
    try {
      // Abre la caja de almacenamiento 'pokemons' de forma asíncrona.
      Box<dynamic> box = await Hive.openBox('pokemons');

      // Guarda el Pokémon en la caja con su ID como clave.
      box.put(pokemon.id, PokemonModel.fromEntity(pokemon).toJson());

      // Retorna true si la operación es exitosa.
      return true;
    } catch (error) {
      // Muestra el error en la consola para propósitos de depuración.
      debugPrint(error.toString());
      
      // Lanza una excepción personalizada que indica un error en el almacenamiento local.
      throw LocalFailure();
    }
  }

  /// Recupera todos los Pokémon guardados en la base de datos local.
  /// 
  /// Abre la caja de almacenamiento 'pokemons' y convierte cada elemento almacenado de formato JSON
  /// a un objeto [PokemonModel]. 
  /// Retorna una lista de todos los Pokémon guardados.
  /// 
  /// Si ocurre un error durante la recuperación, se captura la excepción, se imprime en la consola
  /// para depuración y se lanza un [LocalFailure].
  @override
  Future<List<PokemonModel>> getAllPokemon() async {
    try {
      // Abre la caja de almacenamiento 'pokemons' de forma asíncrona.
      Box<dynamic> box = await Hive.openBox('pokemons');

      // Convierte los valores guardados en la caja de JSON a objetos PokemonModel.
      return box.values.map((p) => PokemonModel.fromJson(p)).toList();
    } catch (error) {
      // Muestra el error en la consola para propósitos de depuración.
      debugPrint(error.toString());

      // Lanza una excepción personalizada que indica un error en la recuperación local.
      throw LocalFailure();
    }
  }
}
