
import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/pago.dart';


abstract class PagoEvent {}

class LoadPagoEvent extends PagoEvent {}



class CreatePagoModeloEvent extends PagoEvent {
  final PagoEntity pago;

  CreatePagoModeloEvent({required this.pago});

  
}
