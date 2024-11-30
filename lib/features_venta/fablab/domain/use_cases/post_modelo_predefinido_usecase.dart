
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/post_modelos.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/modelos_predefinido_repository.dart';

class CreateModeloPredefinidoUsecase {
  final ModelosPredefinidoRepository modelosPredefinidoRepository;

  CreateModeloPredefinidoUsecase(this.modelosPredefinidoRepository);

  Future<void> call(ModelosPredefinidoPost modelos) async {
    await modelosPredefinidoRepository.createModeloPredefinido(modelos);
  }
}
