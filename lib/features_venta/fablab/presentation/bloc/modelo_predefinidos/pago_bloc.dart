import 'package:bloc/bloc.dart';

import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/post_pago.dart';

import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/pago_event.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/pago_state.dart';

class PagoBloc extends Bloc<PagoEvent, PagoState> {
  // Cambié 'PagoBloc' por 'PagoEvent'
  final PagoUsecase pagoUsecase;

  // Constructor modificado para aceptar ambos casos de uso
  PagoBloc(this.pagoUsecase) : super(PagoLoading()) {
    // Evento para crear un nuevo modelo
    on<CreatePagoModeloEvent>((event, emit) async {
      emit(PagoLoading());
      try {
        await pagoUsecase(event.pago);
        emit(PagoCreated());
      } catch (e) {
        emit(PagoError(message: e.toString()));
      }
    });
  }
}
