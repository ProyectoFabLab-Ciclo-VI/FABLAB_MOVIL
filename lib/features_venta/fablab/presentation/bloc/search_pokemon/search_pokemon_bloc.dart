import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/core/utils/utils.dart' as utils;
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/capture_pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/getAllPokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/search_pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_pokemon_event.dart';
part 'search_pokemon_state.dart';

/// Bloc que gestiona la búsqueda, captura y obtención de Pokémon.
class SearchPokemonBloc extends Bloc<SearchPokemonEvent, SearchPokemonState> {
  final CapturePokemonUseCase _capturePokemonUseCase;
  final GetAllPokemonUseCase _getCapturedsPokemonsUseCase;
  final SearchPokemonUseCase _searchPokemonUseCase;

  /// Constructor de [SearchPokemonBloc].
  ///
  /// Recibe tres casos de uso:
  /// - [_capturePokemonUseCase]: Caso de uso para capturar un Pokémon.
  /// - [_getCapturedsPokemonsUseCase]: Caso de uso para obtener todos los Pokémon capturados.
  /// - [_searchPokemonUseCase]: Caso de uso para buscar un Pokémon por un ID aleatorio.
  SearchPokemonBloc(this._capturePokemonUseCase,
      this._getCapturedsPokemonsUseCase, this._searchPokemonUseCase)
      : super(SearchPokemonInitial()) {
    /// Maneja el evento de búsqueda de un Pokémon.
    on<OnSearchPokemon>((event, emit) async {
      emit(SearchPokemonLoading());

      // Realiza la búsqueda de un Pokémon usando un ID aleatorio.
      final resp = await _searchPokemonUseCase(utils.randomPokemonId);

      // Emite un estado de éxito o de falla basado en el resultado de la búsqueda.
      resp.fold(
        (f) => emit(SearchPokemonFailure(failure: f)),
        (p) => emit(SearchPokemonSuccess(pokemon: p)),
      );
    });

    /// Maneja el evento de captura de un Pokémon.
    on<OnCapturePokemon>((event, emit) async {
      // Realiza la captura del Pokémon proporcionado en el evento.
      final resp = await _capturePokemonUseCase(event.pokemon);

      // Emite un estado de falla si la captura falla.
      resp.fold(
        (f) => emit(SearchPokemonFailure(failure: f)),
        (p) {}, // No se emite un estado adicional en caso de éxito.
      );
    });

    /// Maneja el evento para obtener todos los Pokémon capturados.
    on<OnGetCapturedPokemons>((event, emit) async {
      // Obtiene todos los Pokémon capturados.
      final resp = await _getCapturedsPokemonsUseCase();

      // Emite un estado de lista de Pokémon capturados o un estado de falla.
      resp.fold(
        (f) => emit(SearchPokemonFailure(failure: f)),
        (ps) => emit(SearchPokemonList(pokemons: ps)),
      );
    });
  }
}
