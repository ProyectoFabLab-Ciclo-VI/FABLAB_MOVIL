
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pago.dart';


abstract class PagoRepository {

  Future<void> createPago(PagoEntity pago);
}
