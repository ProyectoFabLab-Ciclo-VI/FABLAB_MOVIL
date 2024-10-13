
import 'package:fab_lab_upeu/di.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/search_pokemon/search_pokemon_bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/pokemons_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetIt.instance.get<SearchPokemonBloc>())
      ],
      child: MaterialApp(
        title: 'Pokemon APP',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PokemonsScreen(),
      ),
    );
  }
}