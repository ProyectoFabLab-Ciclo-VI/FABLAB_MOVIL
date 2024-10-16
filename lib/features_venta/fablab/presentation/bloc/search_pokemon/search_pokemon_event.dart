part of 'search_pokemon_bloc.dart';

/// Clase base para todos los eventos relacionados con la búsqueda de Pokémon.
sealed class SearchPokemonEvent {}

/// Evento para iniciar la búsqueda de un Pokémon.
class OnSearchPokemon extends SearchPokemonEvent {}

/// Evento para capturar un Pokémon.
class OnCapturePokemon extends SearchPokemonEvent {
  /// El Pokémon que se desea capturar.
  final Pokemon pokemon;

  /// Constructor de [OnCapturePokemon].
  /// 
  /// - [pokemon]: El Pokémon que será capturado.
  OnCapturePokemon({required this.pokemon});
}

/// Evento para obtener todos los Pokémon capturados.
class OnGetCapturedPokemons extends SearchPokemonEvent {
  /// Constructor de [OnGetCapturedPokemons].
  OnGetCapturedPokemons();
}
