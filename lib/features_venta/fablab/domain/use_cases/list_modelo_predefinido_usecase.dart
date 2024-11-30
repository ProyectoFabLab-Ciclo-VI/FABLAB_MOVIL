import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/modelos_predefinido_repository.dart';

class ListModeloPredefinidoUsecase {
  final ModelosPredefinidoRepository modelosPredefinidoRepository;

  ListModeloPredefinidoUsecase(this.modelosPredefinidoRepository);

  Future<List<ModelosPredefinido>> call() async {
    return await modelosPredefinidoRepository.listmodelospredefinido();
  }
}
