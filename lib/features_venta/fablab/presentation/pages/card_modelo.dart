import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';
import 'package:flutter/material.dart';

class ModeloCard extends StatelessWidget {
  const ModeloCard({super.key, required this.modelosPredefinido});

  final ModelosPredefinido modelosPredefinido;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(modelosPredefinido.nombre),
          Text(modelosPredefinido.codigo),
          Text(modelosPredefinido.comentario),
          Text(modelosPredefinido.imagen2)
        ],
      ),
    );
  }
}
