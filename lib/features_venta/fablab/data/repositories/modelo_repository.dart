import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/modelo_remote_data_sources.dart';
import 'package:fab_lab_upeu/features_venta/fablab/data/models/modelos_model.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/modelos_predefinido_repository.dart';

class ModeloRepositoryImpl implements ModelosPredefinidoRepository {
  final ModeloRemoteDataSources remoteDataSources;

  ModeloRepositoryImpl({required this.remoteDataSources});

  @override
  Future<List<ModelosPredefinido>> listmodelospredefinido() async {
    final data = await remoteDataSources.listModelosPredefinido();
    return data
        .map<ModelosPredefinido>(
            (json) => ModeloPredefinidoModel.fromJson(json))
        .toList();
  }

  @override
  Future<ModelosPredefinido> getmodelopredefinido(
      int modelopredefinidoid) async {
    final json =
        await remoteDataSources.getmodelopredefinido(modelopredefinidoid);
    return ModeloPredefinidoModel.fromJson(json);
  }
}
