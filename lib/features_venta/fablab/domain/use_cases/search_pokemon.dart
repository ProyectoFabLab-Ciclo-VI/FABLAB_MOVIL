import 'package:dartz/dartz.dart';
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pokemon_repository.dart';

/// Clase que representa el caso de uso para buscar un Pokémon por su ID.
class SearchPokemonUseCase {
  final PokemonRepository repository;

  /// Constructor que recibe una instancia de [PokemonRepository].
  SearchPokemonUseCase({required this.repository});

  /// Busca un Pokémon a partir de su ID.
  /// 
  /// Retorna un [Either] que puede ser:
  /// - `Right(Pokemon)`: si la operación fue exitosa y se obtiene el Pokémon.
  /// - `Left(Failure)`: si ocurre un error durante la operación.
  Future<Either<Failure, Pokemon>> call(int id) {
    return repository.getPokemon(id);
  }
}
