
import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pokemon_local_data_source.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pokemon_remote_data_sources.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/repositories/pokemon_repository_impl.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pokemon_repository.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/capture_pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/getAllPokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/search_pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/search_pokemon/search_pokemon_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => SearchPokemonBloc(
      sl(),
      sl(),
      sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => CapturePokemonUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetAllPokemonUseCase(repository: sl()));
  sl.registerLazySingleton(() => SearchPokemonUseCase(repository: sl()));

  // Repository
  sl.registerLazySingleton<PokemonRepository>(
    () => PokemonRepositoryImpl(
      pokemonLocalDataSource: sl(),
      pokemonRemoteDataSource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<PokemonLocalDataSource>(
    () => HivePokemonLocalDataSourceImpl(),
  );

  sl.registerLazySingleton<PokemonRemoteDataSources>(
    () => PokemonRemoteDataSourceImpl(),
  );
}