
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pago.dart';

import 'package:fab_lab_upeu/features_venta/fablab/domain/repositories/pago_repository.dart';

class PagoUsecase {
  final PagoRepository pagoRepository;

  PagoUsecase(this.pagoRepository);

  Future<void> call(PagoEntity pago) async {
    await pagoRepository.createPago(pago);
  }
}
