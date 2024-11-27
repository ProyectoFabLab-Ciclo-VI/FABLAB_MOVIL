import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_event.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_state.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/Home/NuevoMenu/card_nuevo_menu.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/pages/card_modelo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class CargaHome extends StatelessWidget {
  const CargaHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double aspectRatio = screenWidth / (screenHeight / 2);
    List<Map<String, String>> datos = [
      {
        'imagePath': 'assets/images/menu/katana.png',
        'title': 'Katana Japonesa',
        'description': 'Modelo Fotorrealista',
        'price': 's/30'
      },
      {
        'imagePath': 'assets/images/menu/gato.png',
        'title': 'Escultura de un Gato',
        'description': 'Modelo 3D de un Michi',
        'price': 's/20'
      },
      {
        'imagePath': 'assets/images/menu/mascara.png',
        'title': 'Mascara de zorro',
        'description': 'Modelo para Halloween',
        'price': 's/15'
      },
      {
        'imagePath': 'assets/images/menu/carro.png',
        'title': 'Coche Fr',
        'description': 'Modelo Moderno de un carro 4x1',
        'price': 's/40'
      },
      {
        'imagePath': 'assets/images/menu/jugador.png',
        'title': 'Cristiano Ronaldo',
        'description': 'El Siuuuuuu',
        'price': 's/50'
      },
      {
        'imagePath': 'assets/images/menu/demon.png',
        'title': 'Zenitsu',
        'description': 'El rayo amarillo',
        'price': 's/25'
      },
    ];
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
                    data: datos[index],
                    modelosPredefinido: state.modelos[index]);
              });
        } else if (state is ModeloError) {
          return Center(child: Text(state.message));
        }
        return const SizedBox();
      },
    );
  }
}
