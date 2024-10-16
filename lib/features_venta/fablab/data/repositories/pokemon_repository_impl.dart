import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pokemon_local_data_source.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pokemon_remote_data_sources.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pokemon_repository.dart';

/// Implementación del repositorio de Pokémon que interactúa con fuentes de datos locales y remotas.
/// Utiliza `Either` de la biblioteca `dartz` para manejar errores.
class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonLocalDataSource pokemonLocalDataSource;
  final PokemonRemoteDataSources pokemonRemoteDataSource;

  PokemonRepositoryImpl({
    required this.pokemonLocalDataSource,
    required this.pokemonRemoteDataSource,
  });

  /// Guarda un Pokémon en la fuente de datos local.
  /// 
  /// Intenta capturar el Pokémon usando el [PokemonLocalDataSource].
  /// Si la operación es exitosa, retorna `Right(true)`.
  /// Si ocurre un error, retorna `Left(LocalFailure())`.
  @override
  Future<Either<Failure, bool>> capturePokemon(Pokemon pokemon) async {
    try {
      final bool resp = await pokemonLocalDataSource.capturePokemon(pokemon);
      return Right(resp);
    } on LocalFailure {
      return left(LocalFailure());
    }
  }

  /// Recupera todos los Pokémon almacenados en la fuente de datos local.
  /// 
  /// Intenta obtener la lista de Pokémon usando el [PokemonLocalDataSource].
  /// Si la operación es exitosa, retorna `Right(lista de Pokémon)`.
  /// Si ocurre un error, retorna `Left(LocalFailure())`.
  @override
  Future<Either<Failure, List<Pokemon>>> getAllPokemon() async {
    try {
      final List<Pokemon> resp = await pokemonLocalDataSource.getAllPokemon();
      return Right(resp);
    } on LocalFailure {
      return left(LocalFailure());
    }
  }

  /// Obtiene un Pokémon desde la fuente de datos remota utilizando su ID.
  /// 
  /// Intenta obtener el Pokémon desde la API remota usando el [PokemonRemoteDataSources].
  /// Si la operación es exitosa, retorna `Right(Pokemon)`.
  /// Si ocurre un error (como un problema de red), retorna `Left(ServerFailure())`.
  @override
  Future<Either<Failure, Pokemon>> getPokemon(int id) async {
    try {
      final Pokemon resp = await pokemonRemoteDataSource.getPokemon(id);
      return Right(resp);
    } on DioException {
      return left(ServerFailure());
    }
  }
}
