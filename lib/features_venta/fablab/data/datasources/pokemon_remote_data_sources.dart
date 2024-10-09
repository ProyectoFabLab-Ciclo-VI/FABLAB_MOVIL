import 'package:dio/dio.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/models/pokemon_model.dart';

abstract class PokemonRemoteDataSources {
  Future<PokemonModel> getPokemon(int id);
}

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSources {
  final Dio dio = Dio();

  @override
  Future<PokemonModel> getPokemon(int id) async {
   final resp = await dio.get('https://pokeapi.co/api/v2/pokemon/$id/');
    return   PokemonModel.fromJson(resp.data);
  }
}
