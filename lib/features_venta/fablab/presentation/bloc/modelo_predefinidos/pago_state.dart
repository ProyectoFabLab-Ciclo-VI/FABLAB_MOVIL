import 'package:fab_lab_upeu/features_venta/fablab/domain/entities/modelos_predefinido.dart';

abstract class PagoState {}

class PagoLoading extends PagoState {}


class PagoError extends PagoState {
  final String message;

  PagoError({required this.message});
}



class PagoByIdError extends PagoState {
  final String message;

  PagoByIdError({required this.message});
}

class PagoCreated extends PagoState {}

