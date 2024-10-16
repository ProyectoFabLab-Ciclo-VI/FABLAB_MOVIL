import 'package:dartz/dartz.dart';
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';

/// Define un repositorio para gestionar las operaciones relacionadas con Pokémon.
/// Utiliza `Either` de la biblioteca `dartz` para manejar errores de manera segura y clara.
abstract class PokemonRepository {
  /// Obtiene la información de un Pokémon a partir de su ID.
  /// 
  /// Retorna un `Either` que puede ser:
  /// - `Right(Pokemon)`: si la operación es exitosa y se obtiene el Pokémon.
  /// - `Left(Failure)`: si ocurre un error, como un fallo de red o problemas con la API.
  Future<Either<Failure, Pokemon>> getPokemon(int id);

  /// Guarda un Pokémon de forma local.
  /// 
  /// Retorna un `Either` que puede ser:
  /// - `Right(true)`: si el Pokémon fue guardado correctamente.
  /// - `Left(Failure)`: si ocurre un error durante la operación de guardado.
  Future<Either<Failure, bool>> capturePokemon(Pokemon pokemon);

  /// Obtiene la lista de todos los Pokémon almacenados de forma local.
  /// 
  /// Retorna un `Either` que puede ser:
  /// - `Right(List<Pokemon>)`: si la operación es exitosa y se obtienen los Pokémon.
  /// - `Left(Failure)`: si ocurre un error al intentar recuperar los datos locales.
  Future<Either<Failure, List<Pokemon>>> getAllPokemon();
}
