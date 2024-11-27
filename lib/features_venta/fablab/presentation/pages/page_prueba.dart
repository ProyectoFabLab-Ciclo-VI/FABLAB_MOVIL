import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_event.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_state.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/card_modelo.dart';

class pruebapage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Disparar el evento para cargar los modelos
    context.read<ModeloBloc>().add(LoadModeloEvent());

    return Scaffold(
      appBar: AppBar(title: const Text('Models List')),
      body: BlocBuilder<ModeloBloc, ModeloState>(
        builder: (context, state) {
          if (state is ModeloLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ModeloLoaded) {
            return ListView.builder(
              itemCount: state.modelos.length,
              itemBuilder: (context, index) {
                return ModeloCard(modelosPredefinido: state.modelos[index]);
              },
            );
          } else if (state is ModeloError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox();
        },
      ),
    );
  }
}

 
