import 'package:bloc/bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/list_modelo_predefinido_usecase.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_event.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_state.dart';

class ModeloBloc extends Bloc<ModeloEvent, ModeloState> {
  final ListModeloPredefinidoUsecase modeloPredefinidoUsecase;

  ModeloBloc(this.modeloPredefinidoUsecase) : super(ModeloLoading()) {
    on<ModeloEvent>((event, emit) async {
      emit(ModeloLoading());
      try {
        final modelos = await modeloPredefinidoUsecase();
        emit(ModeloLoaded(modelos: modelos));
      } catch (e) {
        emit(ModeloError(message: e.toString()));
      }
    });
  }
}
