import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/modelos_predefinido_repository.dart';

class ModeloPredefinidoUsecase {
  final ModelosPredefinidoRepository modelosPredefinidoRepository;

  ModeloPredefinidoUsecase({required this.modelosPredefinidoRepository});

  Future<ModelosPredefinido> call(int modelopredefinidoid) async {
    return await modelosPredefinidoRepository
        .getmodelopredefinido(modelopredefinidoid);
  }
}
