
import 'package:fab_lab_upeu/features_venta/fablab/data/datasources/pago_remote_Data_sources.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pago.dart';

import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/post_modelos.dart';

import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pago_repository.dart';

class PagoRepositoryImpl implements PagoRepository {
  final PagoDataSources remoteDataSources;

   PagoRepositoryImpl({required this.remoteDataSources});


   @override
  Future<void> createPago(PagoEntity pago) async {
    await remoteDataSources.createPago( pago);
  }
}
