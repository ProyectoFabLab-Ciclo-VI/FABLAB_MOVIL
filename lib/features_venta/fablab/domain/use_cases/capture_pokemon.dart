import 'package:dartz/dartz.dart';
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pokemon_repository.dart';

class CapturePokemonUseCase {
  final PokemonRepository repository;

  CapturePokemonUseCase({required this.repository});

  Future<Either<Failure, bool>> call(Pokemon pokemon) {
    return repository.capturePokemon(pokemon);
  }
}
