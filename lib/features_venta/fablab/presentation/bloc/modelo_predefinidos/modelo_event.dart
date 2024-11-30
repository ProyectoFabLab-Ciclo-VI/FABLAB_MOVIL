
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/post_modelos.dart';

abstract class ModeloEvent {}

class LoadModeloEvent extends ModeloEvent {}

class GetModeloByIdEvent extends ModeloEvent {
  final int modeloPredefinidoId;

  GetModeloByIdEvent({required this.modeloPredefinidoId});
}

class CreateModeloEvent extends ModeloEvent {
  final ModelosPredefinidoPost modelos;

  CreateModeloEvent({required this.modelos});
}
