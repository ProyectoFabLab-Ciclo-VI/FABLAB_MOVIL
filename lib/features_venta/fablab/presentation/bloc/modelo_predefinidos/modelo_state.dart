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

// Estado para cuando se carga un modelo por ID
class ModeloByIdLoaded extends ModeloState {
  final ModelosPredefinido modelo;

  ModeloByIdLoaded({required this.modelo});
}

class ModeloByIdError extends ModeloState {
  final String message;

  ModeloByIdError({required this.message});
}

class ModeloCreated extends ModeloState {}

