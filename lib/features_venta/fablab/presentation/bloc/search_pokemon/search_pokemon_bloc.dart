
import 'package:fab_lab_upeu/core/error/failures.dart';
import 'package:fab_lab_upeu/core/utils/utils.dart' as utils; 
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/capture_pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/getAllPokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/search_pokemon.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pokemon.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part  'search_pokemon_event.dart';
part  'search_pokemon_state.dart';

class SearchPokemonBloc extends Bloc<SearchPokemonEvent, SearchPokemonState> {
  final CapturePokemonUseCase _capturePokemonUseCase;
  final GetAllPokemonUseCase _getCapturedsPokemonsUseCase;
  final SearchPokemonUseCase _searchPokemonUseCase;

  SearchPokemonBloc(this._capturePokemonUseCase,
      this._getCapturedsPokemonsUseCase, this._searchPokemonUseCase)
      : super(SearchPokemonInitial()) {
    on<OnSearchPokemon>((event, emit) async {
      emit(SearchPokemonLoading());

      final resp = await _searchPokemonUseCase(utils.randomPokemonId);
      

      resp.fold((f) => emit(SearchPokemonFailure(failure: f)),
          (p) => emit(SearchPokemonSuccess(pokemon: p)));
    });
    on<OnCapturePokemon>((event, emit) async {
      final resp = await _capturePokemonUseCase(event.pokemon);

      resp.fold((f) => emit(SearchPokemonFailure(failure: f)), (p) {});
    });

    on<OnGetCapturedPokemons>((event, emit) async {
      final resp = await _getCapturedsPokemonsUseCase();

      resp.fold((f) => emit(SearchPokemonFailure(failure: f)),
          (ps) => emit(SearchPokemonList(pokemons: ps)));
    });
  }
}