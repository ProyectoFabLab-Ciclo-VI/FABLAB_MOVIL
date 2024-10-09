import 'package:dartz/dartz.dart';
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';

abstract class PokemonRepository {
  Future<Either<Failure, Pokemon>> getPokemon(int id);
  Future<Either<Failure, bool>> capturePokemon(Pokemon pokemon);
  Future<Either<Failure, List<Pokemon>>> getAllPokemon();
  
}
