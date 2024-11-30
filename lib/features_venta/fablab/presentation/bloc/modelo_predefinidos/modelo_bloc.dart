import 'package:bloc/bloc.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/get_modelo_predefinido_usecase.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/list_modelo_predefinido_usecase.dart';
import 'package:fab_lab_upeu/features_venta/fablab/domain/use_cases/post_modelo_predefinido_usecase.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_event.dart';
import 'package:fab_lab_upeu/features_venta/fablab/presentation/bloc/modelo_predefinidos/modelo_state.dart';

class ModeloBloc extends Bloc<ModeloEvent, ModeloState> {
  final ListModeloPredefinidoUsecase modeloPredefinidoUsecase;
  final ModeloPredefinidoUsecase modeloByIdUsecase;
  final CreateModeloPredefinidoUsecase createModeloPredefinidoUsecase;

  // Constructor modificado para aceptar ambos casos de uso
  ModeloBloc(this.modeloPredefinidoUsecase, this.modeloByIdUsecase, this.createModeloPredefinidoUsecase)
      : super(ModeloLoading()) {
    // Evento para cargar todos los modelos
    on<LoadModeloEvent>((event, emit) async {
      emit(ModeloLoading());
      try {
        final modelos = await modeloPredefinidoUsecase();
        emit(ModeloLoaded(modelos: modelos));
      } catch (e) {
        emit(ModeloError(message: e.toString()));
      }
    });

    // Evento para cargar un modelo por ID
    on<GetModeloByIdEvent>((event, emit) async {
      emit(ModeloLoading());
      try {
        final modelo = await modeloByIdUsecase(event.modeloPredefinidoId);
        emit(ModeloByIdLoaded(modelo: modelo));
      } catch (e) {
        emit(ModeloByIdError(message: e.toString()));
      }
    });
    // Evento para crear un nuevo modelo
    on<CreateModeloEvent>((event, emit) async {
      emit(ModeloLoading());
      try {
        await createModeloPredefinidoUsecase(event.modelos);
        emit(ModeloCreated());
      } catch (e) {
        emit(ModeloError(message: e.toString()));
      }
    });
  }
}
