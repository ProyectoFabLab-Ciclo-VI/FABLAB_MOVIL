import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pokemon_local_data_source.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pokemon_remote_data_sources.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonLocalDataSource pokemonLocalDataSource;
  final PokemonRemoteDataSources pokemonRemoteDataSource;

  PokemonRepositoryImpl({required this.pokemonLocalDataSource, required this.pokemonRemoteDataSource});

  @override
  Future<Either<Failure, bool>> capturePokemon(Pokemon pokemon)  async {
    try{
      final bool resp = await pokemonLocalDataSource.capturePokemon(pokemon);
      return Right(resp);
    } on LocalFailure{
      return left(LocalFailure());
    }


  }

  @override
  Future<Either<Failure, List<Pokemon>>> getAllPokemon() async {
 try{
      final List<Pokemon> resp = await pokemonLocalDataSource.getAllPokemon();
      return Right(resp);
    } on LocalFailure{
      return left(LocalFailure());
    }

  }

  @override
  Future<Either<Failure, Pokemon>> getPokemon(int id) async {
     try{
      final Pokemon resp = await pokemonRemoteDataSource.getPokemon(id);
      return Right(resp);
    } on DioException{
      return left(ServerFailure());
    }

  }
}
