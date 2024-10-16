part of 'search_pokemon_bloc.dart';

/// Clase base para todos los estados relacionados con la búsqueda de Pokémon.
sealed class SearchPokemonState {}

/// Estado inicial del `SearchPokemonBloc`, antes de que ocurra cualquier acción.
final class SearchPokemonInitial extends SearchPokemonState {}

/// Estado de carga, emitido cuando se está realizando una operación (como la búsqueda de un Pokémon).
final class SearchPokemonLoading extends SearchPokemonState {}

/// Estado de éxito, emitido cuando se ha encontrado un Pokémon.
final class SearchPokemonSuccess extends SearchPokemonState {
  /// El Pokémon que se ha encontrado.
  final Pokemon pokemon;

  /// Constructor de [SearchPokemonSuccess].
  ///
  /// - [pokemon]: El Pokémon que fue encontrado exitosamente.
  SearchPokemonSuccess({required this.pokemon});
}

/// Estado que contiene una lista de Pokémon capturados.
final class SearchPokemonList extends SearchPokemonState {
  /// Lista de Pokémon capturados.
  final List<Pokemon> pokemons;

  /// Constructor de [SearchPokemonList].
  ///
  /// - [pokemons]: La lista de Pokémon capturados.
  SearchPokemonList({required this.pokemons});
}

/// Estado de falla, emitido cuando ocurre un error durante alguna operación.
final class SearchPokemonFailure extends SearchPokemonState {
  /// La información del error que ocurrió.
  final Failure failure;

  /// Constructor de [SearchPokemonFailure].
  ///
  /// - [failure]: El error que causó la falla.
  SearchPokemonFailure({required this.failure});
}
