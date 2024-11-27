import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';

abstract class ModeloState {}

class ModeloLoading extends ModeloState {}

class ModeloLoaded extends ModeloState {
  final List<ModelosPredefinido> modelos;

  ModeloLoaded({required this.modelos});
}

class ModeloError extends ModeloState {
  final String message;

  ModeloError({required this.message});
}
