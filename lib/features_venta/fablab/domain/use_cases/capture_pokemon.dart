import 'package:dartz/dartz.dart';
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pokemon_repository.dart';

/// Clase que representa el caso de uso para capturar un Pokémon.
class CapturePokemonUseCase {
  final PokemonRepository repository;

  /// Constructor que recibe una instancia de [PokemonRepository].
  CapturePokemonUseCase({required this.repository});

  /// Captura un Pokémon y lo guarda en el repositorio.
  /// 
  /// Retorna un [Either] que puede ser:
  /// - `Right(bool)`: si la operación de captura fue exitosa.
  /// - `Left(Failure)`: si ocurre un error durante la operación.
  Future<Either<Failure, bool>> call(Pokemon pokemon) {
    return repository.capturePokemon(pokemon);
  }
}
