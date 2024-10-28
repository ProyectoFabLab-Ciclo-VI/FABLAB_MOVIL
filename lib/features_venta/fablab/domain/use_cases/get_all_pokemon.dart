import 'package:dartz/dartz.dart';
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pokemon_repository.dart';

/// Clase que representa el caso de uso para obtener todos los Pokémon almacenados.
class GetAllPokemonUseCase {
  final PokemonRepository repository;

  /// Constructor que recibe una instancia de [PokemonRepository].
  GetAllPokemonUseCase({required this.repository});

  /// Obtiene todos los Pokémon almacenados.
  /// 
  /// Retorna un [Either] que puede ser:
  /// - `Right(List<Pokemon>)`: si la operación fue exitosa y se obtienen los Pokémon.
  /// - `Left(Failure)`: si ocurre un error durante la operación.
  Future<Either<Failure, List<Pokemon>>> call() {
    return repository.getAllPokemon();
  }
}
