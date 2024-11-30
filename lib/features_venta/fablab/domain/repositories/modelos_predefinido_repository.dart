import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/post_modelos.dart';

abstract class ModelosPredefinidoRepository {
  Future<List<ModelosPredefinido>> listmodelospredefinido();
  Future<ModelosPredefinido> getmodelopredefinido(int modelopredefinidoid);
  Future<void> createModeloPredefinido(ModelosPredefinidoPost modelos);
}
