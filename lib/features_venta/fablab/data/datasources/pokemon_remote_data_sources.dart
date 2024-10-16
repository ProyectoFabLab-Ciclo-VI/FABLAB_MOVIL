import 'package:dio/dio.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/models/pokemon_model.dart';

/// Define una interfaz para las fuentes de datos remotas de Pokémon.
abstract class PokemonRemoteDataSources {
  /// Obtiene un [PokemonModel] desde una API remota usando su ID.
  /// 
  /// Lanza una excepción [DioException] si ocurre un error durante la solicitud.
  Future<PokemonModel> getPokemon(int id);
}

/// Implementación de la fuente de datos remota para obtener información de Pokémon desde una API.
/// Utiliza la biblioteca Dio para realizar las solicitudes HTTP.
class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSources {
  final Dio dio = Dio();

  /// Obtiene los datos de un Pokémon desde una API remota utilizando su ID.
  /// 
  /// Realiza una solicitud GET a la API de Pokémon con el ID proporcionado.
  /// Convierte la respuesta JSON a un [PokemonModel].
  @override
  Future<PokemonModel> getPokemon(int id) async {
    final resp = await dio.get('https://pokeapi.co/api/v2/pokemon/$id/');
    return PokemonModel.fromJson(resp.data);
  }
}
