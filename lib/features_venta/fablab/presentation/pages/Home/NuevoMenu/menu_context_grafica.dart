import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_event.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_state.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/card_nuevo_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CargaHome extends StatelessWidget {
  const CargaHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double aspectRatio = screenWidth / (screenHeight / 2);

    context.read<ModeloBloc>().add(LoadModeloEvent());
    return BlocBuilder<ModeloBloc, ModeloState>(
      builder: (context, state) {
        if (state is ModeloLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ModeloLoaded) {
          return GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                childAspectRatio: aspectRatio,
              ),
              itemCount: state.modelos.length,
              itemBuilder: (context, index) {
                return CardMenuNuevo(

                    modelosPredefinido: state.modelos[index],
                    );
              });
        } else if (state is ModeloError) {
          return Center(child: Text(state.message));
        }
        return const SizedBox();
      },
    );
  }
}
