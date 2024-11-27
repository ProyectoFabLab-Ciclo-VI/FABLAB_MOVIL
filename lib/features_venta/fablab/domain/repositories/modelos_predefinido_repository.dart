import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';

abstract class ModelosPredefinidoRepository {

  Future<List<ModelosPredefinido>> listmodelospredefinido();
  Future<ModelosPredefinido> getmodelopredefinido(int modelopredefinidoid);
}