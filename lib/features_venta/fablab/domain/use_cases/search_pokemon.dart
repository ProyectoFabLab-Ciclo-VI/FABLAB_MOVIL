import 'package:dartz/dartz.dart';
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pokemon_repository.dart';

class SearchPokemonUseCase {
  final PokemonRepository repository;

  SearchPokemonUseCase({required this.repository});

  Future<Either<Failure, Pokemon>> call(int id) {
    return repository.getPokemon(id);
  }
}
